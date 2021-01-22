require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'
#gives us ability to reference the TextAnalyzer class in the TextAnalyzer model.

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    text_from_user = params[:user_text]

    @analyzed_text = TextAnalyzer.new(text_from_user)
    #an instance of TextAnalyzer class saved to an instance variable called @analyzed_text
    #this means we can call @analyzed_text and its methods in the erb files.
    erb :results

  end
end
