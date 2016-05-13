require 'json'

module PrefectureJp
  class Prefecture

    PREFECTURES = File.dirname(__FILE__) + '/../../data/prefectures.json'

    def self.all
      JSON.parse(File.read(PREFECTURES), :symbolize_names => true)
    end

    def self.hokkaido
      all.select{ |prefecture| prefecture[:region_en] == 'Hokkaido' }
    end

    def self.tohoku
      all.select{ |prefecture| prefecture[:region_en] == 'Tohoku' }
    end

    def self.kanto
      all.select{ |prefecture| prefecture[:region_en] == 'Kanto' }
    end

    def self.chubu
      all.select{ |prefecture| prefecture[:region_en] == 'Chubu' }
    end

    def self.kansai
      all.select{ |prefecture| prefecture[:region_en] == 'Kansai' }
    end

    def self.chugoku
      all.select{ |prefecture| prefecture[:region_en] == 'Chugoku' }
    end

    def self.shikoku
      all.select{ |prefecture| prefecture[:region_en] == 'Shikoku' }
    end

    def self.kyushu
      all.select{ |prefecture| prefecture[:region_en] == 'Kyushu' }
    end

    def self.find_by_prefecture_code(code)
      all.find{ |prefecture| prefecture[:code] == code }
    end

    def self.find_by_prefecture_name(name)
      all.find{ |prefecture| prefecture[:name] == name }
    end

    def self.find_by_prefecture_name_en(name_en)
      all.find{ |prefecture| prefecture[:name_en] == name_en.capitalize }
    end

  end
end
