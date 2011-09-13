class Admin::AdminController < ApplicationController
  before_filter :authenticate_user!, :is_admin?
  layout "admin"
  def is_admin?
    if current_user.email!='admin@gmail.com'
      redirect_to root_path
    end
  end
end
