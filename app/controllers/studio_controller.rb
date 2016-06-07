get '/' do
  @studios = Studio.all
  erb :'studios/index'
end

get '/studios/new' do
  erb :'studios/new'
end

post '/studios' do
  @studio = current_user.studios.new(params[:studio])
  if @studio.save
    redirect '/studios'
  else
    erb :'studios/new'
  end
end

get '/studios/:id' do
  @studio = Studio.find_by(id: params[:id])
  erb :'studios/show'
end

get '/studios/:id/edit' do
  @studio = Studio.find_by(id: params[:id])
  erb :'studios/edit'
end

put '/studios/:id' do
  @studio = Studio.find(params[:id])
  @studio.assign_attributes(params[:studio])
  if @studio.save
    redirect "/studios/#{@studio.id}"
  else
    erb :'studios/edit'
  end
end

delete '/studios/:id' do
  studio = Studio.find_by(id: params[:id])
  studio.destroy
  redirect '/'
end
