class StoriesController < ApplicationController
  def index
    @stories = Story.all.order(created_at: :desc)
  end

  def show
    @story = Story.find(params[:id])
  end

  def new
    @story = Story.new(title: "Story Title", story: "")

    if @story.save
      redirect_to @story, notice: 'Story was successfully created.'
    else
      render :new
    end
  end

  def create
    @story = Story.new(story_params)
    if @story.save
      redirect_to @story, notice: 'Story was successfully created.'
    else
      render :new
    end
  end

  def add_word
    @story = Story.find(params[:id])
    word = params[:word]
    @story.story += " #{word}"
    if @story.save
      redirect_to @story, notice: 'Word added successfully.'
    else
      redirect_to @story, alert: 'Failed to add word.'
    end
  end

  private

  def story_params
    params.require(:story).permit(:title, :story)
  end
end
