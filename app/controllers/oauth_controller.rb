require 'oauth/controllers/provider_controller'
class OauthController < ApplicationController
  include OAuth::Controllers::ProviderController

  alias :logged_in? :user_signed_in?

  alias :login_required :authenticate_user!
  
  def me
    #{"me"=>{"id"=>"1456286987", "name"=>"Erwin Fletcher", "first_name"=>"Erwin", "last_name"=>"Fletcher", "link"=>"http://www.facebook.com/erwin.fletcher.39", "username"=>"erwin.fletcher.39", "gender"=>"male", "email"=>"ima_shepherd@yahoo.com", "timezone"=>-5, "locale"=>"en_GB", "updated_time"=>"2012-06-17T13:06:58+0000"}}
    #$stderr.puts "request", request.inspect

    # This allows /me to be called if there is a 'current_user' (from web page session) 
    # or if there 'current_token' (from an oauth token)
    u = current_user || current_token.user
    $stderr.puts "current user: ",current_user.inspect
    $stderr.puts "current token: ", current_token.inspect 
    $stderr.puts "current token user: ", current_token.user.inspect
    $stderr.puts "finding me: ", u.inspect
    json = {}.to_json

    unless u.nil?
      json = {"id" => u.id.to_s,
        "first_name" => u.first_name,
        "last_name" => u.last_name,
        "name" => "#{u.first_name} #{u.last_name}" ,
        "email" => u.email
      }.to_json
    end
    $stderr.puts "Json: ",json.inspect
    render :json => json
  end

  protected
  # Override this to match your authorization page form
  # It currently expects a checkbox called authorize
  # def user_authorizes_token?
  #   params[:authorize] == '1'
  # end

  # should authenticate and return a user if valid password.
  # This example should work with most Authlogic or Devise. Uncomment it
  #def authenticate_user(username,password)
  #  user = User.find_by_email params[:username]
  #  if user && user.valid_password?(params[:password])
  #    user
  #  else
  #    nil
  #  end
  #end

end
