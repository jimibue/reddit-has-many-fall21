class CommentsController < ApplicationController
  before_action :set_topic
  before_action :set_comment, only: [:show,:edit,:update, :destroy]

  def index
    render component: "Topic", props: {topic:@topic, comments:@topic.comments}
  end

  def new
    render component: "NewComment", props: {topic:@topic}
  end

  def create
    is_flagged = params[:comment][:flagged] ? true : false
    @topic.comments.create(body:params[:comment][:body], flagged:is_flagged)
    redirect_to sub_topic_path( @topic.sub.id,  @topic.id)
  end

  private
  
  def set_topic
    @topic = Topic.find(params[:topic_id])
  end
  def set_comment
    @comment =  @topic.comments.find(params[:id])
  end
end
