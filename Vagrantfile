Vagrant.configure("2") do |config|
  config.vm.box = "archlinux/archlinux"

  config.vm.provider "virtualbox" do |v|
    # Set this to true to enable GUI
    v.gui = false
  end
  

  # Copy the Ansible playbook
  config.vm.provision "file", source: "playbook.yml", destination: "playbook.yml"
  # Copy the Ansible requirements
  config.vm.provision "file", source: "requirements.yml", destination: "requirements.yml"
  # Copy the .zshrc file
  config.vm.provision "file", source: ".zshrc", destination: ".zshrc"
  # Copy Starship shell prompt
  config.vm.provision "file", source: "starship.toml", destination: ".config/starship.toml"
  # Copy the user justfile
  config.vm.provision "file", source: ".user.justfile", destination: ".user.justfile"
  # Copy global git config
  config.vm.provision "file", source: "vm-gitconfig", destination: ".gitconfig"

  # Run Ansible on the Vagrant VM
  config.vm.provision "ansible_local" do |ansible|
     ansible.verbose = "v"
     ansible.playbook = "playbook.yml"
     ansible.galaxy_role_file = "requirements.yml"
     ansible.galaxy_command = "ansible-galaxy collection install -r requirements.yml"
  end
end
