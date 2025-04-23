
dofile(core.get_modpath("myfurniture").."/machine.lua")
if core.get_modpath("my_door_wood") then
	dofile(core.get_modpath("myfurniture").."/my_door_wood.lua")
end
if core.get_modpath("moretrees") then
	dofile(core.get_modpath("myfurniture").."/moretrees.lua")
end
if core.get_modpath("ethereal") then
	dofile(core.get_modpath("myfurniture").."/ethereal.lua")
end

local wood_mat = {
				{"default:wood","default_wood","wood","Apple Wood"},
				{"default:acacia_wood","default_acacia_wood","acacia_wood","Acacia Wood"},
				{"default:aspen_wood","default_aspen_wood","aspen_wood","Aspen Wood"},
				{"default:pine_wood","default_pine_wood","pine_wood","Pine Wood"},
				{"default:junglewood","default_junglewood","junglewood","Jungle Wood"},
				}

for i in ipairs(wood_mat) do
	local wmat = wood_mat[i][1]
	local wimg = wood_mat[i][2]
	local wtype = wood_mat[i][3]
	local wdesc = wood_mat[i][4]

function minetest.get_myfurniture_formspec(pos)
    local spos = pos.x .. "," .. pos.y .. "," ..pos.z
    local formspec =
        "size[9,7]"..
        "list[nodemeta:".. spos .. ";main;0.5,0.5;8,2;]"..
        "list[current_player;main;0.5,3;8,4;]"
    return formspec
end
function minetest.get_myfurniture_formspec2(pos)
    local spos = pos.x .. "," .. pos.y .. "," ..pos.z
    local formspec =
        "size[9,7]"..
        "list[nodemeta:".. spos .. ";main;0.5,0.5;8,1;]"..
        "list[current_player;main;0.5,3;8,4;]"
    return formspec
end
function minetest.get_myfurniture_formspec3(pos)
    local spos = pos.x .. "," .. pos.y .. "," ..pos.z
    local formspec =
        "size[9,7]"..
        "list[nodemeta:".. spos .. ";main;0.5,0.5;8,1;]"..
        "list[current_player;main;0.5,3;8,4;]"
    return formspec
end

--Table
minetest.register_node("myfurniture:"..wtype.."_dinning_table", {
	description = wdesc.." Dinning Table",
	tiles = {wimg..".png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
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
minetest.register_node("myfurniture:"..wtype.."_chair", {
	description = wdesc.." Chair",
	tiles = {wimg..".png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
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
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
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
minetest.register_node("myfurniture:"..wtype.."_bookshelf", {
	description = wdesc.." Bookshelf",
	tiles = {wimg..".png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
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
minetest.register_node("myfurniture:"..wtype.."_bookshelf_top", {
	description = wdesc.." Bookshelf Top",
	tiles = {wimg..".png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
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
minetest.register_node("myfurniture:"..wtype.."_cabinet", {
	description = wdesc.." Cabinet",
	tiles = {wimg..".png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
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
minetest.register_node("myfurniture:"..wtype.."_desk", {
	description = wdesc.." Desk",
	tiles = {wimg..".png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
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
minetest.register_node("myfurniture:"..wtype.."_end_table", {
	description = wdesc.." End Table",
	tiles = {wimg..".png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
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
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
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
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
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
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{-0.5, 0, 0.375, 0.5, 0.5, 0.5},
			}
		},
})
--Stool
minetest.register_node("myfurniture:"..wtype.."_stool", {
	description = wdesc.." Stool",
	tiles = {wimg..".png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
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
minetest.register_node("myfurniture:"..wtype.."_tv_stand", {
	description = wdesc.." TV Stand",
	tiles = {wimg..".png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
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

--Kitchen Cabinet
minetest.register_node("myfurniture:"..wtype.."_kitchen_cabinet", {
	description = wdesc.." Kitchen Cabinet",
	tiles = {
			"myfurniture_kitchen_cabinet_top_"..wimg..".png",
			wimg..".png",
			wimg..".png",
			wimg..".png",
			wimg..".png",
			wimg..".png^[transformR90^myfurniture_kitchen_cabinet_tint.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.3125, -0.5, -0.0625, 0.375, -0.4375},
			{0.0625, -0.3125, -0.5, 0.4375, 0.375, -0.4375},
			{-0.5, -0.5, -0.4375, 0.5, 0.5, 0.5},
		}
	},
	on_construct = function(pos)
        local meta = minetest.get_meta(pos)
        meta:set_string("infotext", "Kitchen Cabinet")
        meta:set_string("owner", "")
        local inv = meta:get_inventory()
        inv:set_size("main", 9*7)
    end,

    can_dig = function(pos,player)

	local meta = minetest.env:get_meta({x=pos.x,y=pos.y+1,z=pos.z});
	local inv = meta:get_inventory()
	if not inv:is_empty("ingot") then
		return false
	elseif not inv:is_empty("res") then
		return false
	end
	


        local meta = minetest.get_meta(pos);
        local inv = meta:get_inventory()

        return inv:is_empty("main")
	


    end,
    allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
        local meta = minetest.get_meta(pos)

        return count
    end,
    allow_metadata_inventory_put = function(pos, listname, index, stack, player)
        local meta = minetest.get_meta(pos)
        return stack:get_count()
    end,
    allow_metadata_inventory_take = function(pos, listname, index, stack, player)
        local meta = minetest.get_meta(pos)
        return stack:get_count()
    end,

    on_rightclick = function(pos, node, clicker)
        local meta = minetest.get_meta(pos)
            minetest.show_formspec(
                clicker:get_player_name(),
                "myfurniture:"..wtype.."_kitchen_cabinet",
                minetest.get_myfurniture_formspec(pos)
            )
    end,
})
--Kitchen Upper Cabinet
minetest.register_node("myfurniture:"..wtype.."_kitchen_upper_cabinet", {
	description = wdesc.." Kitchen Upper Cabinet",
	tiles = {
			wimg..".png",
			wimg..".png",
			wimg..".png",
			wimg..".png",
			wimg..".png",
			wimg..".png^[transformR90^myfurniture_kitchen_cabinet_tint.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.3125, 0, -0.0625, 0.375, 0.0625},
			{0.0625, -0.3125, 0, 0.4375, 0.375, 0.0625},
			{-0.5, -0.5, 0.0625, 0.5, 0.5, 0.5},
		}
	},
		on_construct = function(pos)
        local meta = minetest.get_meta(pos)
        meta:set_string("infotext", "Kitchen Cabinet")
        meta:set_string("owner", "")
        local inv = meta:get_inventory()
        inv:set_size("main", 9*7)
    end,

    can_dig = function(pos,player)

	local meta = minetest.env:get_meta({x=pos.x,y=pos.y+1,z=pos.z});
	local inv = meta:get_inventory()
	if not inv:is_empty("ingot") then
		return false
	elseif not inv:is_empty("res") then
		return false
	end
	


        local meta = minetest.get_meta(pos);
        local inv = meta:get_inventory()

        return inv:is_empty("main")
	


    end,
    allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
        local meta = minetest.get_meta(pos)

        return count
    end,
    allow_metadata_inventory_put = function(pos, listname, index, stack, player)
        local meta = minetest.get_meta(pos)
        return stack:get_count()
    end,
    allow_metadata_inventory_take = function(pos, listname, index, stack, player)
        local meta = minetest.get_meta(pos)
        return stack:get_count()
    end,

    on_rightclick = function(pos, node, clicker)
        local meta = minetest.get_meta(pos)
            minetest.show_formspec(
                clicker:get_player_name(),
                "myfurniture:"..wtype.."_kitchen_cabinet",
                minetest.get_myfurniture_formspec2(pos)
            )
    end,
})
--Kitchen Corner Cabinet
minetest.register_node("myfurniture:"..wtype.."_kitchen_corner_cabinet", {
	description = wdesc.." Kitchen Upper Corner Cabinet",
	tiles = {
			"myfurniture_dishwasher_top.png",
			wimg..".png",
			wimg..".png",
			wimg..".png",
			wimg..".png",
			wimg..".png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
})
--Kitchen Upper Corner Cabinet
minetest.register_node("myfurniture:"..wtype.."_kitchen_upper_corner_cabinet", {
	description = wdesc.." Kitchen Upper Corner Cabinet",
	tiles = {
			wimg..".png",
			wimg..".png",
			wimg..".png^[transformR90^myfurniture_kitchen_cabinet_tint.png",
			wimg..".png",
			wimg..".png",
			wimg..".png^[transformR90^myfurniture_kitchen_cabinet_tint.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.3125, -0.4375, 0, 0.375, -0.0625},
			{0.0625, -0.3125, 0, 0.4375, 0.375, 0.0625},
			{-0.5, -0.5, 0.0625, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.0625, 0.5, 0.5},
		}
	},
		on_construct = function(pos)
        local meta = minetest.get_meta(pos)
        meta:set_string("infotext", "Kitchen Cabinet")
        meta:set_string("owner", "")
        local inv = meta:get_inventory()
        inv:set_size("main", 9*7)
    end,

    can_dig = function(pos,player)

	local meta = minetest.env:get_meta({x=pos.x,y=pos.y+1,z=pos.z});
	local inv = meta:get_inventory()
	if not inv:is_empty("ingot") then
		return false
	elseif not inv:is_empty("res") then
		return false
	end
	


        local meta = minetest.get_meta(pos);
        local inv = meta:get_inventory()

        return inv:is_empty("main")
	


    end,
    allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
        local meta = minetest.get_meta(pos)

        return count
    end,
    allow_metadata_inventory_put = function(pos, listname, index, stack, player)
        local meta = minetest.get_meta(pos)
        return stack:get_count()
    end,
    allow_metadata_inventory_take = function(pos, listname, index, stack, player)
        local meta = minetest.get_meta(pos)
        return stack:get_count()
    end,

    on_rightclick = function(pos, node, clicker)
        local meta = minetest.get_meta(pos)
            minetest.show_formspec(
                clicker:get_player_name(),
                "myfurniture:"..wtype.."_kitchen_cabinet",
                minetest.get_myfurniture_formspec3(pos)
            )
    end,

})

--Pictures
minetest.register_node("myfurniture:picture1", {
	description = "Picture",
	tiles = {
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_picture1.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5},
			{0.4375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, 0.375, -0.4375, 0.5, 0.5},
			{-0.5, -0.5, 0.375, 0.5, -0.4375, 0.5},
			{-0.5, 0.4375, 0.375, 0.5, 0.5, 0.5},
		}
	}
})
minetest.register_node("myfurniture:picture2", {
	description = "Picture",
	tiles = {
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_picture2.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.4375, 0.5, 0.125, 0.5},
			{0.4375, -0.5, 0.375, 0.5, 0.125, 0.5},
			{-0.5, -0.5, 0.375, -0.4375, 0.125, 0.5},
			{-0.5, -0.5, 0.375, 0.5, -0.4375, 0.5},
			{-0.5, 0.0625, 0.375, 0.5, 0.125, 0.5},
		}
	}
})
minetest.register_node("myfurniture:picture3", {
	description = "Picture",
	tiles = {
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_picture3.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, 0.4375, 0.5, 0.5, 0.5},
			{0.4375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.0625, -0.5, 0.375, 0, 0.5, 0.5},
			{-0.0625, -0.5, 0.375, 0.5, -0.4375, 0.5},
			{-0.0625, 0.4375, 0.375, 0.5, 0.5, 0.5},
		}
	}
})
minetest.register_node("myfurniture:picture4", {
	description = "Picture",
	tiles = {
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_pictures.png",
			"myfurniture_picture4.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, 0.4375, 0.25, 0.0625, 0.5},
			{0.1875, -0.5, 0.375, 0.25, 0, 0.5},
			{-0.25, -0.5, 0.375, -0.1875, 0.0625, 0.5},
			{-0.25, -0.5, 0.375, 0.25, -0.4375, 0.5},
			{-0.25, 0, 0.375, 0.25, 0.0625, 0.5},
		}
	}
})
--Chest Of Drawers
minetest.register_node("myfurniture:"..wtype.."_chest_of_drawers", {
	description = wdesc.." Chest of Drawers",
	tiles = {
			wimg..".png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, 0, -0.25, 0.125, 0.5},
			{-0.375, -0.375, -0.125, 0.375, -0.125, -0.0625},
			{-0.5, -0.5, -0.0625, 0.5, 0.5, 0.5},
			{-0.375, -0.0625, -0.125, 0.375, 0.1875, -0.0625},
			{-0.375, 0.25, -0.125, 0.375, 0.4375, -0.0625},
		}
	}
})
--Bench
minetest.register_node("myfurniture:"..wtype.."_bench", {
	description = wdesc.." Bench",
	tiles = {
			wimg..".png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, 0, -0.25, 0.125, 0.5},
			{0.25, -0.5, 0, 0.375, 0.125, 0.5},
			{-0.5, 0, 0, 0.5, 0.125, 0.5},
		}
	}
})
--Bench
minetest.register_node("myfurniture:"..wtype.."_shelf", {
	description = wdesc.." Shelf",
	tiles = {
			wimg..".png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.375, 0, 0.5, 0.5, 0.5},
			{0.25, 0.25, 0.125, 0.375, 0.375, 0.5},
			{0.25, 0.125, 0.25, 0.375, 0.375, 0.5},
			{0.25, 0, 0.375, 0.375, 0.25, 0.5},
			{-0.375, 0.25, 0.125, -0.25, 0.375, 0.5},
			{-0.375, 0.125, 0.25, -0.25, 0.375, 0.5},
			{-0.375, 0, 0.375, -0.25, 0.25, 0.5},
		}
	}
})
end
--Vase
minetest.register_node("myfurniture:vase", {
	description = "Vase",
	tiles = {
			"myfurniture_vase_top.png",
			"myfurniture_vase_bottom.png",
			"myfurniture_vase_side.png",
			"myfurniture_vase_side.png",
			"myfurniture_vase_side.png",
			"myfurniture_vase_side.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, 0, 0.125, 0.0625, 0.375},
			{-0.1875, -0.5, 0.0625, 0.1875, 0.0625, 0.3125},
			{-0.0625, -0.5, 0.1875, 0, 0.5, 0.25},
			{-0.125, 0.3125, 0.125, 0.0625, 0.5, 0.3125},
		}
	}
})
--Toilet
minetest.register_node("myfurniture:toilet", {
	description = "toilet",
	tiles = {
			"myfurniture_toilet.png",
			"myfurniture_toilet.png",
			"myfurniture_toilet.png",
			"myfurniture_toilet.png",
			"myfurniture_toilet.png",
			"myfurniture_toilet.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.5, -0.25, 0.0625, -0.1875, 0.3125},
			{-0.375, -0.1875, -0.375, 0.125, 0.125, 0.375},
			{-0.25, -0.1875, -0.5, 0, 0.125, 0.5},
			{-0.3125, -0.1875, -0.4375, 0.0625, 0.125, 0.4375},
			{-0.5, 0.125, 0.1875, 0.25, 0.5, 0.5},
			{-0.5, 0.375, 0.125, -0.3125, 0.4375, 0.1875},
		}
	}
})

--Bathroom Sink
minetest.register_node("myfurniture:bathroom_sink", {
	description = "toilet",
	tiles = {
			"myfurniture_brsink_top.png",
			"myfurniture_toilet.png",
			"myfurniture_brsink_side.png",
			"myfurniture_brsink_side.png",
			"myfurniture_toilet.png",
			"myfurniture_brsink_front.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.1875, 0.5, 0.375, 0.5},
			{-0.5, 0.375, 0.375, 0.5, 0.5, 0.5},
			{0.0625, -0.3125, -0.25, 0.4375, 0.25, -0.1875},
			{-0.4375, -0.3125, -0.25, -0.0625, 0.25, -0.1875},
			{-0.1875, 0.375, 0.1875, 0.1875, 0.4375, 0.3125},
			{0.0625, 0.375, 0.1875, 0.1875, 0.5, 0.3125},
			{-0.1875, 0.375, 0.1875, -0.0625, 0.5, 0.3125},
			{-0.0625, 0.4375, 0.0625, 0.0625, 0.5, 0.3125},
		}
	},	

})

-- Tub
minetest.register_node("myfurniture:tub", {
	description = "tub",
	tiles = {
			"myfurniture_toilet.png",
			"myfurniture_toilet.png",
			"myfurniture_toilet.png",
			"myfurniture_toilet.png",
			"myfurniture_toilet.png",
			"myfurniture_toilet.png",
			},
	inventory_image = "myfurniture_tub_inv.png",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.3125, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, 0.5, 0.5, -0.3125},
			{-0.5, -0.5, -0.5, -0.3125, 0.5, 0.5},
			{-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 1.5, 0.5, 0.5},
		}
	},
	
	after_place_node = function(pos, placer)
		local dir = placer:get_look_dir()
		local right_pos = vector.new(pos)
		if math.abs(dir.x) < math.abs(dir.z) then
			right_pos.x = right_pos.x+dir.z/math.abs(dir.z)
		else
			right_pos.z = right_pos.z-dir.x/math.abs(dir.x)
		end
		local right_node = minetest.get_node(right_pos)
		if right_node.name == "air" then
    		minetest.set_node(right_pos, {name="myfurniture:tub2",param2 = minetest.dir_to_facedir(placer:get_look_dir())})
    	else
    		minetest.chat_send_player(place,"Not enough room")
    		return
		end
	end,
	after_destruct = function(pos)
		if minetest.get_node({x=pos.x + 1, y=pos.y, z=pos.z}).name == "myfurniture:tub2" then
			minetest.set_node({x=pos.x + 1, y=pos.y, z=pos.z}, {name="air"})
		end
		if minetest.get_node({x=pos.x - 1, y=pos.y, z=pos.z}).name == "myfurniture:tub2" then
			minetest.set_node({x=pos.x - 1, y=pos.y, z=pos.z}, {name="air"})
		end
		if minetest.get_node({x=pos.x, y=pos.y, z=pos.z + 1}).name == "myfurniture:tub2" then
			minetest.set_node({x=pos.x, y=pos.y, z=pos.z + 1}, {name="air"})
		end
		if minetest.get_node({x=pos.x, y=pos.y, z=pos.z - 1}).name == "myfurniture:tub2" then
			 minetest.set_node({x=pos.x, y=pos.y, z=pos.z - 1}, {name="air"})
		end
	end,
	
})

-- Tub
minetest.register_node("myfurniture:tub2", {
--	description = "tub2",
	tiles = {
			"myfurniture_toilet.png",
			"myfurniture_toilet.png",
			"myfurniture_toilet.png",
			"myfurniture_toilet.png^[transformFx",
			"myfurniture_toilet.png",
			"myfurniture_toilet.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.3125, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, 0.5, 0.5, -0.3125},
			{-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5},
			{0.3125, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{0, 0, 0, 0, 0, 0},
		}
	},
})
