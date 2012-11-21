class ApplicationController < ActionController::Base
  protect_from_forgery
  def after_sign_in_path_for(resource)
    current_user.company = Company.find_or_create(params[:user][:company_name])
    current_user.save
    puts "="*50
    puts current_user.company
    puts "="*50
    '/'
  end
end