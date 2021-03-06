require 'spec_helper'

describe 'ColumnDefaultDuck' do

	it "should raise an error if we try to initialise ranked_model on a column with a default value" do
		expect {
			class ColumnDefaultDuck < ActiveRecord::Base
			  include RankedModel
			  ranks :size, :with_same => :pond
			end
		}.to raise_error(RankedModel::NonNilColumnDefault, 'Your ranked model column "size" must not have a default value in the database.')
	end

end
