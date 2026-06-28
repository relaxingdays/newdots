{ ... }: 
{
	programs.nixvim.plugins.blink-cmp = {
		enable = true;
		settings = {
			preset = "super-tab";
		};
	};
}
