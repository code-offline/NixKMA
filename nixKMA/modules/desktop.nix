{ pkgs, ... }: {
  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;

    xkb.layout = "us,ru";
    xkbOptions = "grp:alt_shift_toggle";
  };

  i18n.defaultLocale = "ru_RU.UTF-8";

  environment.gnome.excludePackages = (with pkgs; [
    atomix
    cheese
    epiphany
    geary
    gnome-characters
    gnome-music
    gnome-photos
    gnome-tour
    hitori
    iagno
    tali
    totem
    gnome-contacts
    gnome-weather
    gnome-clocks
    gnome-maps
    yelp
    snapshot
    simple-scan
  ]);
}
