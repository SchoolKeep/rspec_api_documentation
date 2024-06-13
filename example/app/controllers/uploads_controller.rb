class UploadsController < ApplicationController
  http_basic_authenticate_with(
    name: ENV.fetch("HTTP_BASIC_USER", "user"),
    password: ENV.fetch("HTTP_BASIC_PASSWORD", "password")
  )

  def create
    head 201
  end
end
