--Table
minetest.register_node("myfurniture:Dinning_table", {
	description = "Dinning Table",
	tiles = {"default_pine_wood.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.375, -0.5, 0.5, 0.5, 0.5},
			{-0.5, -0.5, 0.375, -0.375, 0.375, 0.5},
			{0.375, -0.5, -0.5, 0.5, 0.5, -0.375},
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			}
		},
})
--Chair
minetest.register_node("myfurniture:chair", {
	description = "Chair",
	tiles = {"default_pine_wood.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.125, -0.375, 0.375, 0, 0.375},
			{-0.375, -0.5, 0.25, -0.25, 0.5, 0.375},
			{0.25, -0.5, -0.375, 0.375, -0.125, -0.25},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, -0.125, -0.25},
			{-0.375, 0.375, 0.25, 0.375, 0.5, 0.375},
			}
		},
})
--Arm Chair
minetest.register_node("myfurniture:armchair", {
	description = "Arm Chair",
	tiles = {"default_pine_wood.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.25, 0.5},
			{0.375, -0.5, -0.5, 0.5, 0.25, 0.5},
			{-0.5, 0, 0.375, 0.5, 0.5, 0.5},
			}
		},
})
--Bookshelf
minetest.register_node("myfurniture:bookshelf", {
	description = "Bookshelf",
	tiles = {"default_pine_wood.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0, -0.4375, 0.5, 0.5},
			{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5},
			{0.4375, -0.5, 0, 0.5, 0.5, 0.5},
			{-0.5, 0.4375, 0, 0.5, 0.5, 0.5},
			{-0.5, 0, 0, 0.5, 0.0625, 0.5},
			{-0.5, -0.4375, 0, 0.5, -0.375, 0.5},
			}
		},
})
--Bookshelf Top
minetest.register_node("myfurniture:bookshelf_top", {
	description = "Bookshelf Top",
	tiles = {"default_pine_wood.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0, -0.4375, 0.5, 0.5},
			{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5},
			{0.4375, -0.5, 0, 0.5, 0.5, 0.5},
			{-0.5, 0.4375, 0, 0.5, 0.5, 0.5},
			{-0.5, 0, 0, 0.5, 0.0625, 0.5},
			}
		},
})
--Cabinet
minetest.register_node("myfurniture:cabinet", {
	description = "Cabinet",
	tiles = {"default_pine_wood.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, -0.4375, 0.5, 0.5},
			{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5},
			{0.4375, -0.5, -0.5, 0.5, 0.5, 0.5},
			{-0.5, -0.375, -0.5, 0.5, -0.3125, 0.5},
			{-0.5, 0.4375, -0.5, 0.5, 0.5, 0.5},
			{-0.5, 0, -0.5, 0.5, 0.0625, 0.5},
			}
		},
})
--Desk
minetest.register_node("myfurniture:desk", {
	description = "Desk",
	tiles = {"default_pine_wood.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, -0.4375, 0.5, 0.5},
			{-0.5, 0.25, 0.4375, 0.5, 0.5, 0.5},
			{0.4375, -0.5, -0.5, 0.5, 0.5, 0.5},
			{-0.5, 0.4375, -0.5, 0.5, 0.5, 0.5},
			{-0.5, 0.25, -0.5, 0.5, 0.3125, 0.5},
			}
		},
})
--End Table
minetest.register_node("myfurniture:end_table", {
	description = "End Table",
	tiles = {"default_pine_wood.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.125, -0.5, 0.5, 0, 0.5},
			{-0.5, -0.5, 0.375, -0.375, -0.125, 0.5},
			{0.375, -0.5, -0.5, 0.5, -0.125, -0.375},
			{0.375, -0.5, 0.375, 0.5, -0.125, 0.5},
			{-0.5, -0.5, -0.5, -0.375, -0.125, -0.375},
			}
		},
})
--Sofa Right
minetest.register_node("myfurniture:sofa_right", {
	description = "Sofa - Right",
	tiles = {"wool_dark_grey.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{-0.5, 0, 0.375, 0.5, 0.5, 0.5},
			{0.375, -0.5, -0.5, 0.5, 0.25, 0.5},
			}
		},
})
--Sofa Left
minetest.register_node("myfurniture:sofa_left", {
	description = "Sofa - Left",
	tiles = {"wool_dark_grey.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.25, 0.5},
			{-0.5, 0, 0.375, 0.5, 0.5, 0.5},
			}
		},
})
--Sofa Middle
minetest.register_node("myfurniture:sofa_middle", {
	description = "Sofa - Middle",
	tiles = {"wool_dark_grey.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{-0.5, 0, 0.375, 0.5, 0.5, 0.5},
			}
		},
})
--Stool
minetest.register_node("myfurniture:stool", {
	description = "Stool",
	tiles = {"default_pine_wood.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, 0.375, -0.375, 0.375, 0.5, 0.375},
			{-0.375, -0.5, 0.25, -0.25, 0.375, 0.375},
			{0.25, -0.5, -0.375, 0.375, 0.375, -0.25},
			{0.25, -0.5, 0.25, 0.375, 0.375, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.375, -0.25},
			}
		},
})
--TV Stand
minetest.register_node("myfurniture:tv_stand", {
	description = "TV Stand",
	tiles = {"default_pine_wood.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0, -0.4375, 0, 0.5},
			{0.4375, -0.5, 0, 0.5, 0.0625, 0.5},
			{-0.5, -0.375, 0, 0.5, -0.3125, 0.5},
			{-0.5, 0, 0, 0.5, 0.0625, 0.5},
			}
		},
})
--Dishwasher
minetest.register_node("myfurniture:dishwasher", {
	description = "Dishwasher",
	tiles = {
			"myfurniture_dishwasher_top.png",
			"myfurniture_dishwasher_sides.png",
			"myfurniture_dishwasher_sides.png",
			"myfurniture_dishwasher_sides.png",
			"myfurniture_dishwasher_sides.png",
			"myfurniture_dishwasher_front.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
