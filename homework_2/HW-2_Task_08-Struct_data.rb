# 8. Create Struct data structure for describing next entities: Deposit, Loan. 
# Deposit should contain next fields: balance, id, date_created, date_closed, loans. 
# Loan should contain next fields: id outstanding date_created, date_closed

# TODO: loans is a list of Loan antities. Create several loans and put into argument of deposit
Deposit = Struct.new(:balance, :id, :date_created, :date_closed, :loans)


Loan = Struct.new(:id, :outstanding, :date_created, :date_closed)

p Deposit.new(20000, 1, "2001-02-03", "2001-12-03", 111111)

p Loan.new(2, 50000, "2001-02-03", "2001-12-03")
