class Api::V1::BasketController < ApplicationController
  def show
    # TODO Show basket (checkout for frontend)
    render 'show.json.jbuilder', status: :ok
  end

  def update
    # TODO Create or update basket
    render 'update.json.jbuilder', status: :ok
  end

  def add
    # TODO Add one product or increment
    render 'show.json.jbuilder', status: :ok
  end

  def remove
    # TODO Remove one product or decrement
    render 'show.json.jbuilder', status: :ok
  end
end
