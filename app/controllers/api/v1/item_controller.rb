class Api::V1::ItemController < ApiController
    before_action :set_list

    def index
        @items = @list.items
    end

    def create
        item_params = params.require(:item).permit(:name)
        @list.items.create(item_params)
        render status: :created
    end

    def show
        @item = Item.find(params[:id])
    end

    private
    def set_list
        @list = List.find(params[:list_id])
    end
end
