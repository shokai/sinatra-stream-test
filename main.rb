
get '/' do
  @mes = 'index'
end

get '/stream' do
  stream do |s|
    loop do
      s << Time.now.to_s + "\n"
      sleep 1
    end
  end
end
