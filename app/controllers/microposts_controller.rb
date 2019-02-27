class MicropostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :edit, :destroy]
  before_action :correct_user, only: :destroy 
  
  def index
    @microposts = Micropost.all
  end 
  
  def new
    @micropost = current_user.microposts.build if logged_in?
  end
  
  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "投稿が完了しました"
      redirect_to @micropost
    else
      render 'new'
    end 
  end 

  def edit
    @micropost = Micropost.find(params[:id])
  end
  
  def update
    @microposts = Micropost.find(params[:id])
    if @microposts.update_attributes(micropost_params)
      flash[:success] = "編集が完了しました"
      redirect_to @microposts 
    else 
      render 'edit'
    end 
  end 

  def show
     @microposts = Micropost.find(params[:id])
  end

  def destroy
    @micropost.destroy
    flash[:success] = "投稿を削除しました"
    redirect_to  root_url
  end 

  

  
  private
  
  def micropost_params
    params.require(:micropost).permit(:name,:recommendation,:store,:time, :holiday,:plase,:user_id,:category_id,:picture)
  end 
  
  def correct_user
    @micropost = current_user.microposts.find_by(id: params[:id])
    redirect_to root_url if @micropost.nil?
  end 
end
