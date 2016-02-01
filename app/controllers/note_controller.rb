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

  def create
    @note = Note.new
    @note.week_id = params[:week]
    @note.subject_id = params[:subject]
    @note.title = 'title'
    @note.content = 'test'
    @note.save
    redirect_to "/note/#{@note.id}/edit" , notice: "#{@note.title} was successfully created"
  end

  def destroy
    note = Note.find(params[:id])
    note.destroy
    redirect_to "/note" , notice: "#{note.title} was successfully deleted"
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    note = Note.find(params[:id])
    note.title = params[:title]
    note.content = params[:ckeditor]
    note.save
    redirect_to "/note/#{note.id}/edit" , notice: "#{note.title} was successfully saved"
  end
end
