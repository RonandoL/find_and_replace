require('rspec')
require('find_and_replace')

describe("String#find_and_replace") do
  it('will accept a string') do
    expect(("Lord of the Rings").find_and_replace()).to(eq("Lord of the Rings"))
  end
end
