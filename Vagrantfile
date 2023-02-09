Vagrant.configure("2") do |config|

  # Definir o provider e alocar recursos
  config.vm.provider "virtualbox" do |v|
    v.name = "vagrant-docker"
    v.cpus = 1
    v.memory = 1024
    v.gui = false
  end

  # Definir o hostname, SO e rede
  config.vm.hostname = "ubuntu"
  config.vm.box = "ubuntu/jammy64"
  config.vm.network "private_network", ip: "192.168.56.11"

  # Compartilhar a pasta que contém a API, Dockerfile e Docker-Compose
  config.vm.synced_folder "./viacep", "/root"

  # Provisionar a VM pelo shell
  config.vm.provision "shell", path: "provision.sh"

end
