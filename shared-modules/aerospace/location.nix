{ ... }:
{
  services.aerospace.settings = {
    on-window-detected = [
      {
        "if".app-id = "com.mitchellh.ghostty";
        run = [ "move-node-to-workspace 1" ];
      }
      {
        "if".app-id = "app.zen-browser.zen";
        run = [ "move-node-to-workspace 2" ];
      }
      {
        "if".app-id = "com.github.Electron";
        run = [ "move-node-to-workspace 3" ];
      }
      {
        "if".app-id = "com.spotify.client";
        run = [ "move-node-to-workspace 4" ];
      }
      {
        "if".app-id = "org.gnu.Emacs";
        run = [ "move-node-to-workspace 5" ];
      }
      {
        "if".app-id = "dev.vencord.vesktop";
        run = [ "move-node-to-workspace 6" ];
      }
      {
        "if".app-id = "net.kovidgoyal.calibre";
        run = [ "move-node-to-workspace 8" ];
      }
      {
        "if".app-id = "info.sioyek.sioyek";
        run = [ "move-node-to-workspace 9" ];
      }

      {
        "if".app-id = "ch.protonmail.desktop";
        run = [ "move-node-to-workspace m" ];
      }
      {
        "if".app-id = "com.ableton.live";
        run = [ "move-node-to-workspace d" ];
      }
      {
        "if".app-id = "org.qbittorrent.qBittorrent";
        run = [ "move-node-to-workspace t" ];
      }
    ];
  };
}
