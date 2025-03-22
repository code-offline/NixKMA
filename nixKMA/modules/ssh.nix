{
  services.openssh = {
    enable = true;
    settings = { 
      PermitRootLogin = "yes";
      AllowUsers = [ "root" ];
    };
  };

  users.users."root".openssh.authorizedKeys.keys = [
    "ssh-rsa AAAAB4NzaC1yc2EAAAADAQABAAABgQCyUCgINuKfsvgi/t2Nf+gn8ZdPPJZ0EMHtoq6a3HV2A0KYVugLLrco+EhCHxQKKqac1E1ON9RgeR+y7VaRCWB06CKoD4IfwdhJrl6jdNKGKQSMHpEI9dUz4pKyUWU0die7FCE+l/C8rQxlDf+fdWSf+jQvQOAbvMTKXJs954ijFqxu3J06YqV8GPnZe+yF9LeoktPmpgcZeLNhKNS6Q9St5qgKf9DPh9koVu1owr0HZbhdBlRcYeV6A69WTUN7HVHHX81z9nIojkiJiHJMj2WEeRoQtxTROxAXP7wLZr+NUBnde8/Ayzw7CdnnVBcHZqMiLwzGBGq89eO0n0OcAguqzzYqY5zzoBIgeEgmKfHPeCOKgSQv+p/DNZzhcIq8JULrcfQoYa2ZqBdJyQyLJu0rCPUB0o4arvrkR9+AL9Ya3JXtstGaGY//z4KixVCUSpOnDopvHsexn7+mRAo5kjYreyr/Q/kfuzPlr+lGT2+w+CoyM4knFlvCHtRxXruMvus= gershaveut@nixVST"
  ];
}
