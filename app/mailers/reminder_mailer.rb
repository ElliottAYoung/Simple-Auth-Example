class ReminderMailer
  def remind_email(user)
    @user = user
    mail(to: @user.email, subject: 'Just a Reminder!')
  end
end
