require 'rails_helper'

RSpec.describe Frontend::HomeController, type: :controller do

  describe ':index' do
    it 'should show some text' do
      get :index
      expect(response).to be_success
    end
  end

end
