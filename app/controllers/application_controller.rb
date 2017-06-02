class ApplicationController < ActionController::Base


  protect_from_forgery with: :exception
  before_action :authenticate_user!


  def after_sign_in_path_for(resource)
    admin_path
  end

  def after_sign_in_path_for(resource_or_scope)

    if resource_or_scope.has_role? :admin
      admin_path
    else
      employe_path
    end
  end


end
