# Challenge criteria

I. Back-end test
	Please use Ruby.
	Results in Git, please.
	Implement Search Test for GIPHY WEB app: https://giphy.com/
	Test Description:
		1. Send search request; specify query; offset and limit for pagination
		2. Verify response is correct

II. SQL
	Given you have table of products with fields id, product_name, product_type, product_model, price in database,

	And product_type can be desktop or laptop,
	And model can be any String,
	And name can be any String,

	Select all product names for laptops from table products with average price < $2000

III. Test Scenarios
	1. Cover Search functionality for GIPHY WEB app (https://giphy.com/), 
		with high-level test scenarios,
		without detailed description.

2. Provide detailed description for one of the test scenarios,
	with test steps and expected result.
  
# Ruby Version
ruby -v  
ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x86_64-darwin21]  

Clone repo  

Install Gems:  
  bundle install  

Execute test:  
  cucumber --format pretty RUN_LOCAL=true BROWSER=firefox --tags @search_test_1  
  
  BROWSER options: firefox, chrome, headless  
  --tags options: @search (will run all tests with this tag, search_test_2 & @search_test_3 not implements per challenge requirements)  
                  @search_test_1 will run indivdual test with this tag  
                  @search_test_2 will run indivdual test with this tag (not implemented)  
                  @search_test_3 will run indivdual test with this tag (not implemented)  <br>
<br>
SQL challenge answer can be found in sql_query.challenge file
