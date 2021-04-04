require 'rails_helper'

describe "Home workflow", type: :feature do

  describe '#home' do
    it "render success" do
      visit '/'
      sleep  5

      visit EngineWithWebpacker::Engine.routes.url_helpers.root_path
      sleep  5
    end
  end

end