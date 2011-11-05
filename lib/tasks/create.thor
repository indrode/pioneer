class Create < Thor
  
  desc "admin_user EMAIL PW", "creates a new admin user with the given credentials"
  def admin_user(email, pw)
    require File.expand_path('config/environment.rb')
    AdminUser.create!(:email => email.dup, :password => pw.dup, :password_confirmation => pw.dup)
    puts "Created new admin user."
  end
end