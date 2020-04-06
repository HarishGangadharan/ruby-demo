class UserController < ApplicationController

    def index

    end


    def create


        begin  

            user = User.new(user_params)
            user.save!
            session[:user_id] = user.id
            redirect_to '/products'
        rescue Exception => e
            puts "error if-==888888888888888888=== #{e}"
            # puts e.backtrace.inspect  
          end  

    end

    private
      def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :is_admin)
      end
end
