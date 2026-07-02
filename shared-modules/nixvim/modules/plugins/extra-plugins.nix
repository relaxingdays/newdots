{ pkgs, ... }:
{
  programs.nixvim = {
    extraPlugins = with pkgs.vimPlugins; [
      live-preview-nvim
    ];

    extraConfigLua = ''
      require('livepreview.config').set({
        port = 5500,
        browser = 'default',
        dynamic_root = false,
        sync_scroll = true,
        picker = "",
        address = '127.0.0.1',
      })
    '';
  };
}
