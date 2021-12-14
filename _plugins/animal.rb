module Jekyll
  class Animal < Generator
    safe true

    def generate(site)
      page = site.pages.detect { |page| page.name == "animal.html" }

      animals = %w(dog cat rat)
      colors = %w(black white silver red blue yellow green purple)

      page.data["animals"] = animals
      page.data["colors"] = colors

      animal_colors = {
        "dog" => %w(black white),
        "cat" => %w(white yellow),
        "rat" => %w(green blue),
      }

      page.data["animal_color"] = []
      colors.each do |color|
        row = [color]
        animals.each do |animal|
          if animal_colors[animal].include?(color)
            row << "○"
          else
            row << "−"
          end
        end
        page.data["animal_color"] << row
      end
    end
  end
end
