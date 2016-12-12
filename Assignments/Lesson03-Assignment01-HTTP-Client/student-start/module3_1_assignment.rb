require 'httparty'

ENV["FOOD2FORK_KEY"] = '3277a6134116b489bb8b2e32e307d1fa'

class Recipe
    include HTTParty
    base_uri ('http://food2fork.com/api/search')
    default_params key: ENV["FOOD2FORK_KEY"]
    format :json

    def self.for term
      get("", query: {q: term})["recipes"]
    end

end
