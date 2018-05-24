module Blog
  module Routes
    class Posts < Base
      error Models::NotFound do
        error 404
      end

      get '/apple-touch-icon*' do
        404
      end

      get '/:id' do
        @post = Post.find(params[:id])
        erb :post
      end

      get '/' do
        @posts = Post.all
        erb :index
      end
    end
  end
end
