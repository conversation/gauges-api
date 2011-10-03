require "rubygems"
require "bundler/setup"

require "json"
require "pusher-client"
require "yaml"

APP_KEY = "887bd32ce6b7c2049e0b"

config_path = File.expand_path("../config.yml", __FILE__)
config = YAML.load_file(config_path)

PusherClient.logger = Logger.new(STDOUT)

socket = PusherClient::Socket.new(APP_KEY)
socket.subscribe(config["user_id"])

socket[config["user_id"]].bind("hit") do |data|
  puts JSON.parse(data).inspect
end

socket.connect
