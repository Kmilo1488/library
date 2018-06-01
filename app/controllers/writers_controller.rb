class WritersController < ApplicationController
  def index
    @writers = Writer.all
  end

  def show
    @writer = Writer.find(params[:id])
  end

  def new
    @writer = Writer.new
  end

  def create
    @writer = Writer.new(writer_params)
    if @writer.save
      redirect_to writers_path
    else
      render 'new'
    end
  end

  def edit
    @writer = Writer.find(params[:id])
  end

  def update
    @writer = Writer.find(params[:id])
    if @writer.update(writer_params)
      redirect_to writer_path
    else
      render :edit
    end
  end

  def destroy
    @writer = Writer.find(params[:id])
    @writer.destroy
    redirect_to writers_path
  end

  private

    def writer_params
      params.require(:writer).permit(:name, :birth, :place)
    end

end
