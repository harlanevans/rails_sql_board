class TaksController < ApplicationController
  before_action :set_list
  before_action :set_tak, only: [:show, :edit, :update, :destroy]
  
  def index
    @taks = @list.taks.all
  end

  def show
  end

  def new
    @tak = @list.taks.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

      private

      def set_list
        @list = List.find(params[:list_id])
      end

      def set_tak
        @tak = Tak.find(params[:id])
      end

      def tak_params
        params.require(:tak).permit(:name, :due_date)
      end

end
