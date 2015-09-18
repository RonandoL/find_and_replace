require('sinatra')
require('sinatra/reloader')
require('./lib/find_and_replace')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do  # user goes to this URL
  @target = params.fetch('target')
  @replacement = params.fetch('replacement')
  @sentence = params.fetch('sentence')
  @sentence_2 = @sentence.find_and_replace(@target, @replacement)  # data from form fields
  erb(:results_file)  # this is the filename
end
