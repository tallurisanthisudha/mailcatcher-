class WelcomeController < ApplicationController
    def index
        @users = ["test1@gmail.com","test2@gmail.com","test3@gmail.com","test4@gmail.com"]
    end

    def send_mail
        MailerWorker.perform_async
        redirect_back(fallback_location: root_path)
    end
end

