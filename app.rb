require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reverse_name = params[:name]
    @reverse_name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    erb :square
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num_1 = params[:number1].to_i
    num_2 = params[:number2].to_i

    if operation == "add"
      total = num_1 + num_2
    elsif operation == "subtract"
      total = num_1 - num_2
    elsif operation == "multiply"
      total = num_1 * num_2
    elsif operation == "divide"
      total = num_1 / num_2
    end
    total.to_s
  end
end
