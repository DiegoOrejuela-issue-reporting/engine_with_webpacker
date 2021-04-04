require 'webpacker/helper'

module EngineWithWebpacker
  module ApplicationHelper
    include ::Webpacker::Helper
    def current_webpacker_instance
      EngineWithWebpacker.webpacker
    end
  end
end