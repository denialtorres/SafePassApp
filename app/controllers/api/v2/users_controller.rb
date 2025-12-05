class Api::V2::UsersController < Api::V2::ApiBaseController
  def show
    render json: {}, status: :ok
  end

  private

  def user_params
    params.permit(:id)
  end
end
