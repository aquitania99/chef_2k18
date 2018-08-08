#
# Cookbook Name:: nvm
# Recipe:: default
#

bash "install NVM" do
    cwd '/home/ubuntu'
    user 'ubuntu'
    group 'ubuntu'
    environment ({'HOME' => '/home/ubuntu', 'USER' => 'ubuntu'})
    code <<-EOH
        wget https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh
        chmod 755 install.sh
        bash install.sh
        source /home/ubuntu/.profile
        EOH
end