
dofile(minetest.get_modpath("myfurniture").."/machine.lua")

--Table
minetest.register_node("myfurniture:dinning_table", {
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
--Stove
minetest.register_node("myfurniture:stove", {
	description = "Stove",
	tiles = {
			"myfurniture_stove_top.png",
			"myfurniture_dishwasher_sides.png",
			"myfurniture_dishwasher_sides.png",
			"myfurniture_dishwasher_sides.png",
			"myfurniture_dishwasher_sides.png",
			"myfurniture_stove_front.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.3125, 0.5},
			{-0.5, 0.3125, 0.3125, 0.5, 0.5, 0.5},
		}
	}
})
--Fridge
minetest.register_node("myfurniture:fridge_bottom", {
	description = "Fridge",
	tiles = {
			"myfurniture_dishwasher_sides.png",
			"myfurniture_dishwasher_sides.png",
			"myfurniture_dishwasher_sides.png",
			"myfurniture_dishwasher_sides.png",
			"myfurniture_dishwasher_sides.png",
			"myfurniture_fridge_front.png",
			},
	drawtype = "normal",
	inventory_image = "myfurniture_fridge_inv.png",
	wield_image = "myfurniture_fridge_inv.png",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
on_place = function(itemstack, placer, pointed_thing)
        local pos = pointed_thing.above
        if minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z}).name ~= "air" then
            minetest.chat_send_player( placer:get_player_name(), "Not enough space to place this!" )
            return
        end
        return minetest.item_place(itemstack, placer, pointed_thing)
    end,

after_destruct = function(pos, oldnode)
		minetest.remove_node({x = pos.x, y = pos.y + 1, z = pos.z})
	end,

after_place_node = function(pos, placer)
	minetest.set_node({x = pos.x, y = pos.y + 1, z = pos.z},{name = "myfurniture:fridge_top", 		param2=minetest.dir_to_facedir(placer:get_look_dir())});

	end,
after_destruct = function(pos, oldnode)
		minetest.set_node({x = pos.x, y = pos.y + 1, z = pos.z},{name = "air"})
	end,
})
--Fridge Top
minetest.register_node("myfurniture:fridge_top", {
--	description = "Fridge",
	tiles = {
			"myfurniture_dishwasher_sides.png",
			"myfurniture_dishwasher_sides.png",
			"myfurniture_dishwasher_sides.png",
			"myfurniture_dishwasher_sides.png",
			"myfurniture_dishwasher_sides.png",
			"myfurniture_fridge_front.png^[transformFY",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
after_destruct = function(pos, oldnode)
		minetest.remove_node({x = pos.x, y = pos.y - 1, z = pos.z})
	end,
})
--Kitchen Cabinet
minetest.register_node("myfurniture:kitchen_cabinet", {
	description = "Kitchen Cabinet",
	tiles = {
			"myfurniture_kitchen_cabinet_top.png",
			"default_pine_wood.png",
			"default_pine_wood.png",
			"default_pine_wood.png",
			"default_pine_wood.png",
			"default_pine_wood.png^[transformR90^myfurniture_kitchen_cabinet_tint.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.3125, -0.5, -0.0625, 0.375, -0.4375},
			{0.0625, -0.3125, -0.5, 0.4375, 0.375, -0.4375},
			{-0.5, -0.5, -0.4375, 0.5, 0.5, 0.5},
		}
	}
})
--Kitchen Upper Cabinet
minetest.register_node("myfurniture:kitchen_upper_cabinet", {
	description = "Kitchen Upper Cabinet",
	tiles = {
			"default_pine_wood.png",
			"default_pine_wood.png",
			"default_pine_wood.png",
			"default_pine_wood.png",
			"default_pine_wood.png",
			"default_pine_wood.png^[transformR90^myfurniture_kitchen_cabinet_tint.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.3125, 0, -0.0625, 0.375, 0.0625},
			{0.0625, -0.3125, 0, 0.4375, 0.375, 0.0625},
			{-0.5, -0.5, 0.0625, 0.5, 0.5, 0.5},
		}
	}
})
--Kitchen Corner Cabinet
minetest.register_node("myfurniture:kitchen_corner_cabinet", {
	description = "Kitchen Upper Corner Cabinet",
	tiles = {
			"myfurniture_dishwasher_top.png",
			"default_pine_wood.png",
			"default_pine_wood.png",
			"default_pine_wood.png",
			"default_pine_wood.png",
			"default_pine_wood.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
--Kitchen Upper Corner Cabinet
minetest.register_node("myfurniture:kitchen_upper_corner_cabinet", {
	description = "Kitchen Upper Corner Cabinet",
	tiles = {
			"default_pine_wood.png",
			"default_pine_wood.png",
			"default_pine_wood.png^[transformR90^myfurniture_kitchen_cabinet_tint.png",
			"default_pine_wood.png",
			"default_pine_wood.png",
			"default_pine_wood.png^[transformR90^myfurniture_kitchen_cabinet_tint.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.3125, -0.4375, 0, 0.375, -0.0625},
			{0.0625, -0.3125, 0, 0.4375, 0.375, 0.0625},
			{-0.5, -0.5, 0.0625, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.0625, 0.5, 0.5},
		}
	}
})
