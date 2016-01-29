class SubjectController < ApplicationController
  def index
    @subjects = Subject.all
  end
  def create
    name = params[:name]
    Subject.create :name => name
    redirect_to "/subject" , notice: "#{name} was successfully created"
  end
  def destroy
    id = params[:id]
    subject = Subject.find(id)
    name = subject.name
    subject.destroy
    redirect_to "/subject" , notice: "#{name} was successfully deleted"
  end
end
