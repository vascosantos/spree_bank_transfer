module Spree
  module Admin
    class BanksController < ResourceController
      def index
        @search = Spree::Bank.ransack(params[:q])
        @banks = @search.result.page(params[:page])
        # @banks = Spree::Bank.page(params[:page])
      end

      def toggle_activation
        @success = @bank.toggle!(:active)
      end
    end
  end
end