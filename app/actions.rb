# Homepage (Root path)
get '/' do
  erb :index
end

get '/messages' do
  @messages = Message.all
  erb :'messages/index'
end

get '/messages/new' do
  @message = Message.new
  erb :'messages/new'
end

get '/messages/:id' do
  @message = Message.find(params[:id])
  unless @message.author.empty?
    @other_messages = Message.where('author = ? AND id <> ?', @message.author, @message.id)
  end
  erb :'messages/show'
end

post '/messages' do
  @message = Message.new(
    author: params[:author],
    content: params[:content],
    url: params[:url]
  )
  if @message.save
    redirect '/messages'
  else
    erb :'messages/new'
  end
end
