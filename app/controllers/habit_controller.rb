class HabitController < ApplicationController
  
  def index
    @habits = Habit.all.order(title: :asc)
    @habit = Habit.new
  end

  def answer
    @habit_confirmation = HabitConfirmation.new(habit_confirmation_params).save!
    redirect_to habits_path
  end

  def create
    @habit = Habit.new(habit_params)

    if @habit.save
      redirect_to habits_path, notice: "#{@habit.name} successfuly created."
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

  private

  def habit_params
    params.require(:habit).permit(:name)
  end

  def habit_confirmation_params
    params.require(:habit_confirmation_answer).permit(:habit_id, :answer)
  end
end
