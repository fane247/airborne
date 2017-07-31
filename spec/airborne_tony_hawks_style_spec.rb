require "spec_helper"


describe "airbone postcode stuff" do 

	before(:all) do 

		@single_postcode = get "http://postcodes.io/postcodes/EN93SD"

	end


	it "has a status code of 200" do

		expect_json(status: 200)

	end

	it "should have a key of result" do

		expect_json_keys(:result)

	end

	it "check the body message"  do

		expect(json_body[:result][:postcode]).to be_kind_of String

	end

	it "should be a Integer between" do 

		expect_json_types('result', quality: :integer)

	end

	it "should have types of blah" do 

		expect_json_types('result', quality: :integer, codes: {nuts: :string} )

	end



end