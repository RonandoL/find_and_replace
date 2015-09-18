require('rspec')
require('find_and_replace')

describe("String#find_and_replace") do
  it('will return original string if target word is not found') do
    expect(("Lord of the Rings").find_and_replace("boy", "girl")).to(eq("Lord of the Rings"))
  end

  it('will take a one word string and replace the word with another word') do
    expect(("Batman").find_and_replace("Batman", "Superman")).to(eq("Superman"))
  end

  it('will take a multi word string and replace one word with another word') do
    expect(("Lord of the Rings").find_and_replace("Rings", "Flies")).to(eq("Lord of the Flies"))
  end

  it('will take a multi word string and replace one word with another word') do
    expect(("The boy she met is now her Boyfriend").find_and_replace("boy", "girl")).to(eq("The boy she met is now her Girlfriend"))
  end
end
