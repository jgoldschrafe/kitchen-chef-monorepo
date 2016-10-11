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

module KitchenChefMonorepo
  module Helpers

    def cp_cookbooks
      info "Preparing cookbooks from repository"

      if config[:cookbook_path].kind_of?(Array)
        config[:cookbook_path].reverse.each do |p|
          dir = File.expand_path(p)
          debug "Using cookbooks from #{dir}"
          FileUtils.cp_r(File.join(dir, "."), tmpbooks_dir)
        end
      end
    end

    def tmpbooks_dir
      File.join(sandbox_path, "cookbooks")
    end

  end
end
