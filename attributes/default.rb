#
# Cookbook Name:: skeleton
# Attributes:: default
#
# Copyright (C) YEAR YOUR_NAME <YOUR_EMAIL>
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

default[:drupal_developer][:xdebug] = false
default[:drupal_developer][:phpmyadmin] = false
default[:drupal_developer][:xhprof] = false
default[:drupal_developer][:xhprof_io] = false
default[:drupal_developer][:percona_toolkit] = false

if node[:drupal][:server][:base].nil?
  default[:drupal_developer][:server_base] = '/srv/www'
else
  default[:drupal_developer][:server_base] = node[:drupal][:server][:base]
end
