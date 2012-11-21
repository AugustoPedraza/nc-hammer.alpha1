class ApplicationController < ActionController::Base
  protect_from_forgery
  def after_sign_in_path_for(resource)
    current_user.companies << Company.find_or_create(params[:user][:company_name])
    puts "="*50
    puts current_user.companies.inspect
    puts "="*50
    '/'
  end
end
