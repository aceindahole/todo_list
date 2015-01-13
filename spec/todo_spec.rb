require('rspec')
require('todo')

describe(ToDo) do
  before() do
    ToDo.clear()
  end

  describe("#description") do
    it("lets you give it a description") do
      test_todo = ToDo.new("today is tuesday")
      expect(test_todo.description()).to(eq("today is tuesday"))
    end
  end

  describe("#save") do
    it("adds a todo task to the array of todo tasks") do
      test_todo = ToDo.new("tomorrow is wednesday")
      test_todo.save()
      expect(ToDo.all()).to(eq([test_todo]))
    end
  end

  describe(".all") do
    it("is iniatally empty") do
      expect(ToDo.all()).to(eq([]))
    end
  end

  describe(".clear") do
    it("empties out all of saved tasks") do
      ToDo.new("tomorrow is wednesday").save()
      ToDo.clear()
      expect(ToDo.all()).to(eq([]))
    end
  end
end
