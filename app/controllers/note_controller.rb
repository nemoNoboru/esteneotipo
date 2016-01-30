class NoteController < ApplicationController

  def index
    @weeks = Week.all
    @subjects = Subject.all
    @notes = Note.all
  end

end
