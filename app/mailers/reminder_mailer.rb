class ReminderMailer < ApplicationMailer
  def self.remind_users
    User.all.each do |user|
      ReminderMailer.remind_email(user).deliver_now
    end
  end

  def remind_email(user)
    @user = user
    mail(to: @user.email, subject: 'Just a Reminder!')
  end
end
