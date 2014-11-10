Markitup::Rails.configure do |config|
  config.formatter = -> markup { HtmlParser.parse(markup) }
end