require_relative "spec_helper"
require_relative "../examples.rb"

def app
  Examples
end

describe Examples do
  it "responds with a welcome message" do
    get '/'

    last_response.body.must_include 'Welcome to the Sinatra Template!'
  end
end
