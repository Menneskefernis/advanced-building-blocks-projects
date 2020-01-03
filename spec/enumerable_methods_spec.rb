require './enumerable_methods'

describe Enumerable do
  array = [1, 8, 33, 740, 5, 26]
  describe "#my_each" do
    it "returns the original array" do      
      expect(array.my_each { |number| number }).to eql(array)
    end
  end

  #describe "#my_each_with_index" do
  #  it "returns the original array and exposes the iterator" do
  #    expect(array.my_each_with_index { |number, i| return i }).to eql([0, 1, 2, 3, 4, 5])
  #  end
  #end

  describe "#my_select" do
    it "returns selected elements from an array" do      
      expect(array.my_select { |number| number > 10 }).to eql([33, 740, 26])
    end
  end

  describe "#my_all?" do
    it "returns false if all elements don't match the condition" do      
      expect(array.my_all? { |number| number < 100 }).to eql(false)
    end

    it "returns true if all elements match the condition" do      
      expect(array.my_all? { |number| number < 741 }).to eql(true)
    end
  end

  describe "#my_any?" do
    it "returns false if no elements match the condition" do      
      expect(array.my_any? { |number| number > 900 }).to eql(false)
    end
  
    it "returns true if at least one element matches the condition" do      
      expect(array.my_any? { |number| number > 100 }).to eql(true)
    end
  end

  describe "#my_none" do
    it "returns false if at least one element meets the condition" do      
      expect(array.my_none? { |number| number > 100 }).to eql(false)
    end

    it "returns true if no elements meet the condition" do      
        expect(array.my_none? { |number| number > 740 }).to eql(true)
      end
  end

  describe "#my_none" do
    it "returns number of elements that meet a condition" do      
      expect(array.my_count { |number| number % 2 == 0 }).to eql(3)
    end
  end

  describe "#my_map" do
    it "returns a modified array" do      
      expect(array.my_map { |number| number * 2 }).to eql([2, 16, 66, 1480, 10, 52])
    end
  end
end