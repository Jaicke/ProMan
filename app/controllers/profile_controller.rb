class ProfileController < ApplicationController
  # Devise
  before_action :authenticate_user!

  layout 'profile'
  def index
                
  end    
end
