require "chatgpt_easy"

RSpec.describe ChatgptEasy::Client do
  it "sends a prompt to ChatGPT and receives a response" do
    client = ChatgptEasy::Client.new("fake_api_key")

    # Mocking the HTTParty response
    mock_response = double("HTTParty::Response")
    allow(mock_response).to receive(:code).and_return(200)
    allow(mock_response).to receive(:[]).with("choices").and_return([
      { "message" => { "content" => "Hello, world!" } }
    ])

    allow(HTTParty).to receive(:post).and_return(mock_response)

    response = client.chat("Say hello")
    expect(response).to eq("Hello, world!")
  end
end
