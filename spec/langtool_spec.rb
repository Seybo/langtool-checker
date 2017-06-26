require_relative 'spec_helper.rb'

RSpec.describe do
  it 'performs text check if correct language given' do
    expect(LangTool.text_check('some wwrong tex', 'en-US').class).to eq Hash
  end

  it 'returns error if incorrect language given' do
    error_text = "Error: 'en-USS' is not a language code known to LanguageTool"
    expect(LangTool.text_check('some text', 'en-USS')).to start_with(error_text)
  end

  it 'returns available languages list' do
    expect(LangTool.available_languages.class).to eq Array
  end
end
