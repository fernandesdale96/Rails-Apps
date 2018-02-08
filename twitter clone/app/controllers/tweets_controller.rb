class TweetsController < ApplicationController
  def index
    @tweets = Tweet.order(created_at: :asc).reverse
    render 'tweets/index'
  end


  def index_by_user
    @user = User.find_by(username: params[:username])
    if(@user)
      @tweets = @user.tweets
      render 'tweets/index_by_user'
    end
  end

  def create
    token = cookies.signed[:twitter_session_token]
    session = Session.find_by(token: token)
    @tweet = Tweet.new(message: params[:tweet][:message], user_id: session.user_id)
    if(@tweet.save)
      render 'tweets/create'
    else
      render json: {
        success: false
      }
    end
  end

  def destroy
    token = cookies.signed[:twitter_session_token]
    session = Session.find_by(token: token)
    @tweet = Tweet.find_by(id: params[:id])
    if(session and session.user_id == @tweet.user_id)
      if(@tweet.destroy)
        render json: {
          success: true
        }
      end
    else
      render json: {
        success: false
      }
    end
  end
end
