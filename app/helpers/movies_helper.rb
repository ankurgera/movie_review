module MoviesHelper
  ALL = 'All'

  def categories
    Movie.all.map(&:category).sort.uniq.insert(0, ALL)
  end

  def selected_category(movie)
    movie.nil? ? ALL : movie[:category]
  end
end
