#
# Cookbook Name:: rails_VM
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
#

group node['rails_VM']['group']

user node['rails_VM']['user'] do
  group node['rails_VM']['group']
  system true
  shell '/bin/bash'
end

include_recipe 'vim'
include_recipe 'sqlite'
include_recipe 'nodejs'
include_recipe 'ruby_build'
include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"
include_recipe "rbenv::rbenv_vars"

include_recipe "postgresql::server"
include_recipe "database::postgresql"

include_recipe 'imagemagick'

#include_recipe "application"
#include_recipe "application_ruby"

#include_recipe "application_ruby"

# Install a ruby
rbenv_ruby "2.3.1"

# Install rails
rbenv_gem "rails" do
  ruby_version "2.3.1"
  #version "5.0.0.rc1"
  version "4.2"
end

# create a database connection
postgresql_connection_info = {
  :host => "127.0.0.1",
  :username => 'postgres',
  :password => node['postgresql']['password']['postgres']
}

# create / manage a database user
postgresql_database_user 'slams' do
  connection postgresql_connection_info
  password 'bar'
  action :create
  #privileges [:all]
  #database_name 'postgres1'
  #action [:create, :grant]
end


# Rails
#application '/srv/myapp' do
#  rails do
#    #gems ['bundler']
#    database do
#      adapter 'postgres'
#      username 'postgres'
#    end
#    #password => node['postgresql']['password']['postgres']
#    #secret_token 'd78fe08df56c9'
#    #migrate true
#  end
#end

#application "demo.nclouds.com" do
#  path "/usr/local/www/demo"
#  owner "demo"
#  group "demo"
#  deploy_key node['demo']['deploy_key']
#  repository 'git@github.com:jtgiri/rails_base.git'
#  revision "HEAD"
#  rails do
#    gems ['bundler']
#    database do
#    database "demo"
#    username "demo"
#   password "awesome_password"
#   end 
#   end
#   passenger_apache2 do
#   end
#end

#ruby_build_ruby "2.3.1" do
#  prefix_path "/usr/local/ruby/ruby-2.3.1"
#  action      :install
#end

#ruby_runtime 'myapp' do
#    provider :ruby_build
#    version '2.1'
#end
