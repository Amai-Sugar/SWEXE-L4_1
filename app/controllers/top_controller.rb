class TopController < ApplicationController
    def main
        if session[:login_uid] == nil
            render top_login_path
        else
            render top_main_path
        end
    end
    
    def login
    end
    
    def login_check
        @id = params[:uid]
        @password = params[:pass]
        if @id == "kindai" && @password == "sanriko"
            session[:login_uid] = @id
            render top_main_path
        else
            render top_error_path
        end
    end
end
