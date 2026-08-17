class StaticPagesController < ApplicationController
  def home
    @collection_id = params[:collection_id]

    if @collection_id.present?
      @collection = PexelsClient.new.my_photos(@collection_id) 
    else
      flash.now[:alert] = "Please, enter your collection ID"
    end
  end
end
