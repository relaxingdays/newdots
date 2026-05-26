{ ... }:
{
	programs.nixvim = {
		keymaps = [
			{
				mode = [ "n" "v"];
				key = "<leader>w";
				action = ":w<CR>";
				options.desc = "save";
			}
			{
				mode = [ "n" "v"];
				key = "<leader>q";
				action = ":q<CR>";
				options.desc = "quit";
			}
			{
				mode = [ "n" "v"];
				key = ";";
				action = ":";
			}
			{
				mode = [ "n" "v"];
				key = ":";
				action = ";";
			}
      {
        mode = "n";
        key = "<leader>a";
        action = "function() harpoon:list():add end";
        options.desc = "Add file to harpoon";
      }
      {
        mode = "n";
        key = "<leader>h";
        action = "function() harpoon:list():toggle_quick_menu(harpoon:list()) end";
        options.desc = "Toggle harpoon menu";
      }
      {
        mode = "n";
        key = "<leader>1";
        action = "function() harpoon:list():select(1) end";
        options.desc = "Go to harpoon file 1";
      }
      {
        mode = "n";
        key = "<leader>2";
        action = "function() harpoon:list():select(2) end";
        options.desc = "Go to harpoon file 2";
      }
      {
        mode = "n";
        key = "<leader>3";
        action = "function() harpoon:list():select(3) end";
        options.desc = "Go to harpoon file 3";
      }
      {
        mode = "n";
        key = "<leader>4";
        action = "function() harpoon:list():select(4) end";
        options.desc = "Go to harpoon file 4";
      }
      {
        mode = "n";
        key = "<leader>p";
        action = ":TypstPreviewToggle<CR>";
        options.desc = "Toggle typst preview";
      }
		];
		plugins.telescope.keymaps = {
			"<leader>ff" = {
				action = "find_files";
				options = {
					desc = "Telescope find files";
				};
			};
			"<leader>fg" = {
				action = "live_grep";
				options = {
					desc = "Telescope live grep";
				};
			};
			"<leader>fb" = {
				action = "buffers";
				options = {
					desc = "Telescope buffers";
				};
			};
			"<leader>ft" = {
				action = "treesitter";
				options = {
					desc = "Telescope treesitter";
				};
			};
		};
	};
}
