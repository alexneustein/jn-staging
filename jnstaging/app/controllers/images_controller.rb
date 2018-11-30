class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :update, :destroy ]

  # GET /images
  def index
    @images = Image.paginate(:page => params[:page])
    render json: {
      images: @images,
      page: @images.current_page,
      pages: @images.total_pages,
      total: @images.total_entries
    }
  end

  def indextop
    @images = Image.top_images(6)
    render json: @images
  end

  def show
    render json: @image, serializer: ImageSerializer
  end

  # def show
  #   render json: @image, serializer: ImageCommentsSerializer
  # end
  # POST /images
  def create
    @image = Image.find_or_create_by(image_params)

    if @image.save
      render json: @image, status: :created, location: @image
    else
      render json: @image.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /images/1
  def update
    if @image.update(image_params)
      render json: @image
    else
      render json: @image.errors, status: :unprocessable_entity
    end
  end

  # DELETE /images/1
  def destroy
    @image.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def image_params
      params.require(:image).permit!
    end


end
