class ProfilesController < ApplicationController
  def show
  	@user = User.friendly.find(params[:slug])
  	if @user
  		@trips = @user.trips.all
  		render action: :show
  	else
  		render file: 'public/404', status: 404, formats: [:html]
  	end
  end
end