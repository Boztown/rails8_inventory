namespace :custom do
  desc "Create test user"
  task create_test_user: :environment do
    puts "Creating a test user..."
    email = Rails.application.credentials.admin_email
    user = User.create!(email_address: email, password: "LetMeIn123!", password_confirmation: "LetMeIn123!")
    account = Account.create!(name: "Default Account")
    AccountUser.create!(user: user, account: account)
  end
end
