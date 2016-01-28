class SubjectController < ApplicationController
  def index
    @subjects = Subject.all
  end
  def create
    @id = params[:id]
  end
  def destroy
    @id = params[:id]
  end
end
