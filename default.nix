{ pkgs, ... }:

{
  fonts = {
    packages = with pkgs; [
      (iosevka-bin.override { variant = "SGr-IosevkaTermCurly"; })
      (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
      sarasa-gothic
      sarabun-font
      noto-fonts-emoji
    ];
    fontconfig = {
      defaultFonts = {
        serif = [ "Iosevka Term Cruly" ];
        sansSerif = [ "Iosevka Term Cruly" ];
        monospace = [ "Iosevka Term Cruly" ];
      };
    };
  };
}
