require 'httparty'

require_relative 'langtool/checker'
require_relative 'langtool/language'

module LangTool
  def self.text_check(text, language)
    Checker.check(text, language)
  end

  def self.available_languages
    Language.list
  end
end
