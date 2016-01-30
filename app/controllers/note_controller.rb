class NoteController < ApplicationController

  def index
    @weeks = Week.all
    @subjects = Subject.all
    @notes = Note.all
  end

  def show
    id = params[:id]
    @note = Note.find id
  end

end
