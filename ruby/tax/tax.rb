def calculate_tax_payable(income)
  tax = {percentage_of_income: 0, tax_payable: 0.0}
  if income <= 18_200
    return tax
  elsif income <= 37_000
    base_rate = 0
    taxed_income = income - 18_200
    tax_rate = 0.19
  elsif income <= 87_000
    base_rate = 3572
    taxed_income = income - 37_000
    tax_rate = 0.325
  elsif income <= 180_000
    base_rate = 19_822
    taxed_income = income - 87_000
    tax_rate = 0.37
  elsif income > 180_000
    base_rate = 54_232
    taxed_income = income - 180_000
    tax_rate = 0.45
  end
  tax[:tax_payable] = (taxed_income * tax_rate) + base_rate
  tax[:percentage_of_income] = (tax[:tax_payable] / income) * 100
  tax
end
