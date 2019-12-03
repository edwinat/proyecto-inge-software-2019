require 'sinatra'
get '/' do
    erb:home
end
post '/simular' do
    @nombre=params[:nombre]
    erb:simular
end