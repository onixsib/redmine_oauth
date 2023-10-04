# frozen_string_literal: true

# Redmine plugin OAuth
#
# Karel Pičman <karel.picman@kontron.com>
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

require "redmine"
require File.expand_path("lib/redmine_oauth/hooks", __dir__)

Redmine::Plugin.register :redmine_oauth do
  name "Redmine OAuth plugin"
  author "nbm a@onixsib.ru"
  description "Redmine OAuth plugin with Keycloak"
  version "2.1.2"
  url "https://github.com/onixsib/redmine_oauth"
  author_url "https://github.com/onixsib/redmine_oauth/graphs/contributors"
  settings default: {
    oauth_name: "none",
    site: "",
    client_id: "",
    client_secret: "",
    tenant_id: "",
    button_color: "#ffbe6f",
    button_icon: "fas fa-address-card",
  }, partial: "settings/oauth_settings"
end
