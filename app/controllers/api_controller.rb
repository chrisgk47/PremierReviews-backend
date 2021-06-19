class ApiController < ActionController::Base

include HTTParty
BASE_URL =  'https://www.thesportsdb.com/api/v1/json/1/search_all_teams.php?l=English%20Premier%20League'

  def query
    request = HTTParty.get(BASE_URL).to_json
    @request_hash = JSON.parse(request)
  end


end

stack_exchange = StackExchange.new("stackoverflow", 1)
puts stack_exchange.questions
puts stack_exchange.users
end