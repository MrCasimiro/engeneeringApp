class ExercisesController < ApplicationController


	def show
		@coach = Coach.find(params[:coach_id])
		@exercise = Exercise.new
		@allexercise = Exercise.all
	end

	def create
		@coach = Coach.find(params[:coach_id])
		@exercise = Exercise.new(exercise_params)
		if @exercise.save
			flash[:success] = "Exercício adicionado com sucesso"
		end
	end

	private
	def exercise_params
		params.require(:exercise).permit(:name_exercise)
	end
end
