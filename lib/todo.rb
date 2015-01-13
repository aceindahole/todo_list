class ToDo
  @@all_todo = []
  define_method(:initialize) do |description|
    @description = description
  end

  define_method(:description) do
    @description
  end

  define_singleton_method(:all) do
    @@all_todo
  end

  define_method(:save) do
    @@all_todo.push(self)
  end

  define_singleton_method(:clear) do
    @@all_todo = []
  end
end
