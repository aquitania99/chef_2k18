#
# Cookbook Name:: nvm
# Recipe:: default
#
#
cookbook_file "/tmp/node-installer.sh" do
    user 'ubuntu'
    group 'ubuntu'
    source "node-installer.sh"
    mode 0755
end

bash "install NVM" do
    user 'ubuntu'
    group 'ubuntu'
    cwd '/tmp'  
    code <<-EOH
        ./node-installer.sh
        EOH
end