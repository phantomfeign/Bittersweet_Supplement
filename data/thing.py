import json
from pathlib import Path


# ============================================================
# OUTPUT
# ============================================================

OUTPUT_DIR = Path(
    "/Users/levlko/Library/Application Support/minecraft/"
    "saves/datapack_test 3/datapacks/bittersweet_pack/"
    "data/bittersweet_supplement/recipe/stonecutter"
)


# ============================================================
# WOODS — PLANKS ONLY
# ============================================================

WOODS = {
    "oak": "oak_planks",
    "spruce": "spruce_planks",
    "birch": "birch_planks",
    "jungle": "jungle_planks",
    "acacia": "acacia_planks",
    "dark_oak": "dark_oak_planks",
    "mangrove": "mangrove_planks",
    "cherry": "cherry_planks",
    "bamboo": "bamboo_planks",
    "crimson": "crimson_planks",
    "warped": "warped_planks",
}


# ============================================================
# NON-WOOD BLOCKS
# ============================================================

BLOCKS = {
    "stone": "stone",
    "cobblestone": "cobblestone",
    "mossy_cobblestone": "mossy_cobblestone",

    "stone_bricks": "stone_bricks",
    "mossy_stone_bricks": "mossy_stone_bricks",

    "granite": "granite",
    "polished_granite": "polished_granite",

    "diorite": "diorite",
    "polished_diorite": "polished_diorite",

    "andesite": "andesite",
    "polished_andesite": "polished_andesite",

    "cobbled_deepslate": "cobbled_deepslate",
    "polished_deepslate": "polished_deepslate",

    "deepslate_bricks": "deepslate_bricks",
    "deepslate_tiles": "deepslate_tiles",

    "nether_bricks": "nether_bricks",
    "red_nether_bricks": "red_nether_bricks",

    "blackstone": "blackstone",
    "polished_blackstone": "polished_blackstone",
    "polished_blackstone_bricks": "polished_blackstone_bricks",

    "purpur": "purpur_block",

    "quartz": "quartz_block",
    "smooth_quartz": "smooth_quartz",

    "prismarine": "prismarine",
    "prismarine_bricks": "prismarine_bricks",
    "dark_prismarine": "dark_prismarine",
}


# ============================================================
# BRICK-STYLE VARIANT NAMES
# ============================================================

FORM_NAMES = {
    "stone_bricks": "stone_brick",
    "mossy_stone_bricks": "mossy_stone_brick",

    "deepslate_bricks": "deepslate_brick",
    "deepslate_tiles": "deepslate_tile",

    "nether_bricks": "nether_brick",
    "red_nether_bricks": "red_nether_brick",

    "polished_blackstone_bricks": "polished_blackstone_brick",

    "prismarine_bricks": "prismarine_brick",
}


# ============================================================
# RECIPE HELPER
# ============================================================

created = 0


def make_recipe(ingredient, result, count):
    return {
        "type": "minecraft:stonecutting",
        "ingredient": f"minecraft:{ingredient}",
        "result": {
            "id": f"minecraft:{result}",
            "count": count
        }
    }


def write_recipe(name, ingredient, result, count):

    global created

    path = OUTPUT_DIR / f"{name}.json"
    path.parent.mkdir(parents=True, exist_ok=True)

    recipe = make_recipe(
        ingredient,
        result,
        count
    )

    with path.open("w", encoding="utf-8") as f:
        json.dump(recipe, f, indent=2)
        f.write("\n")

    created += 1
    print(f"Created: {path}")


# ============================================================
# WOOD
# ============================================================

for wood, plank in WOODS.items():

    # 1 plank -> 4 stairs
    write_recipe(
        f"{wood}_stairs_from_planks_stonecutting",
        plank,
        f"{wood}_stairs",
        4
    )

    # 1 plank -> 4 slabs
    write_recipe(
        f"{wood}_slab_from_planks_stonecutting",
        plank,
        f"{wood}_slab",
        4
    )

    # Crimson/warped don't have pressure plates
    if wood not in ("crimson", "warped"):

        # 1 plank -> 2 pressure plates
        write_recipe(
            f"{wood}_pressure_plate_from_planks_stonecutting",
            plank,
            f"{wood}_pressure_plate",
            2
        )

    # 1 plank -> 3 trapdoors
    write_recipe(
        f"{wood}_trapdoor_from_planks_stonecutting",
        plank,
        f"{wood}_trapdoor",
        3
    )

    # 1 plank -> 3 doors
    write_recipe(
        f"{wood}_door_from_planks_stonecutting",
        plank,
        f"{wood}_door",
        3
    )

    # 1 plank -> 3 fences
    write_recipe(
        f"{wood}_fence_from_planks_stonecutting",
        plank,
        f"{wood}_fence",
        3
    )

    # 1 plank -> 2 fence gates
    write_recipe(
        f"{wood}_fence_gate_from_planks_stonecutting",
        plank,
        f"{wood}_fence_gate",
        2
    )


# ============================================================
# NON-WOOD BLOCKS
# ============================================================

for name, block in BLOCKS.items():

    form = FORM_NAMES.get(name, name)

    # 1 block -> 4 stairs
    write_recipe(
        f"{form}_stairs_from_{name}_stonecutting",
        block,
        f"{form}_stairs",
        4
    )

    # 1 block -> 4 slabs
    write_recipe(
        f"{form}_slab_from_{name}_stonecutting",
        block,
        f"{form}_slab",
        4
    )


# ============================================================
# DONE
# ============================================================

print()
print("=" * 70)
print("STONECUTTING RECIPE GENERATION COMPLETE")
print("=" * 70)
print(f"Total recipes created: {created}")
print()
print("Saved to:")
print(OUTPUT_DIR)
print("=" * 70)