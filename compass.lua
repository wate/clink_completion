local compass_argument_tree = {'create', 'clean', 'compile', 'init', 'watch', 'config', 'extension', 'frameworks', 'grid-img', 'imports', 'install', 'interactive', 'sprite', 'stats', 'unpack', 'validate', 'version', 'help'}

--[[
local compass_create_argument_tree = {
			'--using',
			'-x', '--syntax',
			'--prepare',
			'-r', '--require',
			'-l', '--load',
			'-L', '--load-all',
			'-I',
			'-q', '--quiet',
			'--trace',
			'--force',
			'--dry-run',
			'--boring',
			'-c', '--config',
			'--app',
			'--sass-dir',
			'--css-dir',
			'--images-dir',
			'--javascripts-dir',
			'--fonts-dir',
			'-e', '--environment',
			'-s', '--output-style',
			'--relative-assets',
			'--no-line-comments',
			'--bare',
			'-?', '-h', '--help'
}
local compass_environment_argument_tree = {'development', 'production'}
compass_create_argument_tree['-e'] = clink.arg.tree_node("*", compass_environment_argument_tree)
compass_create_argument_tree['--environment'] = clink.arg.tree_node("*", compass_environment_argument_tree)
local compass_output_style_argument_tree = {'nested', 'expanded', 'compact', 'compressed'}
compass_create_argument_tree['-s'] = clink.arg.tree_node("*", compass_output_style_argument_tree)
compass_create_argument_tree['--output-style'] = clink.arg.tree_node("*", compass_output_style_argument_tree)
compass_argument_tree['create'] = clink.arg.tree_node("*", compass_create_argument_tree)

local function compass_argument_tree(text, first, last){
	local leading = rl_line_buffer:sub(1, first - 1)
	local environment = clink.arg.node_transpose({'-e', '--environment'}, {'development', 'production'})
	local outputStyle = clink.arg.node_transpose({'-s', '--output-style'}, {'nested', 'expanded', 'compact', 'compressed'})
	
	local subCommans = {'clean', 'compile', 'init', 'watch', 'config', 'extension', 'frameworks', 'grid-img', 'imports', 'install', 'interactive', 'sprite', 'stats', 'unpack', 'validate', 'version', 'help'}
	local subCommans['help'] = subCommans;
	
	
	return true;
}
]]
clink.arg.register_tree("compass", compass_argument_tree)
