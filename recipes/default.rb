#
# Cookbook Name:: drupal-developer
# Recipe:: default
#
# Copyright (C) 2014 Alex Knoll <arknoll@gmail.com>
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

unless node[:drupal_developer][:xdebug].nil?
  include_recipe 'drupal-developer::xdebug'
end

unless node[:drupal_developer][:phpmyadmin].nil?
  include_recipe 'drupal-developer::phpmyadmin'
end

unless node[:drupal_developer][:xhprof].nil?
  include_recipe 'drupal-developer::xhprof'
end

unless node[:drupal_developer][:xhprof_io].nil?
  include_recipe 'drupal-developer::xhprof.io'
end

unless node[:drupal_developer][:percona_toolkit].nil?
  include_recipe 'drupal-developer::perconatoolkit'
end
