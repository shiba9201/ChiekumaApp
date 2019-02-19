class MicropostsController < ApplicationController
  def new
    @micropost = current_user.microposts.build if logged_in?
  end
  
  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "投稿が完了しました"
      redirect_to root_url
    else
      render 'new'
    end 
  end 

  def edit
  end

  def show
     @microposts = Micropost.find(params[:id])
  end

  def index
  end
  
  private
  
  def micropost_params
    params.require(:micropost).permit(:picture,:name,:recommendation,:store,:time, :holiday,:plase)
  end 
end
