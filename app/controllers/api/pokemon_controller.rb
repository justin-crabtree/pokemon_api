class Api::PokemonController < ApplicationController

  def index
    @pokemon = HTTP.get("https://pokeapi.co/api/v2/pokemon/#{params[:name]}").parse

    render 'index.json.jb'
  end

end
