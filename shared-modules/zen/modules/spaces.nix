{ ... }:
{
  programs.zen-browser.profiles.default = {
    spacesForce = true;
    spaces = {
      "Research" = {
        id = "research";
      };
    };
  };
  programs.zen-browser.profiles.school = {
    spacesForce = true;
    spaces = {
      "Study" = {
        id = "study";
      };
      "Revision" = {
        id = "revision";
      };
    };
  };
}
