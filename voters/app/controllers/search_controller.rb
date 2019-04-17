class SearchController < ApplicationController

def index
@search = Search.new

end

  def create
@search = Search.create(search_parms)
redirect_to @search
  end

  def show
@search = Search.search_members(search_parms)
  end


private
def search_parms
    params.require(:search).permit(:address, :phno,:email,:postal_code,:caption_name,:poll_no)
end

end
