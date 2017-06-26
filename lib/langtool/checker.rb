module LangTool
  class Checker
    include HTTParty

    def self.check(text, language)
      options = {
        body: {
          text: text,
          language: language
        }
      }

      response = HTTParty.post('https://languagetool.org/api/v2/check', options)
      return response.body if response.body.start_with?('Error')
      JSON.parse response.body, symbolize_names: true
    end
  end
end
