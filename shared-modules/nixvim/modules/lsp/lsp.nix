{ ... }:
{
	programs.nixvim.plugins.lsp.enable = true;
	programs.nixvim.lsp = {
		servers = {
      nil_ls.enable = true;
		};
	};
}
