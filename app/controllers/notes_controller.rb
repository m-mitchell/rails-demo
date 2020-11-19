class NotesController < ApplicationController
  def new
    @note = Note.new()
    @note.title = 'New Note'
    @note.body = 'sample text'

    @board = Board.find(params[:board_id])

    @note.board = @board
    @note.save

    redirect_to("/boards/#{@board.id}")
  end
end
