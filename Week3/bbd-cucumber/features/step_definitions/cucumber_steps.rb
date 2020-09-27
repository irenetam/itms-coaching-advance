Given("the basket has {int} cucumbers") do |int|
    @so_a = int
end

When("{int} cucumbers are added to the basket") do |int|
    @so_b = int
end

Then("the basket contains {int} cucumbers") do |int|
    Kernel.puts "Expected: #{int}"
    so_c = @so_a + @so_b
    Kernel.puts "total: #{so_c}"
    expect(int).to eq(so_c)
end