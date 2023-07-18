Slack.configure do |config|
  config.token = Rails.application.credentials[:slack][:api_key]
end
