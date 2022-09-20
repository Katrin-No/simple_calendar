class HabitController < ApplicationController
  
  def index
    @habits = Habit.all.order(name: :asc)
    @habit = Habit.new
  end

  def export
  end

  def answer
    @habit_confirmation = HabitConfirmation.new(habit_confirmation_params)
    @habit_confirmation.confirmation_date = Date.today
    @habit_confirmation.save!
    redirect_to habits_path
  end

  def create
    @habit = Habit.new(habit_params)

    if @habit.save
      redirect_to habits_path, notice: "#{@habit.name} successfuly created"
    else
      render "new", alert: "#{@habit.name} already exist"
    end
  end

  def edit
    @habit = Habit.find(params[:id])
  end

  def update
    @habit = Habit.find(params[:id])
    if @habit.update(habit_params)
      redirect_to habits_path, notice: 'Habit succesfully edited'
    else
      render :edit
    end
  end

  def delete
    @habit = Habit.find(params[:id])
    @habit.destroy
    redirect_to habits_path, notice: "#{@habit.name} deleted"
  end

  private

  def habit_params
    params.require(:habit).permit(:name)
  end

  def habit_confirmation_params
    params.require(:habit_confirmation_answer).permit(:habit_id, :answer)
  end
end
