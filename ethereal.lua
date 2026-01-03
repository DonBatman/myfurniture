
local wood_mat = {
				{"ethereal:bamboo_block","ethereal_bamboo_floor","bamboo_block","Bamboo Block"},
				{"ethereal:banana_wood","ethereal_banana_wood","banana_wood","Banana Wood"},
				{"ethereal:birch_wood","moretrees_birch_wood","birch_wood","Birch Wood"},
				{"ethereal:frost_wood","ethereal_frost_wood","frost_wood","Frost Wood"},
				{"ethereal:mushroom_trunk","ethereal_mushroom_trunk","mushroom_trunk","Mushroom Trunk"},
				{"ethereal:olive_wood","ethereal_olive_wood","olive_wood","Olive Wood"},
				{"ethereal:palm_wood","moretrees_palm_wood","palm_wood","Palm Wood"},
				{"ethereal:redwood_wood","ethereal_redwood_wood","redwood_wood","Redwood Wood"},
				{"ethereal:sakura_wood","ethereal_sakura_wood","sakura_wood","Sakura Wood"},
				{"ethereal:willow_wood","ethereal_willow_wood","willow_wood","Willow Wood"},
				{"ethereal:yellow_wood","ethereal_yellow_wood","yellow_wood","Yellow Wood"},
				}

for i in ipairs(wood_mat) do
	local wmat = wood_mat[i][1]
	local wimg = wood_mat[i][2]
	local wtype = wood_mat[i][3]
	local wdesc = wood_mat[i][4]

function core.get_myfurniture_formspec(pos)
    local spos = pos.x .. "," .. pos.y .. "," ..pos.z
    local formspec =
        "size[9,7]"..
        "list[nodemeta:".. spos .. ";main;0.5,0.5;8,2;]"..
        "list[current_player;main;0.5,3;8,4;]"
    return formspec
end
function core.get_myfurniture_formspec2(pos)
    local spos = pos.x .. "," .. pos.y .. "," ..pos.z
    local formspec =
        "size[9,7]"..
        "list[nodemeta:".. spos .. ";main;0.5,0.5;8,1;]"..
        "list[current_player;main;0.5,3;8,4;]"
    return formspec
end
function core.get_myfurniture_formspec3(pos)
    local spos = pos.x .. "," .. pos.y .. "," ..pos.z
    local formspec =
        "size[9,7]"..
        "list[nodemeta:".. spos .. ";main;0.5,0.5;8,1;]"..
        "list[current_player;main;0.5,3;8,4;]"
    return formspec
end

--Table
core.register_node("myfurniture:"..wtype.."_dinning_table", {
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
core.register_node("myfurniture:"..wtype.."_chair", {
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
--Bookshelf
core.register_node("myfurniture:"..wtype.."_bookshelf", {
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
core.register_node("myfurniture:"..wtype.."_bookshelf_top", {
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
core.register_node("myfurniture:"..wtype.."_cabinet", {
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
core.register_node("myfurniture:"..wtype.."_desk", {
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
core.register_node("myfurniture:"..wtype.."_end_table", {
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
--Stool
core.register_node("myfurniture:"..wtype.."_stool", {
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
core.register_node("myfurniture:"..wtype.."_tv_stand", {
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
core.register_node("myfurniture:"..wtype.."_kitchen_cabinet", {
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
        local meta = core.get_meta(pos)
        meta:set_string("infotext", "Kitchen Cabinet")
        meta:set_string("owner", "")
        local inv = meta:get_inventory()
        inv:set_size("main", 9*7)
    end,

    can_dig = function(pos,player)

	local meta = core.env:get_meta({x=pos.x,y=pos.y+1,z=pos.z});
	local inv = meta:get_inventory()
	if not inv:is_empty("ingot") then
		return false
	elseif not inv:is_empty("res") then
		return false
	end
	


        local meta = core.get_meta(pos);
        local inv = meta:get_inventory()

        return inv:is_empty("main")
	


    end,
    allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
        local meta = core.get_meta(pos)

        return count
    end,
    allow_metadata_inventory_put = function(pos, listname, index, stack, player)
        local meta = core.get_meta(pos)
        return stack:get_count()
    end,
    allow_metadata_inventory_take = function(pos, listname, index, stack, player)
        local meta = core.get_meta(pos)
        return stack:get_count()
    end,

    on_rightclick = function(pos, node, clicker)
        local meta = core.get_meta(pos)
            core.show_formspec(
                clicker:get_player_name(),
                "myfurniture:"..wtype.."_kitchen_cabinet",
                core.get_myfurniture_formspec(pos)
            )
    end,
})
--Kitchen Upper Cabinet
core.register_node("myfurniture:"..wtype.."_kitchen_upper_cabinet", {
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
        local meta = core.get_meta(pos)
        meta:set_string("infotext", "Kitchen Cabinet")
        meta:set_string("owner", "")
        local inv = meta:get_inventory()
        inv:set_size("main", 9*7)
    end,

    can_dig = function(pos,player)

	local meta = core.env:get_meta({x=pos.x,y=pos.y+1,z=pos.z});
	local inv = meta:get_inventory()
	if not inv:is_empty("ingot") then
		return false
	elseif not inv:is_empty("res") then
		return false
	end
	


        local meta = core.get_meta(pos);
        local inv = meta:get_inventory()

        return inv:is_empty("main")
	


    end,
    allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
        local meta = core.get_meta(pos)

        return count
    end,
    allow_metadata_inventory_put = function(pos, listname, index, stack, player)
        local meta = core.get_meta(pos)
        return stack:get_count()
    end,
    allow_metadata_inventory_take = function(pos, listname, index, stack, player)
        local meta = core.get_meta(pos)
        return stack:get_count()
    end,

    on_rightclick = function(pos, node, clicker)
        local meta = core.get_meta(pos)
            core.show_formspec(
                clicker:get_player_name(),
                "myfurniture:"..wtype.."_kitchen_cabinet",
                core.get_myfurniture_formspec2(pos)
            )
    end,
})
--Kitchen Corner Cabinet
core.register_node("myfurniture:"..wtype.."_kitchen_corner_cabinet", {
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
core.register_node("myfurniture:"..wtype.."_kitchen_upper_corner_cabinet", {
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
        local meta = core.get_meta(pos)
        meta:set_string("infotext", "Kitchen Cabinet")
        meta:set_string("owner", "")
        local inv = meta:get_inventory()
        inv:set_size("main", 9*7)
    end,

    can_dig = function(pos,player)

	local meta = core.env:get_meta({x=pos.x,y=pos.y+1,z=pos.z});
	local inv = meta:get_inventory()
	if not inv:is_empty("ingot") then
		return false
	elseif not inv:is_empty("res") then
		return false
	end
	


        local meta = core.get_meta(pos);
        local inv = meta:get_inventory()

        return inv:is_empty("main")
	


    end,
    allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
        local meta = core.get_meta(pos)

        return count
    end,
    allow_metadata_inventory_put = function(pos, listname, index, stack, player)
        local meta = core.get_meta(pos)
        return stack:get_count()
    end,
    allow_metadata_inventory_take = function(pos, listname, index, stack, player)
        local meta = core.get_meta(pos)
        return stack:get_count()
    end,

    on_rightclick = function(pos, node, clicker)
        local meta = core.get_meta(pos)
            core.show_formspec(
                clicker:get_player_name(),
                "myfurniture:"..wtype.."_kitchen_cabinet",
                core.get_myfurniture_formspec3(pos)
            )
    end,

})

--Chest Of Drawers
core.register_node("myfurniture:"..wtype.."_chest_of_drawers", {
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
core.register_node("myfurniture:"..wtype.."_bench", {
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
--Shelf
core.register_node("myfurniture:"..wtype.."_shelf", {
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
--Kitchen Sink
core.register_node("myfurniture:"..wtype.."_kitchen_sink", {
	description = wdesc.." Kitchen Sink",
	tiles = {
			"myfurniture_kitchen_sink_"..wimg..".png",
			},
	drawtype = "mesh",
	mesh = "myfurniture_kitchen_sink.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 1.5, 0.5, 0.5},
		}
	},
	collision_box = {
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
		local inv = placer:get_inventory()
		local give_back = ItemStack("myfurniture:"..wtype.."_kitchen_sink")
		local right_node = core.get_node(right_pos)
		if right_node.name ~= "air" then
    		core.chat_send_player(placer:get_player_name(),"Not enough room")
    		core.remove_node(pos)
			if inv:room_for_item("main", give_back) then
            	inv:add_item("main", give_back)
        	else
            	core.add_item(pos, give_back)
        	end
        	return true
		end
	end,
})
end
