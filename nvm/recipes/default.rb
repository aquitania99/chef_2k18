#
# Cookbook Name:: nvm
# Recipe:: default
#
#
# cookbook_file "/tmp/node-installer.sh" do
#     user 'ubuntu'
#     group 'ubuntu'
#     source "node-installer.sh"
#     mode 0755
# end

bash "install NVM" do
    user 'ubuntu'
    group 'ubuntu'
    cwd '/home/ubuntu'  
    code <<-EOH
        wget https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh
        chmod 755 install.sh
        ./install.sh
        source /home/ubuntu/.profile
        EOH
end