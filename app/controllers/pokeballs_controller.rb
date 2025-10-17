class PokeballsController < ApplicationController

  def create
    @pokemon = Pokemon.find(params[:pokemon_id])
    @pokeball = Pokeball.new(pokeball_params)
    @pokeball.pokemon = @pokemon
    if @pokeball.save
      redirect_to trainer_path(@pokeball.trainer)
    else
      render "pokemons/show", status: :unprocessable_entity
      # render pokemon_path(@pokemon), status: :unprocessable_entity #ça marche aussi
    end
  end

  private
  def pokeball_params
    params.require(:pokeball).permit(:trainer_id, :location, :caught_on)
  end
end
