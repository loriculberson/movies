class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end  

  def show
    @movie = Movie.find(params[:id])
  end          

  def edit
    @movie = Movie.find(params[:id])
  end  

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    redirect_to show

  end 


  private
  def movie_params
    params.require(:movie).
            permit(:title, :description,:rating, :total_gross)
  end
end
