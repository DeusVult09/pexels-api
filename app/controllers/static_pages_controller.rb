class StaticPagesController < ApplicationController
  def home
    @collection_id = params[:collection_id]

    if @collection_id.blank?
      flash.now[:alert] = "Please, enter your collection ID"
    else
      @photos = PexelsClient.new.my_photos(@collection_id) 
    end
  end
end
