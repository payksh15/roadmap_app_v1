class AudiosController < ApplicationController
  before_action :build_resource, only: [:new, :create]
  before_action :find_resource!, only: [:show, :edit, :update, :destroy]

  def index
  	@audios = Audio.all
  end

  def show
  end

  def new
  end

  def create
    if @audio.save
        render :show
    else
        render :new
    end
  end

  def edit
  end

  def update
    if @audio.update(audio_params)
        render :show
    else
        render :edit
    end
  end

  def destroy
  end

  private
    def audio_params
      params.require(:audio).permit(:name, :bit_depth, :genre_id) rescue {}
    end

    def build_resource
      @audio = Audio.new(audio_params)
    end

    def find_resource!
      @audio = Audio.find(params[:id])
    end
end
