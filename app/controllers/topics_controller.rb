class TopicsController < ApplicationController
  before_action :set_sub
  before_action :set_topic, only: [:show,:edit, :update]

  def index
    render component: "Topics", props:{sub: @sub, topics: @sub.topics}
  end

  def new
    render component: "NewTopic", props:{sub:@sub, x:1, t:'this is t'}
  end

  def edit
    render component: "EditTopic", props:{sub:@sub, topic:@topic}
  end

  def create
   @topic = @sub.topics.new(topic_params)
   if(@topic.save)
    redirect_to sub_topics_path(@sub.id)
   else
    # todo handle bad input
   end
  end

  def update
    if(@topic.update(topic_params))
      redirect_to sub_topics_path(@sub.id)
    else
         # todo handle bad input
    end
  end

  def show
    @topic = @sub.topics.find(params[:id])
    render json: @topic
  end
 
  private

  def topic_params
    params.require(:topic).permit(:name, :body)
  end
  
  
  def set_sub
    @sub = Sub.find(params[:sub_id])
  end

  def set_topic
    @topic = @sub.topics.find(params[:id])
  end
end
