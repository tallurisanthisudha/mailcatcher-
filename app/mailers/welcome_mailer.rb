class WelcomeMailer < ApplicationMailer

    def send_welcome_mail(user)

        mail(to: user, from:"thallurishanthi17@gmail.com",subject:"testingmail",message:"tested")
      end
end
