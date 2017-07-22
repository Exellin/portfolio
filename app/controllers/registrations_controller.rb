class RegistrationsController < Devise::RegistrationsController
  def create
    super
    return unless resource.save
    flash.delete(:notice)
    flash[:success] = "You have successfully signed up"
  end
end
