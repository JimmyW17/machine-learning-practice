require 'csv'
require 'ruby_linear_regression'

x_data = []
y_data = []
# Load data from CSV file into two arrays - one for independent variables X and one for the dependent variable Y
# Each row contains square feet for property and living area like this:
# [ SQ FEET PROPERTY, SQ FEET HOUSE ]
CSV.foreach("./data/staten-island-single-family-home-sales-2015.csv", :headers => true) do |row|
x_data.push( [row[0].to_i, row[1].to_i] )
y_data.push( row[2].to_i )
end
