class SessionsController < ApplicationController

    def create

        begin  
            emailVal = login_params[:email]; to_s
            # user = User.find_by email: emailVal.to_s
            puts "login_params-==login=== #{user}"


        rescue Exception => e
            puts "99999999999999999999999999999999999999999999999 #{e}"
            # puts e.backtrace.inspect  
          end  


       
        # if user && user.authenticate(login_params[:password])
        #     session[:user_id] - user.id
        #     redirect_to '/products'
        # else
        #     flash[:login_errors] = ['invalid credentials']
        #     redirect_to '/'
        # end

    end

    private
    
    def login_params
        params.require(:login).permit(:email, :password)
end
end
