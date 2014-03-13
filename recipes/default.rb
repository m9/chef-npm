#
# Cookbook Name:: npm
# Recipe:: default
#
# Author:: Marius Ducea (marius@promethost.com)
# Author:: Sergey Balbeko <sergey@balbeko.com>
#
# Copyright 2010, Promet Solutions
# Copyright 2012, Sergey Balbeko
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

Chef::Recipe.send(:include, Npm::Helper)

include_recipe "nodejs"

current_npm_url = npm_url

ark 'npm' do
  url current_npm_url
  version node['npm']['version']
  action :install_with_make
  not_if "npm -v 2>&1 | grep '#{node[:npm][:version]}'"
end
