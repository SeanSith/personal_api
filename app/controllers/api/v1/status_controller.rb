class Api::V1::StatusController < ApiController
  before_action :authenticate_user

  def index
    slack_client.users_profile_set(
      # user: '@sean',
      profile: JSON.generate(
        status_emoji: ':star:',
        status_text: 'Putting Nicholas to Bed'
      )
    )
  end

  private

  def slack_client
    Slack::Web::Client.new(user_agent: "Sean's API")
  end
end
