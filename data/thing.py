import json
from pathlib import Path


# ============================================================
# OUTPUT
# ============================================================

OUTPUT_DIR = Path(
    "/Users/levlko/Library/Application Support/minecraft/"
    "saves/datapack_test 3/datapacks/bittersweet_pack/"
    "data/bittersweet_supplement/recipe/block_variants"
)

OUTPUT_DIR.mkdir(parents=True, exist_ok=True)


# ============================================================
# POLISHED BLOCKS
# ============================================================

POLISHED = {
    "granite": "polished_granite",
    "diorite": "polished_diorite",
    "andesite": "polished_andesite",

    "blackstone": "polished_blackstone",
    "deepslate": "polished_deepslate",

    "sulfur": "polished_sulfur",
    "cinnabar": "polished_cinnabar",
}


# ============================================================
# RECIPE CREATOR
# ============================================================

def make_recipe(pattern, key, result, count, group):
    return {
        "type": "minecraft:crafting_shaped",
        "category": "building",
        "group": group,
        "key": key,
        "pattern": pattern,
        "result": {
            "count": count,
            "id": f"minecraft:{result}"
        }
    }


# ============================================================
# WRITE OR UPDATE
# ============================================================

created = 0
updated = 0


def write_or_update(filename, recipe):

    global created, updated

    path = OUTPUT_DIR / filename

    # --------------------------------------------------------
    # CREATE IF MISSING
    # --------------------------------------------------------

    if not path.exists():

        with path.open("w", encoding="utf-8") as f:
            json.dump(recipe, f, indent=2)
            f.write("\n")

        created += 1
        print(f"Created: {filename}")

        return

    # --------------------------------------------------------
    # EXISTING RECIPE
    #
    # Preserve everything except the group.
    # --------------------------------------------------------

    with path.open("r", encoding="utf-8") as f:
        existing = json.load(f)

    old_group = existing.get("group")
    new_group = recipe["group"]

    if old_group != new_group:

        existing["group"] = new_group

        with path.open("w", encoding="utf-8") as f:
            json.dump(existing, f, indent=2)
            f.write("\n")

        updated += 1

        print(
            f"Updated group: {filename} "
            f"({old_group!r} -> {new_group!r})"
        )

    else:
        print(f"Already correct: {filename}")


# ============================================================
# GENERATE
# ============================================================

for base, polished in POLISHED.items():

    polished_stairs = f"{polished}_stairs"
    polished_slab = f"{polished}_slab"


    # ========================================================
    # 2x2 BASE BLOCKS -> POLISHED BLOCKS
    #
    # 4 base blocks -> 4 polished blocks
    #
    # Example:
    #
    # GG
    # GG
    #
    # granite -> polished_granite
    #
    # Group:
    # polished_block
    # ========================================================

    write_or_update(
        f"{base}_to_polished.json",
        make_recipe(
            ["BB", "BB"],
            {
                "B": f"minecraft:{base}"
            },
            polished,
            4,
            "polished_block"
        )
    )


    # ========================================================
    # POLISHED -> STAIRS
    #
    # 3 polished -> 4 stairs
    # ========================================================

    write_or_update(
        f"{polished}_stairs.json",
        make_recipe(
            ["B ", "BB"],
            {
                "B": f"minecraft:{polished}"
            },
            polished_stairs,
            4,
            "polished_stairs"
        )
    )


    # ========================================================
    # POLISHED -> SLABS
    #
    # 2 polished -> 4 slabs
    # ========================================================

    write_or_update(
        f"{polished}_slab.json",
        make_recipe(
            ["BB"],
            {
                "B": f"minecraft:{polished}"
            },
            polished_slab,
            4,
            "polished_slabs"
        )
    )


    # ========================================================
    # STAIRS -> POLISHED
    #
    # 4 stairs -> 3 polished
    #
    # Group:
    # polished_block
    # ========================================================

    write_or_update(
        f"{polished}_from_stairs.json",
        make_recipe(
            ["BB", "BB"],
            {
                "B": f"minecraft:{polished_stairs}"
            },
            polished,
            3,
            "polished_block"
        )
    )


    # ========================================================
    # SLABS -> POLISHED
    #
    # 2 slabs -> 1 polished
    #
    # Group:
    # polished_block
    # ========================================================

    write_or_update(
        f"{polished}_from_slabs.json",
        make_recipe(
            ["B", "B"],
            {
                "B": f"minecraft:{polished_slab}"
            },
            polished,
            1,
            "polished_block"
        )
    )


# ============================================================
# DONE
# ============================================================

print()
print("=" * 70)
print("POLISHED BLOCK GENERATION COMPLETE")
print("=" * 70)
print(f"Recipes created: {created}")
print(f"Existing recipes updated: {updated}")
print()
print("Groups used:")
print("  polished_block")
print("  polished_stairs")
print("  polished_slabs")
print()
print("No item tags are used.")
print()
print("Saved to:")
print(OUTPUT_DIR)
print("=" * 70)