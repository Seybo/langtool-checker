module LangTool
  class Language
    include HTTParty

    def self.list
      response = HTTParty.get('https://languagetool.org/api/v2/languages')
      JSON.parse response.body, symbolize_names: true
    end
  end
end
