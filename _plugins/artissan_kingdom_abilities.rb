module Jekyll
  class ArtisanKingdomAbility < Generator
    safe true

    def generate(site)
      page = site.pages.detect { |page| page.name == "artisan.html" }
      kingdom_ability_names = site.data["kingdom_abilities"]
      rows = []

      site.data["artisans"].each do |artisan|
        row = [artisan["職人"]]
        kingdom_ability_names.each do |kingdom_ability|
          case kingdom_ability
          when artisan["能力1"]
            row << artisan["ランク1"]
          when artisan["能力2"]
            row << artisan["ランク2"]
          else
            row << "－"
          end
        end
        rows << row
      end
      page.data["artisan_kingdom_abilities"] = rows
    end
  end
end
