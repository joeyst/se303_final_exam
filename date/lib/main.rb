# Refactor.
# Hint: Don't change the constructor parameter list for this
#       refactoring.
# Hint: Let the existing code use the new code.

class Crop
  attr_reader :name, :height
  def initialize(name, height)
    @name = name
    @height = height
  end
end

class Plot
  attr_reader :crops, :name
  def initialize(crops, name)
    @crops = crops
    @name = name
  end

  def size
    crops.length
  end

  def total_height
    crops.reduce(0) { |total, crop| total += crop.height }
  end
end

class Farm

  attr_reader :plots

  def initialize
    corn = Crop.new("Sugar Baby", 3)
    radish_1 = Crop.new("Red Boomer", 1)
    radish_2 = Crop.new("Plump Pucker", 1)
    cucumber = Crop.new("Green Lady", 2)
    tomato = Crop.new("Dark Plump", 2)
    beet_1 = Crop.new("Rainbow", 1)
    beet_2 = Crop.new("Deep Darkness", 1)
    plot_a = Plot.new([corn, radish_1, radish_2], "Plot A")
    plot_b = Plot.new([cucumber, tomato, beet_1, beet_2], "Plot B")
    @plots = [plot_a, plot_b]
  end

  def number_of_plots
    plots.size
  end

  def total_number_of_plants
    plots.reduce(0) { |total, plot| total += plot.size }
  end

  def total_plant_heights
    plots.reduce(0) { |total, plot| total += plot.total_height}
  end

end