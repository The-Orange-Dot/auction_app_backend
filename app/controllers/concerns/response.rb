module Response
  def json_response(object, response = 200)
    render json: object, status: status
  end
end
