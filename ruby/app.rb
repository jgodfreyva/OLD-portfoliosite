require 'sinatra'
require 'csv'

get '/' do
    array = []
    csv_file = File.read('../Desktop/portfolio_posts.csv')
    CSV.parse(csv_file, headers: true) do |row|
        array << [row['text'], row['date']]
    end
    @array = array
end