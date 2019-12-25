# 9. Create same structures with OpenStruct data structure type
# Deposit should contain next fields: balance, id, date_created, date_closed, loans. 
# Loan should contain next fields: id outstanding date_created, date_closed

require "ostruct"

Deposit = OpenStruct.new(:balance => 20000, :id => 1, "date_created" => "2001-02-03", :date_closed => "2001-12-03", :loans => 666 )

p Deposit

Loan = OpenStruct.new(:id => 2, :outstanding => 50000, :date_created => "2001-02-03", :date_closed => "2001-12-03")

p Loan