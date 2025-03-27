local shape = {}
local make_ok = {}

minetest.register_node("myfurniture:machine", {
	description = "Siding Machine",
	tiles = {
		"myfurniture_machine_top.png",
		"myfurniture_machine_bottom.png",
		"myfurniture_machine_side.png",
		"myfurniture_machine_side.png",
		"myfurniture_machine_front.png",
		"myfurniture_machine_front.png"
		},
	drawtype = "nodebox",
	inventory_image = "myfurniture_machine_inv.png",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, -0.375, -0.375, -0.375},
			{0.375, -0.5, -0.5, 0.5, -0.375, -0.375},
			{0.375, -0.5, 0.375, 0.5, -0.375, 0.5},
			{-0.5, -0.5, 0.375, -0.375, -0.375, 0.5},
			{-0.5, -0.375, -0.5, 0.5, -0.125, 0.5},
			{-0.5, -0.125, -0.0625, -0.375, 0.375, 0.0625},
			{0.375, -0.125, -0.0625, 0.5, 0.375, 0.0625},
			{-0.5, 0.25, -0.0625, 0.5, 0.375, 0.0625},
			{-0.1875, 0, -0.125, 0.1875, 0.5, 0.125},
			{-0.125, 0, -0.1875, 0.125, 0.5, 0.1875},
			{-0.0625, -0.0625, -0.0625, 0.0625, 0, 0.0625},
		}
	},

after_place_node = function(pos, placer)
	local meta = minetest.get_meta(pos);
	meta:set_string("owner",  (placer:get_player_name() or ""));
	meta:set_string("infotext",  "Siding Machine (owned by " .. (placer:get_player_name() or "") .. ")");
	
	local inv = meta:get_inventory()
	if not inv:is_empty("ingot") then
		return false
	elseif not inv:is_empty("res") then
		return false
	end
	return true
end,

can_dig = function(pos,player)
	local meta = minetest.get_meta(pos);
	local inv = meta:get_inventory()
	if player:get_player_name() == meta:get_string("owner") and
	inv:is_empty("ingot") and
	inv:is_empty("res") then
		return true
	else
	return false
	end
end,

on_construct = function(pos)
		
	local meta = minetest.get_meta(pos)
	meta:set_string("formspec", "invsize[10,11;]"..
		"background[-0.15,-0.25;10.40,11.75;myfurniture_background.png]"..
		"list[current_name;ingot;7,2;1,1;]"..
		"list[current_name;res;7,4;1,1;]"..
		
		"label[7,1.5;Input:]"..
		"label[7,3.5;Output:]"..
		
		"label[1,1;Pick Your Furniture - You must use pine wood]"..
		--row 1
		"image_button[1,2;1,1;myfurniture_mach1.png;furn1; ]"..
		"image_button[2,2;1,1;myfurniture_mach2.png;furn2; ]"..
		"image_button[3,2;1,1;myfurniture_mach3.png;furn3; ]"..
		"image_button[4,2;1,1;myfurniture_mach4.png;furn4; ]"..
		"image_button[5,2;1,1;myfurniture_mach5.png;furn5; ]"..
		"image_button[6,2;1,1;myfurniture_mach6.png;furn6; ]"..
		--row 2
		"image_button[1,3;1,1;myfurniture_mach7.png;furn7; ]"..
		"image_button[2,3;1,1;myfurniture_mach8.png;furn8; ]"..
		"image_button[3,3;1,1;myfurniture_mach9.png;furn9; ]"..
		"image_button[4,3;1,1;myfurniture_mach10.png;furn10; ]"..
		"image_button[5,3;1,1;myfurniture_mach11.png;furn11; ]"..
		"image_button[6,3;1,1;myfurniture_mach12.png;furn12; ]"..
		--row 3
		"image_button[1,4;1,1;myfurniture_mach13.png;furn13; ]"..
		"image_button[2,4;1,1;myfurniture_mach14.png;furn14; ]"..
		"image_button[3,4;1,1;myfurniture_mach15.png;furn15; ]"..
		"image_button[4,4;1,1;myfurniture_mach16.png;furn16; ]"..
		"image_button[5,4;1,1;myfurniture_mach17.png;furn17; ]"..
		--row 4
		"image_button[1,5;1,1;myfurniture_mach19.png;furn19; ]"..
		"image_button[2,5;1,1;myfurniture_mach20.png;furn20; ]"..
		"image_button[3,5;1,1;myfurniture_mach18.png;furn18; ]"..

		"list[current_player;main;1,7;8,4;]")
	meta:set_string("infotext", "Furniture Machine")
	local inv = meta:get_inventory()
	inv:set_size("ingot", 1)
	inv:set_size("res", 1)
end,

on_receive_fields = function(pos, formname, fields, sender)
	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()

if fields["furn1"] 
or fields["furn2"]
or fields["furn3"]
or fields["furn4"]
or fields["furn5"]
or fields["furn6"]
or fields["furn7"]
or fields["furn8"]
or fields["furn9"]
or fields["furn10"]
or fields["furn11"]
or fields["furn12"]
or fields["furn13"]
or fields["furn14"]
or fields["furn15"]
or fields["furn16"]
or fields["furn17"]
or fields["furn18"]
or fields["furn19"]
or fields["furn20"]
then

	if fields["furn1"] then
		make_ok = "0"
		shape = "myfurniture:dinning_table"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["furn2"] then
		make_ok = "0"
		shape = "myfurniture:chair"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["furn3"] then
		make_ok = "0"
		shape = "myfurniture:stool"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["furn4"] then
		make_ok = "0"
		shape = "myfurniture:end_table"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["furn5"] then
		make_ok = "0"
		shape = "myfurniture:bookshelf"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["furn6"] then
		make_ok = "0"
		shape = "myfurniture:bookshelf_top"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["furn7"] then
		make_ok = "0"
		shape = "myfurniture:desk"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["furn8"] then
		make_ok = "0"
		shape = "myfurniture:armchair"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["furn9"] then
		make_ok = "0"
		shape = "myfurniture:sofa_left"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["furn10"] then
		make_ok = "0"
		shape = "myfurniture:sofa_middle"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["furn11"] then
		make_ok = "0"
		shape = "myfurniture:sofa_right"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["furn12"] then
		make_ok = "0"
		shape = "myfurniture:tv_stand"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["furn13"] then
		make_ok = "0"
		shape = "myfurniture:cabinet"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["furn14"] then
		make_ok = "0"
		shape = "myfurniture:kitchen_cabinet"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["furn15"] then
		make_ok = "0"
		shape = "myfurniture:kitchen_corner_cabinet"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["furn16"] then
		make_ok = "0"
		shape = "myfurniture:kitchen_upper_cabinet"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["furn17"] then
		make_ok = "0"
		shape = "myfurniture:kitchen_upper_corner_cabinet"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["furn18"] then
		make_ok = "0"
		shape = "myfurniture:fridge"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["furn19"] then
		make_ok = "0"
		shape = "myfurniture:stove"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["furn20"] then
		make_ok = "0"
		shape = "myfurniture:dishwasher"
		if inv:is_empty("ingot") then
			return
		end
	end

		local ingotstack = inv:get_stack("ingot", 1)
		local resstack = inv:get_stack("res", 1)


------------------------------------------------------------------------------------------
--register nodes here
------------------------------------------------------------------------------------------
		if ingotstack:get_name()=="default:wood" or
		ingotstack:get_name()=="default:pine_wood" or
		ingotstack:get_name()=="default:aspen_wood" or
		ingotstack:get_name()=="default:acacia_wood" or
		ingotstack:get_name()=="default:junglewood" then
				make_ok = "1"
		end

----------------------------------------------------------------------------
    		if make_ok == "1" then
				inv:add_item("res",shape)
				ingotstack:take_item()
				inv:set_stack("ingot",1,ingotstack)
				make_ok = 0
			end            
   

end	
end,
})

--Craft

minetest.register_craft({
		output = 'myfurniture:machine',
		recipe = {
			{'default:tree', 'default:tree', 'default:tree'},
			{'default:tree', 'default:tree', 'default:tree'},
			{'default:tree', "default:tree", 'default:tree'},		
		},
})













