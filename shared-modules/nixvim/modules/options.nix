{ ... }:
{
	programs.nixvim = {
		globals = {
			mapleader = " ";
			maplocalleader = " ";
		};
		opts = {
			number = true;
			relativenumber = true;
			tabstop = 2;
			shiftwidth = 2;
			softtabstop = 2;
			expandtab = true;
			smartindent = true;
			mouse = "a";
			ignorecase = true;
			smartcase = true;
		};
	};
}
