module Jekyll
  class Companion < Generator
    safe true

    def generate(site)
      page = site.pages.detect { |page| page.name == "companion.html" }

      companion_names = site.data["companions"].map { |companion| companion["名前"] }
      advisor_names = site.data["advisors"].map { |advisor| advisor["名前"] }

      page.data["companion_advisors"] = []

      companion_names.each do |companion|
        row = [companion]
        site.data["advisor_companions"].each do |advisor, companions|
          if companions.include?(companion)
            row << "〇"
          else
            row << "－"
          end
        end
        page.data["companion_advisors"] << row
      end
    end
  end
end
