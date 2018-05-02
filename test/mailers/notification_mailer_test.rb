require 'test_helper'

class NotificationMailerTest < ActionMailer::TestCase
  test "welcome_email" do
    mail = NotificationMailer.welcome_email
    assert_equal "Welcome email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "stock_status" do
    mail = NotificationMailer.stock_status
    assert_equal "Stock status", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
