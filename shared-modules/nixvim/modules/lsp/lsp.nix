{ ... }:
{
	programs.nixvim.lsp = {
		enable = true;
		servers = {
			nil_ls.enable = true;
			pyright.enable = true;
			lua_ls.enable = true;
			tinymist.enable = true;
		};
	};
}
