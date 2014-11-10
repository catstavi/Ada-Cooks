require 'rails_helper'

describe PagesController do
  describe '#home' do
    it 'assingns @recipes' do
      get :home
      expect(response).to be_success
    end
  end

end
