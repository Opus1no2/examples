require 'lib/helper'

class Examples < Sinatra::Base
  include Example

  set :public_folder => "public", :static => true

  get "/" do
    "#{Example.foo('http://opinionlab.com')}"
  end
end
