{ ... }: 
{
	programs.nixvim.plugins.blink-cmp = {
		enable = true;
		keymap.preset = "super-tab";
		source = {
			default = [ "lsp" "path" "snippets" "buffer" ];
		};
	};
}
