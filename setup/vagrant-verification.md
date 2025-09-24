# vagrant-verification
This contains information for setting up a vm in vagrant for use in the lessons.


## initialize rocky8
``vagrant init generic/rocky8 --box-version 4.3.12``


### alternatively, edit an existing vagrantfile
alternatively:
Vagrant.configure("2") do |config|
  config.vm.box = "generic/rocky8"
  config.vm.box_version = "4.3.12"
end

## bring the vm up
``vagrant up``

## ssh to the vagrant vm
``vagrant ssh``

### to logout
``logout``

### install nano as cli text editor (optional)
``sudo yum install -y nano``


## update the .bash* files
- ``truncate -s 0 ~/.bash_profile``
- ``touch ~/.bash_profile_vagrant``
- ``echo "source ~/.bash_profile" >> ~/.bashrc``

copy the contents of the .bash_profile and .bash_profile_vagrant shared earlier to their corresponding files in the VM

``source ~/.bashrc``

## basic setup completed!
That's it, we now have a VM that we can use for future lessons
