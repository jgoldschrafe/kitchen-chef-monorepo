# -*- encoding: utf-8 -*-
#
# Author:: Jeff Goldschrafe <jeff@holyhandgrenade.org>
#
# Copyright (C) 2016 Rabbit, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'kitchen'
require 'kitchen/provisioner/chef_solo'
require 'kitchen_chef_monorepo/helpers'

module Kitchen
  module Provisioner
    # @author Jeff Goldschrafe <jeff@holyhandgrenade.org>
    class ChefSoloMonorepo < ChefSolo
      include KitchenChefMonorepo::Helpers

      default_config :cookbooks_path, ['../']

      def create_sandbox
        super
        cp_cookbooks
      end

    end
  end
end
