module Api 
    module V1
        class UsersController <ApplicationController

            def create
                user = User.new(params[:username])
                if user.valid?
                    user.save
                    render json: { status: "USER SUCCESSFULLY CREATED", data: user }
                else
                    render json: { status: "USER NOT CREATED", error: user.errors.full_messages}
                end
                
            end

            def show
                user = User.find(params[:id])
                render json: { status: "USER SUCCESSFULLY LOADED", data: user}
            end


            private

            def user_params
                params.require(:user).permit(
                    :username
                )
            end
        
        end
    end
end