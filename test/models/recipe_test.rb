require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
	def setup
		@recipe = Recipe.new(name: "chiken", summary: "This is the best recipe ever", description: "lleva todo los ingreditentes")
	end

	test 'recipe debe ser valido' do
		assert @recipe.valid?
	end

	test 'name debe estar presente' do
		@recipe.name = " "
		assert_not @recipe.valid?
	end

	test 'name no debe ser muy largo' do
		@recipe.name = "a"*101
		assert_not @recipe.valid?
	end

	test 'name no debe ser muy corto' do
		@recipe.name = "aaaa"
		assert_not @recipe.valid?
	end

	test 'summary debe estar presente' do
		@recipe.summary = " "
		assert_not @recipe.valid?
	end

	test 'summary no debe ser muy largo' do
		@recipe.summary = "a"*151
		assert_not @recipe.valid?
	end

	test 'summary no debe ser muy corto' do
		@recipe.summary = "a"*9
		assert_not @recipe.valid?
	end

	test 'description debe estar presente' do
		@recipe.description = " "
		assert_not @recipe.valid?
	end

	test 'description no debe ser muy largo' do
		@recipe.description = "a"*501
		assert_not @recipe.valid?
	end

	test 'description no debe ser muy corto' do
		@recipe.description = "a"*19
		assert_not @recipe.valid?
	end
end