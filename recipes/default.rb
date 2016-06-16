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
