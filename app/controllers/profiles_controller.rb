class ProfilesController < ApplicationController
  def index
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.save
      redirect_to root_path
  end

  private

  def profile_params
    params.require(:profile).permit([:first_name, :last_name, :email])
  end
end
