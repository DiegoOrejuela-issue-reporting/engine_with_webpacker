require 'rails_helper'

describe "Home workflow", type: :feature do

  describe '#home' do
    it "render success" do
      visit '/'
      sleep  20

      visit EngineWithWebpacker::Engine.routes.url_helpers.root_path
      sleep  20
    end
  end

end