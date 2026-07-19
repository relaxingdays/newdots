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
        action.__raw = ''
          function()
            local list = harpoon:list()
            list:add()
          end
        '';
        options.desc = "Add file to harpoon";
      }
      {
        mode = "n";
        key = "<leader>h";
        action.__raw = ''
          function()
            local list = harpoon:list()
            harpoon.ui:toggle_quick_menu(list)
          end
        '';
        options.desc = "Toggle harpoon menu";
      }
      {
        mode = "n";
        key = "<leader>1";
        action.__raw = ''
          function()
            local list = harpoon:list()
            list:select(1)
          end
        '';
        options.desc = "Go to harpoon file 1";
      }
      {
        mode = "n";
        key = "<leader>2";
        action.__raw = ''
          function()
            local list = harpoon:list()
            list:select(2)
          end
        '';
        options.desc = "Go to harpoon file 2";
      }
      {
        mode = "n";
        key = "<leader>3";
        action.__raw = ''
          function()
            local list = harpoon:list()
            list:select(3)
          end
        '';
        options.desc = "Go to harpoon file 3";
      }
      {
        mode = "n";
        key = "<leader>4";
        action.__raw = ''
          function()
            local list = harpoon:list()
            list:select(4)
          end
        '';
        options.desc = "Go to harpoon file 4";
      }
      {
        mode = "n";
        key = "<leader>p";
        action = ":TypstPreviewToggle<CR>";
        options.desc = "Toggle typst preview";
      }
			{
				mode = [ "n" "v"];
				key = "<leader>d";
				action = ":Oil <CR>";
				options.desc = "Open oil on current directory";
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
