require 'test_helper'

class RecipeTest < ActiveSupport::TestCase

    def setup
        @recipes = Recipe.new(name: "Ayam masak merah", summary: "Ayam ini memang sedap", 
                   description: "Tambah minyak, tambah bawang dan masak selama 20 minit")
    end

    test "Recipe should be valid" do
        assert @recipes.valid?
    end

    test "Name should be present" do
        @recipes.name = " "
        assert_not @recipes.valid?
    end

    test "Name cant be too long" do
        @recipes.name = "a" * 101
        assert_not @recipes.valid?
    end

    test "Name cant be too short" do
        @recipes.name = "aaaa"
        assert_not @recipes.valid?
    end

    test "Summary must be present" do
        @recipes.summary = " "
        assert_not @recipes.valid?
    end

    test "Summary length must not be to long" do 
        @recipes.summary = "a" * 251 # Must not be more than 250
        assert_not @recipes.valid?
    end

    test "Summary length must not be too short" do 
        @recipes.summary = "a" * 19 # Must not be less than 20
        assert_not @recipes.valid?
    end


    test "description must be present" do 
        @recipes.description = " "
        assert_not @recipes.valid?
    end

    test "Description should not be too long" do
        @recipes.description = "a" * 501 # Must not be more than 500
        assert_not @recipes.valid?
    end

    test "Description should not be to short" do 
        @recipes.description = "a" * 39 # Must not be less than 40
        assert_not @recipes.valid?
    end

end
