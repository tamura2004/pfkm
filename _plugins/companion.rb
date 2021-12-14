module Jekyll
  class Companion < Generator
    safe true

    def generate(site)
      page = site.pages.detect { |page| page.name == "companion.html" }

      page.data["companions"] = []

      10.times do
        a = %w(あ か さ た な ぱ ま や ら わ)
        i = %w(い き し ち に ぴ み り)
        name = a.sample + i.sample * 2 + "ー"

        page.data["companions"] << {
          name: name,
          age: rand(1000),
          "身長" => rand(1000),
          b: rand(1000),
          c: rand(1000),
          d: rand(1000),
          e: rand(1000),
          f: rand(1000),
        }
      end
    end
  end
end
