require 'spec_helper'

module PrefectureJp
  RSpec.describe Prefecture do

    describe '.all' do
      it "parses a valid prefectures.json file returns an array of ruby hashes" do
        prefectures = PrefectureJp::Prefecture.all
        expect(prefectures).to be_kind_of(Array)
        expect(prefectures).not_to be_empty
        expect(prefectures.first).to be_kind_of(Hash)
      end
    end

    describe '.hokkaido' do
      it "returns an array of matching prefecture, Hokkaido only" do
        hokkaido = PrefectureJp::Prefecture.hokkaido
        expect(hokkaido).to be_kind_of(Array)
        expect(hokkaido).not_to be_empty
        expect(hokkaido.first).to be_kind_of(Hash)
      end
    end

    describe '.tohoku' do
      it "returns an array of matching prefectures, Tohoku only" do
        tohoku = PrefectureJp::Prefecture.tohoku
        expect(tohoku).to be_kind_of(Array)
        expect(tohoku).not_to be_empty
        expect(tohoku.first).to be_kind_of(Hash)
      end
    end

    describe '.kanto' do
      it "returns an array of matching prefectures, Kanto only" do
        kanto = PrefectureJp::Prefecture.kanto
        expect(kanto).to be_kind_of(Array)
        expect(kanto).not_to be_empty
        expect(kanto.first).to be_kind_of(Hash)
      end
    end

    describe '.chubu' do
      it "returns an array of matching prefectures, Chubu only" do
        chubu = PrefectureJp::Prefecture.chubu
        expect(chubu).to be_kind_of(Array)
        expect(chubu).not_to be_empty
        expect(chubu.first).to be_kind_of(Hash)
      end
    end

    describe '.kansai' do
      it "returns an array of matching prefectures, Kansai only" do
        kansai = PrefectureJp::Prefecture.kansai
        expect(kansai).to be_kind_of(Array)
        expect(kansai).not_to be_empty
        expect(kansai.first).to be_kind_of(Hash)
      end
    end

    describe '.chugoku' do
      it "returns an array of matching prefectures, Chugoku only" do
        chugoku = PrefectureJp::Prefecture.chugoku
        expect(chugoku).to be_kind_of(Array)
        expect(chugoku).not_to be_empty
        expect(chugoku.first).to be_kind_of(Hash)
      end
    end

    describe '.shikoku' do
      it "returns an array of matching prefectures, Shikoku only" do
        shikoku = PrefectureJp::Prefecture.shikoku
        expect(shikoku).to be_kind_of(Array)
        expect(shikoku).not_to be_empty
        expect(shikoku.first).to be_kind_of(Hash)
      end
    end

    describe '.kyushu' do
      it "returns an array of matching prefectures, Kyushu only" do
        kyushu = PrefectureJp::Prefecture.kyushu
        expect(kyushu).to be_kind_of(Array)
        expect(kyushu).not_to be_empty
        expect(kyushu.first).to be_kind_of(Hash)
      end
    end

    describe '.find_by_prefecture_code' do
      it "returns a prefecture whose prefecture code matches the paramater" do
        tokyo = PrefectureJp::Prefecture.find_by_prefecture_code(13)
        expect(tokyo).to be_kind_of(Hash)
      end
    end

    describe '.find_by_prefecture_name' do
      it "returns a prefecture whose japanese prefecture name matches the paramater" do
        tokyo = PrefectureJp::Prefecture.find_by_prefecture_name("東京都")
        expect(tokyo).to be_kind_of(Hash)
      end
    end

    describe '.find_by_prefecture_name_en' do
      it "returns a prefecture whose english prefecture name matches the paramater" do
        tokyo = PrefectureJp::Prefecture.find_by_prefecture_name_en("Tokyo")
        expect(tokyo).to be_kind_of(Hash)
      end
    end

  end
end
