class BoardsController < ApplicationController
  def index
  end
  def show
  end
  def update
  end
  def new
    @board = Board.new()
    @board.title = 'New Board'
    @board.save
    redirect_to("/boards/#{@board.id}")
  end
  def create

  end
end
