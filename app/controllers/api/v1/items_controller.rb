module Api
  module V1
    class ItemsController < Api::V1::BaseController
      def show
        @item = Item.find(params[:id])
      end
    end
  end
end
