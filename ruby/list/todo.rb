# upon initialization it has to take an array parameter
# array must be moved to list

class TodoList
  
  def initialize(list)
    @list = list
  end

  def get_items 
    @list
  end

  def list
    @list 
  end

  def add_item(item)
    @list << item
  end

  def delete_item(item)
    @list.delete(item)
  end

  def get_item(index)
    @list[index]
  end
end
