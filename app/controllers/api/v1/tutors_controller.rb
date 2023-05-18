class Api::V1::TutorsController < ApplicationController
  def index
    @tutors = Tutor.all
    render json: TutorSerializer.new(@tutors).serializable_hash[:data]
  end

  def create
    tutor = Tutor.new(tutor_params)
    if tutor.save
      render json: TutorSerializer.new(tutor).serializable_hash[:data] 
    else
      render json: { error: tutor.errors.messages}, status: 422
    end
  end

  def destroy
    tutor = Tutor.find_by(id: params[:id])
    # raise tutor.inspect
    if tutor.destroy
      # head :no_content
      render json: {data: 'success'}, status: 200
    else
      render json: { error: tutor.error.messages }
    end
  end

  private

  def tutor_params
    params.require(:tutor).permit(:name, :description, :image, :price, :experience, :subject, :lang )
  end

end