require 'net/http'
require 'uri'
require 'json'

resp = $stdin.gets

uri = URI.parse(ENV['SLACK_WEBHOOK'])
  payload = {
    text: "```#{resp}```",
    channel: "@yyoshiki41",
    username: "Detect change",
    icon_emoji: ":sheep:"
  }
Net::HTTP.post_form(uri, { payload: payload.to_json })
