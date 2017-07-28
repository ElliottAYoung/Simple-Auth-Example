every 2.minutes do
  runner "ReminderMailer.remind_users"
end

every 2.days do
  runner "ReminderMailer.remind_users"
end
