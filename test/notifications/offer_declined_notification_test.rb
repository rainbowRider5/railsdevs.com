require "test_helper"

class OfferDeclinedNotificationTest < ActiveSupport::TestCase
  test "implements required methods for iOS notifications" do
    offer = offers(:one)

    notification = OfferDeclinedNotification.with(offer:, conversation: offer.conversation)

    assert_respond_to notification, "title"
    assert_respond_to notification, "ios_subject"
    assert_respond_to notification, "url"
  end
end