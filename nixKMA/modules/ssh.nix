let
  root = "root";
  student = "student";
  key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCguczY7r+K2cOPR+ELjexUS9Ylq8dFw7QX5DiWKdWlO52j0sjK+EqTBJaV8eBQw8AWudlmIYZ6yiS2BCHEsZRLVaF4O3uAZRB6vx1rHClfyHDc2pnK7c+AQjS3sxlv6gemuL2xGtbFEDqpWTNo58/tZ02mv4Yi9LpMTPyw2gmfF8X/OfAynUK11J/CkkTwPAp4Y9pcqTibbgu9Wuvdht88f505HDVKIEtIeH5sc9C0Fc22QSTYCw6mBUBJygHfnCZkzVSTZxFyphS5PgdGVqNj/NQeA1hED1RSdpbydtkmkF2bAyTrer/SM+OFsMmRgvrjBUc0DGKRLSlKnrNz8BpAR4ONawjlOOSnCG6NIyB5AyVvwLl843vOhsLI70xzMaQW9RG9ruMVOs6GFYqwKBzvPW5nfXBGkzm4sBKchadbCJRdqgfvzBUyo61ZeSvHD4rU4hPMe4Ua763yrJIpLaEZpFMZP9tURjh0b33NBb5imj8H2YZydAjcJJwR5UFAE0c= gershaveut@nixVST";
in {
  services.openssh = {
    enable = true;
    settings = { 
      PasswordAuthentication = false;
      KbdInteractiveAuthentication = false;
      AllowUsers = [ root student ];
      PermitRootLogin = "yes";
    };
  };

  users.users.${root}.openssh.authorizedKeys.keys = [
    key
  ];

  users.users.${student}.openssh.authorizedKeys.keys = [
    key
  ];
}
