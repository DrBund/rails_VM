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

include_recipe 'nodejs'
include_recipe 'ruby_build'
include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"
include_recipe "rbenv::rbenv_vars"

# Install a ruby
rbenv_ruby "2.3.1"


#ruby_build_ruby "2.3.1" do
#  prefix_path "/usr/local/ruby/ruby-2.3.1"
#  action      :install
#end

#ruby_runtime 'myapp' do
#    provider :ruby_build
#    version '2.1'
#end
