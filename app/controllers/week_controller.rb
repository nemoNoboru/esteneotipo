class WeekController < ApplicationController
  def create
    last_week = Week.first.number + 1
    Week.create :number => last_week
    redirect_to "/note" , notice: "week #{last_week} was successfully created"
  end
end
