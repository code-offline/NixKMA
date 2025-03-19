{
  services.openssh = {
    enable = true;
    settings = { 
      PermitRootLogin = "yes";
      AllowUsers = [ "root" ];
    };
  };
}
