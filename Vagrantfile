# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = 'ubuntu/trusty64'
  config.vm.hostname = 'vagrant.akai-devtut.com'

  config.vm.network 'forwarded_port', guest: 3000, host: 3000

  config.vm.provider 'virtualbox' do |v|
    v.memory = 1024
    v.cpus = 2
  end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision 'shell', inline: <<-SHELL
    cd /tmp
    # Install ruby-install
    wget -O ruby-install-0.6.0.tar.gz https://github.com/postmodern/ruby-install/archive/v0.6.0.tar.gz
    wget https://raw.github.com/postmodern/ruby-install/master/pkg/ruby-install-0.6.0.tar.gz.asc
    gpg --verify ruby-install-0.6.0.tar.gz.asc ruby-install-0.6.0.tar.gz
    tar -xzvf ruby-install-0.6.0.tar.gz
    cd ruby-install-0.6.0/
    make install

    # Install Ruby 2.3.0
    ruby-install --system ruby 2.3.0

    # Install additional dependencies
    apt-get install -y libsqlite3-dev sqlite3 nodejs
  SHELL
end
