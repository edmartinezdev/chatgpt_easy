# lib/chatgpt_easy.rb
require "httparty"
require "json" # Ensure the JSON library is loaded

module ChatgptEasy
  class Client
    API_URL = "https://api.openai.com/v1/chat/completions"

    def initialize(api_key)
      @api_key = api_key
    end

    def chat(prompt, model: "gpt-4", temperature: 0.7)
      response = HTTParty.post(
        API_URL,
        headers: {
          "Authorization" => "Bearer #{@api_key}",
          "Content-Type" => "application/json"
        },
        body: {
          model: model,
          messages: [{ role: "user", content: prompt }],
          temperature: temperature
        }.to_json
      )
      parse_response(response)
    end

    private

    def parse_response(response)
      if response.code == 200
        response["choices"][0]["message"]["content"]
      else
        "Error: #{response['error']['message']}"
      end
    end
  end
end
