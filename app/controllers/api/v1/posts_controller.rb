class Api::V1::PostsController < ApplicationController

    before_action :find_post #, only: [:update]

def index
	@posts = Post.all.order(:created_at)
	render json: @posts, status: 200
end

def create
    @post = Post.create(post_params)
    render json: @post, status: 201
  end

def destroy
    post = Post.find(params[:id])
    if post.destroy
      render json: {postId: post.id}, status: 200
    end
  end

def update
    @post = Post.find(params[:id])

if @post.update(post_params)
	render json: @post, status: 200

	 @post.update(post_params)
if @post.save
		render json: @post, status: :accepted
else
		render json: { errors: @post.errors.full_messages }, status: :unprocessible_entity
			end
		end
	end

private
    def post_params
      params.require(:post).permit(:type, :name, :duration, :distance)
    end

		def post_params
				params.permit(:title, :content)
		end
		
		def find_post
			@post = Post.find(params[:id])
		end

end