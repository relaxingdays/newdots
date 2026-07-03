{ inputs, ... }:
{
	programs.nixvim.plugins.mini-starter = {
    enable = true;
    settings = {
      autoopen = true;
      content_hooks = [
        inputs.nixvim.mkRaw "require(\"mini.starter\").gen_hook.adding_bullet()"
        inputs.nixvim.mkRaw "require(\"mini.starter\").gen_hook.indexing('all', { 'Builtin actions' })"
        inputs.nixvim.mkRaw "require(\"mini.starter\").gen_hook.aligning('center', 'center')"
      ];
      evaluate_single = true;
      header = ''
        ███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗
        ████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║
        ██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║
        ██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║
        ██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║
      '';
      items = [
        inputs.nixvim.mkRaw "require(\"mini.starter\").sections.builtin_actions()"
        inputs.nixvim.mkRaw "require(\"mini.starter\").sections.recent_files(10, false)"
        inputs.nixvim.mkRaw "require(\"mini.starter\").sections.recent_files(10, true)"
        inputs.nixvim.mkRaw "require(\"mini.starter\").sections.sessions(5, true)"
      ];
    };
  };
}
