class CollectionsController < ApplicationController
  before_action :set_collection_object

  def index
    @collections = Collection.all
  end

  def create
  end

  def update
    @collection.update collection_params
    redirect_to action: :show, id: @collection.id
  end

  def show
    @collection.uploaded_files.build
  end

  private
  def set_collection_object
    if params[:id]
      @collection = Collection.find params[:id]
    else
      @collecions = Collection.all
    end
  end

  def collection_params
    params.require(:collection).permit(:name, :description,
      uploaded_files_attributes: [:caption, :attach_file, :_destroy])
  end
end
