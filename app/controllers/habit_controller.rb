class HabitController < ApplicationController
  
  def index
    @habits = Habit.all.order(title: :asc)
    @habit = Habit.new
    @habit_confirmation = HabitConfirmation.new
  end

  def new
    @habit = Habit.new
  end

  def create
    @habit = Habit.new(habit_params)

    if @habit.save
      # redirect_to , notice: "#{@habit.name} successfuly created."
    else
      render "new", alert: "#{@habit.name} already exist"
    end
  end

  def edit
  end

  # def update
  #   respond_to do |format|
  #     if @habit.update(habit_params)
  #       format.html { redirect_to @habit, notice: 'Habit succesfully edited' }
  #     else
  #       format.html { render :edit }
  #     end
  #   end
  # end

  # def delete
  #   habit = Habit.find(params[:id])
  #   habit.destroy
  #   redirect_to _path, notice: "#{habit.name} deleted."
  # end
end
