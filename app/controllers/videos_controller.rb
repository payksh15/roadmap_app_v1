class VideosController < ApplicationController
  before_action :build_resource, only: [:new, :create]
  before_action :find_resource!, only: [:show, :edit, :update, :destroy]

  def index
  	@videos = Video.all
  end

  def show
  end

  def new
  end

  def create
    if @video.save
        render :show
    else
        render :new
    end
  end

  def edit
  end

  def update
    if @video.update(video_params)
        render :show
    else
        render :edit
    end
  end

  def destroy
  end

  private
    def video_params
      params.require(:video).permit(:name, :bit_depth, :genre_id) rescue {}
    end

    def build_resource
      @video = Video.new(video_params)
    end

    def find_resource!
      @video = Video.find(params[:id])
    end
end

