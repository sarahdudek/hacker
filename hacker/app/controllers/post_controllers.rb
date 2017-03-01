get '/posts' do
	@posts = Post.all 

	erb :'/posts/index'
end

get '/posts/new' do
	erb :'/posts/new'
end

post '/posts' do
  @post = Post.new(title: params[:title], body: params[:body], author_id: current_user.id)

  if logged_in?
  	@post.save
  	redirect "/posts/#(@post.id}"
  end

  redirect "/posts/#{post.id}"
end

get '/posts/:id' do
  @post = Post.find(params[:id])

  erb :'/posts/show'
end

delete '/posts/:id' do
  @post = Post.find(params[:id])
  @post.destroy

  redirect "/posts"
end