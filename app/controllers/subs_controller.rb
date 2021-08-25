class SubsController < ApplicationController
  before_action :set_sub, only:[:show,:update,:edit,:destroy]
  
  def index
    # with rails mvc rails will look for the fill named index.html.erb
    # subs
    # get all subs
    subs = Sub.all # interacting with model
    render component:"Subs", props:{subs:subs} #handing subs to react compon
  end

  def gettop5
    subs = Sub.all.limit(5)
  end

  def show
    # sub = Sub.find(params[:id])
    render component: "Sub", props:{sub:@sub}
  end


  def new
    # render "SubsNew", props:{sub:@sub} # be the form
   render "SubsNew"
  end

  def create
    # render "SubsNew" # be the form
    @sub = Sub.new(sub_params)
    if(@sub.save)
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    # sub = Sub.find(params[:id])
  end
  def update
    # @sub = Sub.find(params[:id])
  end
  def destroy
    @sub.destroy
    redirect_to root_path
  end

  private

  def sub_params
    params.require(:sub).permit(:name)
  end
  
  def set_sub
    @sub = Sub.find(params[:id])
  end
end
