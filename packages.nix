{ config, pkgs, ... }: 

let 
  wifiscript = import ./modules/wifiscript.nix { inherit pkgs; };
  bitcoinscript = import ./modules/bitcoinscript.nix { inherit pkgs; };
in
{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Allow electron
  nixpkgs.config.permittedInsecurePackages = [ 
	"electron-25.9.0"
  "python314"
  ];

  # Add packages to NixOS here
  environment.systemPackages = with pkgs; [
     wget
     gcc9
     zig
     cl 
     gradience
     playerctl
     xmrig
     appimage-run
     cointop
     cava
     doas
     neovim
     any-nix-shell
     krita
     swaylock-effects
     river
     obs-studio
     brave
     vivaldi
     qutebrowser
     telegram-desktop
     element-desktop
     zoom
     obsidian
     osu-lazer
     prismlauncher
     nitch
     htop
     killall
     fzf
     sxhkd
     nemo
     polkit_gnome
     pavucontrol
     gtk3
     zathura
     sioyek
     grim
     slurp
     wl-clipboard
     lf
     fastfetch
     neofetch
     yazi
     ranger
     audacity
     xdragon
     discord
     betterdiscordctl
     git
     gnumake
     lsix
     jdk17
     libreoffice
     brightnessctl
     swww
     feh 
     picom 
     swaybg
     light
     pamixer
     foot
     kitty
     rofi-wayland
     dunst
     eza
     mpv
     ani-cli
     libnotify 
     xwayland-satellite
     xdg-user-dirs
     xdg-desktop-portal-hyprland
     maim
     viewnior
     lutgen
     acpi
     texlive.combined.scheme-full
     wifiscript
     bitcoinscript
     (dmenu.overrideAttrs (old: {
         src = ./hm-modules/suckless/dmenu;
       }))
     (dwmblocks.overrideAttrs (old: {
         src = ./hm-modules/suckless/dwmblocks;
       }))
  ];
}
