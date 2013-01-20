class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = current_user
  end

  def me
#{"me"=>{"id"=>"1456286987", "name"=>"Erwin Fletcher", "first_name"=>"Erwin", "last_name"=>"Fletcher", "link"=>"http://www.facebook.com/erwin.fletcher.39", "username"=>"erwin.fletcher.39", "gender"=>"male", "email"=>"ima_shepherd@yahoo.com", "timezone"=>-5, "locale"=>"en_GB", "updated_time"=>"2012-06-17T13:06:58+0000"}}
  end
end
