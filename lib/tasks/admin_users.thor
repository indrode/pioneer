class AdminUsers < Thor
  
  desc "create EMAIL PW", "creates a new admin user with the given credentials"
  def create(email, pw)
    require File.expand_path('config/environment.rb')
    AdminUser.create!(:email => email.dup, :password => pw.dup, :password_confirmation => pw.dup)
    puts "Admin user successfully created."
  end
  
  desc "destroy EMAIL", "removes an admin user from the database"
  def destroy(email)
    require File.expand_path('config/environment.rb')
    AdminUser.find_by_email(email).destroy
    puts "Admin user removed."
  end
end