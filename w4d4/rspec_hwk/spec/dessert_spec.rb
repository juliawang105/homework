require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:cake) { Dessert.new( "cake", 20, chef)}

  describe "#initialize" do
    it "sets a type" do 
      expect(cake.type).to eq("cake")
    end

    it "sets a quantity" do 
      expect(cake.quantity). to eq(20)
    end


    it "starts ingredients as an empty array" do 
      expect(cake.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do 
      expect { Dessert.new("pie", "sugar", chef) to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
      expect { cake.add_ingredient("chocolate") }.to include("chocolate")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do 
      ingredient = ["sugar", "eggs", "salt", "flour"]
      ingredient.each { |ele| cake.ingredients << ele }
      expect(cake.ingredients).to eq(ingredient)
      cake.mix! 
      expect(cake.ingredients).not_to eq(ingredient)
      expect(cake.ingredients.sort).to eq(ingredient)
    end

  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do 
      cake.eat(5)
      expect(cake.quantity).to eq(15)

    it "raises an error if the amount is greater than the quantity" do
      expect {cake.eat(55) to raise_error("not enough left!")
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do 
      bob = Chef.new(bob)
      pie = Dessert.new("pie", 10, bob)
      expect(pie.serve).to eq("Chef bob the Great Baker has made 10 pies!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
