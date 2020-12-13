class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @items = Item.all
    @hotItems = Item.order("created_at").limit(3)
    @hotItemOne = @hotItems[0]
    @hotItemTwo = @hotItems[1]
    @hotItemThree = @hotItems[2]

  end

end
