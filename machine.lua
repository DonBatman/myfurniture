local shape = {}
local make_ok = {}


	
core.register_node("myfurniture:machine", {
	description = "Furniture Machine",
	tiles = {
		"myfurniture_machine_top.png",
		"myfurniture_machine_bottom.png",
		"myfurniture_machine_side.png",
		"myfurniture_machine_side.png",
		"myfurniture_machine_front.png",
		"myfurniture_machine_front.png"
		},
	drawtype = "nodebox",
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
			{-0.0625, -0.125, -0.0625, 0.0625, 0, 0.0625},
		}
	},

after_place_node = function(pos, placer)
	local meta = core.get_meta(pos);
	meta:set_string("owner",  (placer:get_player_name() or ""));
	meta:set_string("infotext",  "Furniture Machine (owned by " .. (placer:get_player_name() or "") .. ")");
	
	local inv = meta:get_inventory()
	if not inv:is_empty("ingot") then
		return false
	elseif not inv:is_empty("res") then
		return false
	end
	return true
end,

can_dig = function(pos,player)
	local meta = core.get_meta(pos);
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
		
	local meta = core.get_meta(pos)
	meta:set_string("formspec", "invsize[10,11;]"..
		"background[-0.15,-0.25;10.40,11.75;myfurniture_background.png]"..
		"list[current_name;ingot;7,2;1,1;]"..
		"list[current_name;res;7,4;1,1;]"..
		
		"label[7,1.5;Input:]"..
		"label[7,3.5;Output:]"..
		
		"label[1,0.5;Pick Your Furniture]"..
		--row 1
		"image_button[1,1.5;1,1;myfurniture_mach1.png;furn1; ]"..
		"image_button[2,1.5;1,1;myfurniture_mach2.png;furn2; ]"..
		"image_button[3,1.5;1,1;myfurniture_mach3.png;furn3; ]"..
		"image_button[4,1.5;1,1;myfurniture_mach4.png;furn4; ]"..
		"image_button[5,1.5;1,1;myfurniture_mach5.png;furn5; ]"..
		"image_button[6,1.5;1,1;myfurniture_mach6.png;furn6; ]"..
		--row 2
		"image_button[1,2.5;1,1;myfurniture_mach7.png;furn7; ]"..
		"image_button[2,2.5;1,1;myfurniture_mach8.png;furn8; ]"..
		"image_button[3,2.5;1,1;myfurniture_mach9.png;furn9; ]"..
		"image_button[4,2.5;1,1;myfurniture_mach10.png;furn10; ]"..
		"image_button[5,2.5;1,1;myfurniture_mach11.png;furn11; ]"..
		"image_button[6,2.5;1,1;myfurniture_mach12.png;furn12; ]"..
		--row 3
		"image_button[1,3.5;1,1;myfurniture_mach13.png;furn13; ]"..
		"image_button[2,3.5;1,1;myfurniture_mach14.png;furn14; ]"..
		"image_button[3,3.5;1,1;myfurniture_mach15.png;furn15; ]"..
		"image_button[4,3.5;1,1;myfurniture_mach16.png;furn16; ]"..
		"image_button[5,3.5;1,1;myfurniture_mach17.png;furn17; ]"..
		"image_button[6,3.5;1,1;myfurniture_mach22.png;furn18; ]"..
		--row 4
		"image_button[1,4.5;1,1;myfurniture_mach23.png;furn19; ]"..
		"image_button[2,4.5;1,1;myfurniture_mach18.png;pic1; ]"..
		"image_button[3,4.5;1,1;myfurniture_mach19.png;pic2; ]"..
		"image_button[4,4.5;1,1;myfurniture_mach20.png;pic3; ]"..
		"image_button[5,4.5;1,1;myfurniture_mach21.png;pic4; ]"..
		"image_button[6,4.5;1,1;myfurniture_mach24.png;furn20; ]"..
		--row 5
		"image_button[1,5.5;1,1;myfurniture_mach25.png;furn21; ]"..
		"image_button[2,5.5;1,1;myfurniture_mach26.png;furn22; ]"..
		"image_button[3,5.5;1,1;myfurniture_mach27.png;furn23; ]"..
		"image_button[4,5.5;1,1;myfurniture_mach28.png;furn24; ]"..
		"image_button[5,5.5;1,1;myfurniture_mach29.png;furn25; ]"..

		"list[current_player;main;1,7;8,4;]")
	meta:set_string("infotext", "Furniture Machine")
	local inv = meta:get_inventory()
	inv:set_size("ingot", 1)
	inv:set_size("res", 1)
end,

on_receive_fields = function(pos, formname, fields, sender)
	local meta = core.get_meta(pos)
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
or fields["pic1"]
or fields["pic2"]
or fields["pic3"]
or fields["pic4"]
or fields["furn20"]
or fields["furn21"]
or fields["furn22"]
or fields["furn23"]
or fields["furn24"]
or fields["furn25"]
then

	local ingotstack = inv:get_stack("ingot", 1)
	local resstack = inv:get_stack("res", 1)
	
local wood_mat = {
				{"default:wood","default_wood","wood","Apple Wood"},
				{"default:acacia_wood","default_acacia_wood","acacia_wood","Acacia Wood"},
				{"default:aspen_wood","default_aspen_wood","aspen_wood","Aspen Wood"},
				{"default:pine_wood","default_pine_wood","pine_wood","Pine Wood"},
				{"default:junglewood","default_junglewood","junglewood","Jungle Wood"},
				{"my_door_wood:wood_black","mydoors_black_wood","black_wood","Black Wood"},
				{"my_door_wood:wood_brown","mydoors_brown_wood","brown_wood","Brown Wood"},
				{"my_door_wood:wood_dark_grey","mydoors_dark_grey_wood","dark_grey_wood","Dark Grey Wood"},
				{"my_door_wood:wood_grey","mydoors_grey_wood","grey_wood","Grey Wood"},
				{"my_door_wood:wood_red","mydoors_red_wood","red_wood","Red Wood"},
				{"my_door_wood:wood_white","mydoors_white_wood","white_wood","White Wood"},
				{"my_door_wood:wood_yellow","mydoors_yellow_wood","yellow_wood","Yellow Wood"},
				{"moretrees:apple_tree_planks","moretrees_apple_tree_wood","apple_tree_wood","Apple Tree Wood"},
				{"moretrees:beech_planks","moretrees_beech_wood","beech_wood","Beech Wood"},
				{"moretrees:birch_planks","moretrees_birch_wood","birch_wood","Birch Wood"},
				{"moretrees:cedar_planks","moretrees_cedar_wood","cedar_wood","Cedar Wood"},
				{"moretrees:date_palm_planks","moretrees_date_palm_wood","date_palm_wood","Date Palm Wood"},
				{"moretrees:fir_planks","moretrees_fir_wood","fir_wood","Fir Wood"},
				{"moretrees:oak_planks","moretrees_oak_wood","oak_wood","Oak Wood"},
				{"moretrees:palm_planks","moretrees_palm_wood","palm_wood","Palm Wood"},
				{"moretrees:poplar_planks","moretrees_poplar_wood","poplar_wood","Poplar Wood"},
				{"moretrees:rubber_tree_planks","moretrees_rubber_tree_wood","rubber_tree_wood","Rubber Tree Wood"},
				{"moretrees:sequoia_planks","moretrees_sequoia_wood","sequoia_wood","Sequoia Wood"},
				{"moretrees:spruce_planks","moretrees_spruce_wood","spruce_wood","Spruce Wood"},
				{"moretrees:willow_planks","moretrees_willow_wood","willow_wood","Willow Wood"},
				{"ethereal:bamboo_block","ethereal_bamboo_floor","bamboo_block","Bamboo Block"},
				{"ethereal:banana_wood","ethereal_banana_wood","banana_wood","Banana Wood"},
				{"ethereal:birch_wood","ethereal_birch_wood","birch_wood","Birch Wood"},
				{"ethereal:frost_wood","ethereal_frost_wood","frost_wood","Frost Wood"},
				{"ethereal:mushroom_trunk","ethereal_mushroom_trunk","mushroom_trunk","Mushroom Trunk"},
				{"ethereal:olive_wood","ethereal_olive_wood","olive_wood","Olive Wood"},
				{"ethereal:palm_wood","ethereal_palm_wood","palm_wood","Palm Wood"},
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
	local woodstack = inv:get_stack("ingot",1)
	local woodname = woodstack:get_name()
	

	
	if fields["furn1"] then
		if woodname == wmat then
			shape = "myfurniture:"..wtype.."_dinning_table"
			make_ok = "1"
		end
	end

	if fields["furn2"] then
		if woodname == wmat then
			shape = "myfurniture:"..wtype.."_chair"
			make_ok = "1"
		end
	end

	if fields["furn3"] then
		if woodname == wmat then
			shape = "myfurniture:"..wtype.."_stool"
			make_ok = "1"
		end
	end

	if fields["furn4"] then
		if woodname == wmat then
			shape = "myfurniture:"..wtype.."_end_table"
			make_ok = "1"
		end
	end

	if fields["furn5"] then
		if woodname == wmat then
			shape = "myfurniture:"..wtype.."_bookshelf"
			make_ok = "1"
		end
	end

	if fields["furn6"] then
		if woodname == wmat then
			shape = "myfurniture:"..wtype.."_bookshelf_top"
			make_ok = "1"
		end
	end

	if fields["furn7"] then
		if woodname == wmat then
			shape = "myfurniture:"..wtype.."_desk"
			make_ok = "1"
		end
	end


	if fields["furn12"] then
		if woodname == wmat then
			shape = "myfurniture:"..wtype.."_tv_stand"
			make_ok = "1"
		end
	end

	if fields["furn13"] then
		if woodname == wmat then
			shape = "myfurniture:"..wtype.."_cabinet"
			make_ok = "1"
		end
	end

	if fields["furn14"] then
		if woodname == wmat then
			shape = "myfurniture:"..wtype.."_kitchen_cabinet"
			make_ok = "1"
		end
	end

	if fields["furn15"] then
		if woodname == wmat then
			shape = "myfurniture:"..wtype.."_kitchen_corner_cabinet"
			make_ok = "1"
		end
	end

	if fields["furn16"] then
		if woodname == wmat then
			shape = "myfurniture:"..wtype.."_kitchen_upper_cabinet"
			make_ok = "1"
		end
	end

	if fields["furn17"] then
		if woodname == wmat then
			shape = "myfurniture:"..wtype.."_kitchen_upper_corner_cabinet"
			make_ok = "1"
		end
	end

	if fields["furn18"] then
		if woodname == wmat then
			shape = "myfurniture:"..wtype.."_chest_of_drawers"
			make_ok = "1"
		end
	end

	if fields["furn19"] then
		if woodname == wmat then
			shape = "myfurniture:"..wtype.."_bench"
			make_ok = "1"
		end
	end

	if fields["furn20"] then
		if woodname == wmat then
			shape = "myfurniture:"..wtype.."_shelf"
			make_ok = "1"
		end
	end
end--ends ipairs
	if fields["pic1"] then
			if
				ingotstack:get_name()=="default:wood" or
				ingotstack:get_name()=="default:pine_wood" or
				ingotstack:get_name()=="default:aspen_wood" or
				ingotstack:get_name()=="default:acacia_wood" or
				ingotstack:get_name()=="default:junglewood" then
				make_ok = "1"
				shape = "myfurniture:picture1"
			end
	end

	if fields["pic2"] then
			if
				ingotstack:get_name()=="default:wood" or
				ingotstack:get_name()=="default:pine_wood" or
				ingotstack:get_name()=="default:aspen_wood" or
				ingotstack:get_name()=="default:acacia_wood" or
				ingotstack:get_name()=="default:junglewood" then
				make_ok = "1"
				shape = "myfurniture:picture2"
			end
	end

	if fields["pic3"] then
			if
				ingotstack:get_name()=="default:wood" or
				ingotstack:get_name()=="default:pine_wood" or
				ingotstack:get_name()=="default:aspen_wood" or
				ingotstack:get_name()=="default:acacia_wood" or
				ingotstack:get_name()=="default:junglewood" then
				make_ok = "1"
				shape = "myfurniture:picture3"
			end
	end

	if fields["pic4"] then
			if
				ingotstack:get_name()=="default:wood" or
				ingotstack:get_name()=="default:pine_wood" or
				ingotstack:get_name()=="default:aspen_wood" or
				ingotstack:get_name()=="default:acacia_wood" or
				ingotstack:get_name()=="default:junglewood" then
				make_ok = "1"
				shape = "myfurniture:picture4"
			end
	end
	
	if fields["furn8"] then
		if
			ingotstack:get_name()=="default:wood" or
			ingotstack:get_name()=="default:pine_wood" or
			ingotstack:get_name()=="default:aspen_wood" or
			ingotstack:get_name()=="default:acacia_wood" or
			ingotstack:get_name()=="default:junglewood" then
			make_ok = "1"
			shape = "myfurniture:armchair"
		end
	end

	if fields["furn9"] then
	
		if 
			ingotstack:get_name()=="default:wood" or
			ingotstack:get_name()=="default:pine_wood" or
			ingotstack:get_name()=="default:aspen_wood" or
			ingotstack:get_name()=="default:acacia_wood" or
			ingotstack:get_name()=="default:junglewood" then
			make_ok = "1"
			shape = "myfurniture:sofa_left"
		end
	end

	if fields["furn10"] then
		if
			ingotstack:get_name()=="default:wood" or
			ingotstack:get_name()=="default:pine_wood" or
			ingotstack:get_name()=="default:aspen_wood" or
			ingotstack:get_name()=="default:acacia_wood" or
			ingotstack:get_name()=="default:junglewood" then
			make_ok = "1"
			shape = "myfurniture:sofa_middle"
		end
	end

	if fields["furn11"] then
		if
			ingotstack:get_name()=="default:wood" or
			ingotstack:get_name()=="default:pine_wood" or
			ingotstack:get_name()=="default:aspen_wood" or
			ingotstack:get_name()=="default:acacia_wood" or
			ingotstack:get_name()=="default:junglewood" then
			make_ok = "1"
			shape = "myfurniture:sofa_right"
		end
	end

	if fields["furn21"] then
		if
			ingotstack:get_name()=="default:wood" or
			ingotstack:get_name()=="default:pine_wood" or
			ingotstack:get_name()=="default:aspen_wood" or
			ingotstack:get_name()=="default:acacia_wood" or
			ingotstack:get_name()=="default:junglewood" then
			make_ok = "1"
			shape = "myfurniture:vase"
		end
	end

	if fields["furn22"] then
		if
			ingotstack:get_name()=="default:wood" or
			ingotstack:get_name()=="default:pine_wood" or
			ingotstack:get_name()=="default:aspen_wood" or
			ingotstack:get_name()=="default:acacia_wood" or
			ingotstack:get_name()=="default:junglewood" then
			make_ok = "1"
			shape = "myfurniture:toilet"
		end
	end

	if fields["furn23"] then
		if
			ingotstack:get_name()=="default:wood" or
			ingotstack:get_name()=="default:pine_wood" or
			ingotstack:get_name()=="default:aspen_wood" or
			ingotstack:get_name()=="default:acacia_wood" or
			ingotstack:get_name()=="default:junglewood" then
			make_ok = "1"
			shape = "myfurniture:bathroom_sink"
		end
	end

	if fields["furn24"] then
		if
			ingotstack:get_name()=="default:wood" or
			ingotstack:get_name()=="default:pine_wood" or
			ingotstack:get_name()=="default:aspen_wood" or
			ingotstack:get_name()=="default:acacia_wood" or
			ingotstack:get_name()=="default:junglewood" then
			make_ok = "1"
			shape = "myfurniture:tub"
		end
	end

	if fields["furn25"] then
		if
			ingotstack:get_name()=="default:wood" or
			ingotstack:get_name()=="default:pine_wood" or
			ingotstack:get_name()=="default:aspen_wood" or
			ingotstack:get_name()=="default:acacia_wood" or
			ingotstack:get_name()=="default:junglewood" then
			make_ok = "1"
			shape = "myfurniture:mailbox"
		end
	end

----------------------------------------------------------------------------
    		if make_ok == "1" then
				inv:add_item("res",shape)
				ingotstack:take_item()
				inv:set_stack("ingot",1,ingotstack)
				make_ok = 0
			end            
   
end
end
})

--Craft

core.register_craft({
		output = 'myfurniture:machine',
		recipe = {
			{'group:tree', 'group:tree', 'group:tree'},
			{'group:tree', 'group:tree', 'group:tree'},
			{'group:tree', "group:tree", 'group:tree'},		
		},
})













