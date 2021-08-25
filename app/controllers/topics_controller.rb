class TopicsController < ApplicationController
  before_action :set_sub
  before_action :set_topic, only: [:show]

  def index
    render component: "Topics", props:{sub: @sub, topics: @sub.topics}
  end

  def show
    @topic = @sub.topics.find(params[:id])
    render json: @topic
  end
 
  private
  
  def set_sub
    @sub = Sub.find(params[:sub_id])
  end

  def set_topic
    @topic = @sub.topics.find(params[:id])
  end
end
