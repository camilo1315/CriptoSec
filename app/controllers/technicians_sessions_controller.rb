class TechniciansSessionsController < ApplicationController
    def create
        
        user = Technician.where(email: params[:email]).first
        if user&.valid_password?(params[:password])
            render json: user.as_json(only: [ :email, :authentication_token]) , status: :created

        else
            head(:unauthorized)
        end
           
    end

    def destroy
        sign_out @technician
        redirect_to(:technicians , message:"Logged out")

    end

end