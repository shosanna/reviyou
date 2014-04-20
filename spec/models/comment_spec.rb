require "spec_helper"

describe Comment do
  it "works" do
    comment1 = OpenStruct.new(id: 1, start_offset: 0, end_offset: 1, text: "ahojacek")
    comment2 = OpenStruct.new(id: 2, start_offset: 3, end_offset: 5, text: "lamicky")

    result = subject.replace("hello world", [comment1, comment2])

    result.should == "[[[1|h]]]el[[[2|lo wo]]]rld"
  end
end
