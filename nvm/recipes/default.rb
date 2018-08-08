#
# Cookbook Name:: nvm
# Recipe:: default
#
#
# cookbook_file "/home/ubuntu/node-installer.sh" do
#     user 'ubuntu'
#     source "node-installer.sh"
#     mode 0755
# end

bash "install NVM" do
    user 'ubuntu'
    cwd '/tmp'  
    code <<-EOH
        echo "GET NVM - CURL" > log.out
        wget https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh
        echo "INSTALL NVM" >> log.out
        sudo chown ubuntu:ubuntu install.sh
        mv install.sh /home/ubuntu
        cd /home/ubuntu
        chmod 755 install.sh
        ./install.sh
        sudo chown -R ubuntu:ubuntu ~/.nvm
        export NVM_DIR="~/.nvm"
        echo "NVM DIR: $NVM_DIR" >> log.out
        source /home/ubuntu/.profile
        EOH
end