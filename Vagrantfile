# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "ubuntu/focal64"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.100.100"

  # Configure VB provider
  config.vm.provider "virtualbox" do |vb|

  # Display the VirtualBox GUI when booting the machine
      vb.gui = false

      # Customize the amount of memory on the VM:
      vb.memory = "4096"
      vb.cpus = "2"
  end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Ansible, Chef, Docker, Puppet and Salt are also available. Please see the
  # documentation for more information about their specific syntax and use.
  install_deps = <<-SCRIPT
      apt-get -y update
      apt-get -y upgrade
      apt-get -y autoremove
  SCRIPT
  
  # Run the shell script
  config.vm.provision "shell", inline: install_deps

  # Configure a Vagrant trigger
  #config.trigger.after :up do |trigger|
  #     trigger.run = { inline: "cd /vagrant && ./gradlew bootRun"}
  #end
end
