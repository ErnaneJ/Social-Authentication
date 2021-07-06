class CallbacksController < Devise::OmniauthCallbacksController
    # Github
    def github
        @user = User.from_omniauth(request.env["omniauth.auth"])
        sign_in_and_redirect @user
    end

    # Facebook
    def facebook 
        @user = User.from_omniauth(request.env["omniauth.auth"]) 
        if @user.persisted? 
            sign_in_and_redirect @user, event: :authentication
        else
            redirect_to new_user_registration_url
        end
    end

    def failure
        redirect_to root_path
    end

    # Google
    def google_oauth2
        # You need to implement the method below in your model (e.g. app/models/user.rb)
        @user = User.from_omniauth(request.env['omniauth.auth'])
  
        if @user.persisted?
          flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
          sign_in_and_redirect @user, event: :authentication
        else
          session['devise.google_data'] = request.env['omniauth.auth'].except('extra') # Removing extra as it can overflow some session stores
          redirect_to new_user_registration_url, alert: @user.errors.full_messages.join("\n")
        end
    end
end