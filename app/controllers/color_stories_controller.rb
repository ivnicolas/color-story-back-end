class ColorStoriesController < ApplicationController
  before_action :set_color_story, only: [:show, :update, :destroy]

  # GET /color_stories
  def index
    @color_stories = ColorStory.all
    
    # byebug

    render json: @color_stories
  end

  # GET /color_stories/1
  def show
    render json: @color_story
  end

  # POST /color_stories
  def create

    @color_story = ColorStory.new(color_story_params)
   
    @user =  User.find_or_create_by(user_name: params[:user])
    @color_story.user_id = @user.id
    
    if @color_story.save
      render json: @color_story, status: :created, location: @color_story
    else
      render json: @color_story.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /color_stories/1
  def update
    if @color_story.update(color_story_params)
      render json: @color_story
    else
      render json: @color_story.errors, status: :unprocessable_entity
    end
  end

  # DELETE /color_stories/1
  def destroy
    @color_story.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_color_story
      @color_story = ColorStory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def color_story_params
      params.require(:color_story).permit(:title, :description, :user_id, :color_code, :date)
    end
end
