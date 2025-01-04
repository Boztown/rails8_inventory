class ItemsController < ApplicationController
  def index
    @items = Item.where(account_id: Current.user.current_account.id)
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.account = Current.user.current_account
    if @item.save
      redirect_to @item
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    puts Current.user.inspect
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to @item
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def item_params
      params.expect(item: [ :name ])
    end
end
