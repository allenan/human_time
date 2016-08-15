
RSpec.shared_examples 'a greater than alias' do
  it 'is an alias for >' do
    expect(newer_example.send(method, older_example)).to be(true)
  end

  it 'is exclusive' do
    expect(older_example.send(method, older_example)).to be(false)
  end
end

RSpec.shared_examples 'a greater than or equal to alias' do
  it 'is an alias for >=' do
    expect(newer_example.newer_than_or_equal_to?(older_example)).to be(true)
  end

  it 'is inclusive' do
    expect(older_example.send(method, older_example)).to be(true)
  end
end

RSpec.shared_examples 'a less than alias' do
  it 'is an alias for <' do
    expect(older_example.send(method, newer_example)).to be(true)
  end

  it 'is exclusive' do
    expect(older_example.send(method, older_example)).to be(false)
  end
end

RSpec.shared_examples 'a less than or equal to alias' do
  it 'is an alias for >=' do
    expect(older_example.send(method, newer_example)).to be(true)
  end

  it 'is inclusive' do
    expect(older_example.send(method, older_example)).to be(true)
  end
end
