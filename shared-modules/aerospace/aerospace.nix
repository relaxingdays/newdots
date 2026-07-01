{ ... }: 
{
	services.aerospace = {
		enable = true;
		settings = {
			gaps = {
				outer.left = 0;
				outer.right = 0;
				outer.bottom = 0;
				outer.top = 0;
				inner.horizontal = 0;
				inner.vertical = 0;
			};
			enable-normalization-flatten-containers = false;
			enable-normalization-opposite-orientation-for-nested-containers = true;
			accordion-padding = 10;
      /*
      after-startup-command = [
			""
			];
      */
			default-root-container-layout = "tiles";
			default-root-container-orientation = "auto";
      /*
			exec-on-workspace-change = [

			];
      */
		};
	};
}
