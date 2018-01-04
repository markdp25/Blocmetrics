class RegisteredApplicationsController < ApplicationController
    def index
       @registered_applications = current_user.registered_applications
    end

    def show
      @app = RegisteredApplication.find(params[:id])
      @events = @app.events.group_by(&:name)
    end

    def new
      @app = RegisteredApplication.new
    end

    def create
      @app = current_user.registered_applications.new(app_params)
      if @app.save
        flash[:notice] = "Success!"
        redirect_to registered_applications_path
      else
        flash.now[:alert] = "Please enter a valid name and URL."
        render 'new'
      end
    end

    def destroy
      @app = RegisteredApplication.find(params[:id])
      if @app.destroy
        flash[:notice] = "Removed!"
        redirect_to registered_applications_path
      else
        flash[:alert] = "Try again!"
      end
    end

    private

    def app_params
      params.require(:registered_application).permit(:name, :url)
    end
  end
