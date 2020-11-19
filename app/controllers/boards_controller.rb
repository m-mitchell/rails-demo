class BoardsController < ApplicationController
  def index
  end
  def show
    @board = Board.find(params[:id])
  end
  def update
  end
  def new
    @note = Note.new()
    @note.title = 'New Note'
    @note.body = 'sample text'

    @board = Board.new()
    @board.title = 'New Board'
    @board.save

    @note.board = @board
    @note.save

    redirect_to("/boards/#{@board.id}")
  end
end
