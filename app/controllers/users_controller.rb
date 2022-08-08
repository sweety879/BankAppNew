class UsersController<ApplicationController 
    def index
        @users=User.all
        authorize @users
        # @users.order(created_at: :desc)
    end   
    
    def edit
        @user = User.find(params[:id])
    end
    
    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
          redirect_to users_url, notice: "User was successfully updated."
        else
          render :edit, status: :unprocessable_entity
        end
    end
            
    private
    def user_params
        params.require(:user).permit({role_ids: []})
    end
    
end    