# ChatGPT Easy 🤖✨

Ever dreamed of chatting with AI in your Ruby projects but thought, "This is going to be a headache"? Well, dream no more! **ChatGPT Easy** is here to make your life easier, one API call at a time. 🎉

## What Does This Gem Do? 🛠️

ChatGPT Easy lets you:

- Send prompts to ChatGPT 🤔
- Receive intelligent, witty, and sometimes poetic responses 🎵
- Look cool while doing it 😎

Whether you're building a chatbot, an automated helper, or just having fun with AI, this gem makes it effortless.

---

## Installation 🚀

1. Add this gem to your Gemfile:
   ```ruby
   gem 'chatgpt_easy'
   ```
2. Install the gem:

bundle install
Or install it manually:

gem install chatgpt_easy

How to Use It? 🧐
Here’s how you can start chatting with ChatGPT in just a few lines of code:

require 'chatgpt_easy'

# Initialize the client with your API key

client = ChatgptEasy::Client.new("your_openai_api_key")

# Ask ChatGPT a question

response = client.chat("What's the secret to happiness?")
puts response # Spoiler: It's not just Ruby gems! 😜
Why ChatGPT Easy? 🤷‍♀️
Because life is too short for complicated API integrations. Here’s why you'll love it:

Simple: One class, one purpose.
Fast: Gets you from idea to execution in seconds.
Fun: Code should spark joy, right? ✨
Contributing ❤️
Spotted a bug? Have a feature idea? Fork the repo and open a PR! Let’s make this gem even better together. 🛠️

License 📜
This gem is available under the MIT License.
