{ ... }:
{
	programs.nixvim.lsp = {
		servers = {
      nil_ls.enable = true;
      ts_ls.enable = true;
      html.enable = true;
      pylsp.enable = true;
		};
	};
}
