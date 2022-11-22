class MailerWorker
include Sidekiq::Worker 

    def perform(*args)
        @users.each do |user|
            Welcomemailer.send_welcome_mail(user).deliver_now

        end
    end

end