class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @items = Item.all
    @fuck = @items.length
    if @items.length > 3
      @hotItems = Item.order("created_at").limit(3)
      @hotItemOne = @hotItems[0]
      @hotItemTwo = @hotItems[1]
      @hotItemThree = @hotItems[2]
    else
      @haveImages = FALSE
    end
  end

  def profile
    @profile = User.find_by_username params[:username]
    @items = @profile.items
  end


  def search
    if params[:search].blank?
      redirect_to(root_path, alert: "пустое поле") and return
    else
      @parameter = params[:search].downcase
      @results = Item.all.where("lower(title) LIKE :search", search: "%#{@parameter}%")
    end
  end



end
