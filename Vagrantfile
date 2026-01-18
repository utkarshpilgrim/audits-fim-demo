Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"  # Ubuntu 22.04
  config.vm.provision "shell", inline: <<-SHELL
    sudo apt update
    sudo apt install -y python3
  SHELL
  config.vm.synced_folder ".", "/vagrant"
end