import json
from pathlib import Path


print("STARTING POLISHED / COBBLED GROUP GENERATOR...")


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
# POLISHED VARIANTS
#
# BASE BLOCK -> POLISHED BLOCK
# ============================================================

POLISHED = {
    "granite": "polished_granite",
    "diorite": "polished_diorite",
    "andesite": "polished_andesite",

    "cobbled_deepslate": "polished_deepslate",

    "blackstone": "polished_blackstone",
}


# ============================================================
# BLOCKS THAT USE THE COBBLED GROUPS
#
# These are NOT cobbled variants.
# The actual blocks are granite, diorite, andesite, etc.
# ============================================================

COBBLED_GROUP_BLOCKS = [
    "granite",
    "diorite",
    "andesite",
    "cobbled_deepslate",
    "blackstone",
]


# ============================================================
# RECIPE CREATOR
# ============================================================

created = 0
updated = 0


def recipe(pattern, key, result, count, group, category="building"):

    return {
        "type": "minecraft:crafting_shaped",
        "category": category,
        "group": group,
        "key": key,
        "pattern": pattern,
        "result": {
            "count": count,
            "id": f"minecraft:{result}"
        }
    }


def write(name, data):

    global created
    global updated

    path = OUTPUT_DIR / f"{name}.json"

    if path.exists():
        updated += 1
        print(f"Updated: {name}.json")
    else:
        created += 1
        print(f"Created: {name}.json")

    with path.open("w", encoding="utf-8") as f:
        json.dump(data, f, indent=2)
        f.write("\n")


# ============================================================
# COBBLED-GROUP BLOCKS
# ============================================================

print()
print("=" * 60)
print("COBBLED GROUP RECIPES")
print("=" * 60)


for block in COBBLED_GROUP_BLOCKS:

    # --------------------------------------------------------
    # BLOCK -> STAIRS
    # --------------------------------------------------------

    write(
        f"{block}_stairs",
        recipe(
            ["B ", "BB"],
            {
                "B": f"minecraft:{block}"
            },
            f"{block}_stairs",
            4,
            "cobbled_stairs"
        )
    )


    # --------------------------------------------------------
    # BLOCK -> SLABS
    # --------------------------------------------------------

    write(
        f"{block}_slab",
        recipe(
            ["BB"],
            {
                "B": f"minecraft:{block}"
            },
            f"{block}_slab",
            4,
            "cobbled_slabs"
        )
    )


    # --------------------------------------------------------
    # SLABS -> BLOCK
    # --------------------------------------------------------

    write(
        f"{block}_from_slabs",
        recipe(
            ["B", "B"],
            {
                "B": f"minecraft:{block}_slab"
            },
            block,
            1,
            "cobbled_block"
        )
    )


    # --------------------------------------------------------
    # STAIRS -> BLOCK
    # --------------------------------------------------------

    write(
        f"{block}_from_stairs",
        recipe(
            ["BB", "BB"],
            {
                "B": f"minecraft:{block}_stairs"
            },
            block,
            3,
            "cobbled_block"
        )
    )


# ============================================================
# POLISHED GROUP RECIPES
# ============================================================

print()
print("=" * 60)
print("POLISHED GROUP RECIPES")
print("=" * 60)


for base, polished in POLISHED.items():

    # --------------------------------------------------------
    # BASE -> POLISHED
    #
    # 2x2 base blocks -> 4 polished blocks
    # --------------------------------------------------------

    write(
        f"{polished}_from_{base}",
        recipe(
            ["BB", "BB"],
            {
                "B": f"minecraft:{base}"
            },
            polished,
            4,
            "polished_block"
        )
    )


    # --------------------------------------------------------
    # POLISHED BLOCK -> STAIRS
    # --------------------------------------------------------

    write(
        f"{polished}_stairs",
        recipe(
            ["B ", "BB"],
            {
                "B": f"minecraft:{polished}"
            },
            f"{polished}_stairs",
            4,
            "polished_stairs"
        )
    )


    # --------------------------------------------------------
    # POLISHED BLOCK -> SLABS
    # --------------------------------------------------------

    write(
        f"{polished}_slab",
        recipe(
            ["BB"],
            {
                "B": f"minecraft:{polished}"
            },
            f"{polished}_slab",
            4,
            "polished_slabs"
        )
    )


    # --------------------------------------------------------
    # STAIRS -> POLISHED BLOCK
    # --------------------------------------------------------

    write(
        f"{polished}_from_stairs",
        recipe(
            ["BB", "BB"],
            {
                "B": f"minecraft:{polished}_stairs"
            },
            polished,
            3,
            "polished_block"
        )
    )


    # --------------------------------------------------------
    # SLABS -> POLISHED BLOCK
    # --------------------------------------------------------

    write(
        f"{polished}_from_slabs",
        recipe(
            ["B", "B"],
            {
                "B": f"minecraft:{polished}_slab"
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
print("=" * 60)
print("GENERATION COMPLETE")
print("=" * 60)
print(f"Recipes created: {created}")
print(f"Recipes updated: {updated}")
print()
print("Saved to:")
print(OUTPUT_DIR)
print("=" * 60)