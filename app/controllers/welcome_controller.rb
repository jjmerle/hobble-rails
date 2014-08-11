require 'rest_client'
require 'json'
class WelcomeController < ApplicationController
  def index
  	appId= 'Tyvx9Q62WnQffKmwecPFd7uxk1tkJcqWYF28fka7'
  	javascriptKey = 'e8NX6XKQCx5jjnH0QGlNfcQymdKO8SQqDUQt9n2k'
  	objectId = 'zxDQ2EQNC6'
  	get_url = 'https://' + appId + ':javascript-key=' + javascriptKey + '@api.parse.com/1/classes/Requests/' + objectId
    post_url = 'https://' + appId + ':javascript-key=' + javascriptKey + '@api.parse.com/1/classes/User'

    request_json = {
      "username" => "JoshRest",
      "name" => "Josh Merle",
      "email" => "joshrest@umich.edu",
      "home" => "South Quad"
    }.to_json 

  	response = RestClient.post post_url, request_json, :content_type => 'json'
    # body = JSON.parse(response.body)
    # puts body
    # puts body['createdAt']


  	puts "End Response code"
  end
end
