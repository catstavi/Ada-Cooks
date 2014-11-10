require 'rails_helper'

describe SessionsController do
  describe '#destroy' do
    before { session[:user_id] = 1 }
    it 'sets session[:user_id] to nil' do
      get :destroy
      expect(session[:user_id]).to eq(nil)
    end
  end

  describe '#create' do
    before { session[:user_id] = nil }
    before { User.create(username: "meow", password: "m", password_confirmation: "m") }
    it 'sets the session[:user_id]' do
      get :create, username: "meow", password: "m"
      expect(session[:user_id]).to be_truthy #not be nil
    end
  end

end
