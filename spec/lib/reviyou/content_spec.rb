require "spec_helper"

describe Reviyou::Content do
  describe "#replace" do
    it "works" do
      comment1 = OpenStruct.new(id: 1, start_offset: 0, length: 1, text: "ahojacek")
      comment2 = OpenStruct.new(id: 2, start_offset: 3, length: 5, text: "lamicky")

      result = described_class.new("hello world").replace([comment1, comment2])

      result.should eql "[1|h]el[2|lo wo]rld"
    end

    it "works with a block" do
      comment1 = OpenStruct.new(id: 1, start_offset: 0, length: 1, text: "ahojacek")
      comment2 = OpenStruct.new(id: 2, start_offset: 3, length: 5, text: "lamicky")

      result = described_class.new("hello world").replace([comment1, comment2]) do |c, s|
        "<span title=\"#{c.text}\">#{s}</span>"
      end

      result.should eql '<span title="ahojacek">h</span>el<span title="lamicky">lo wo</span>rld'
    end
  end
end
