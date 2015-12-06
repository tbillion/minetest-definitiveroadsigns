for FILE in *; do
  # do something with $FILE

 echo "minetest.register_node(\"roadsigns:$FILE\", {
	description = \"$FILE\",
	drawtype = \"signlike\",
	tiles = { \"$FILE\" },
	paramtype = \"light\",
	paramtype2 = \"wallmounted\",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = \"wallmounted\",
		--wall_top = <default>
		--wall_bottom = <default>
		--wall_side = <default>
	},
	groups = {choppy=2,dig_immediate=2,attached_node=1},
	legacy_wallmounted = true,
})"
  
  #echo "File: $FILE"
done 

for FILE in *; do

echo "minetest.register_craft({
	output = \"$FILE\",
	recipe = {
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
		{'', 'default:steel_ingot', ''},
	}
}) " 
  
done