require 'rake'

namespace :mailer do
  task :remind => :environment do
    ReminderMailer.remind_users
  end
end
