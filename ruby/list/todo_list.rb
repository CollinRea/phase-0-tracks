class TodoList

  def initialize(chores)
    @list_array = chores
  end

  def get_items
    @list_array
  end

  def add_item(add_chore)
    @list_array << add_chore
  end

  def delete_item(remove_chore)
    @list_array.delete(remove_chore)
  end

  def get_item(index)
    @list_array.at(index)
  end
end