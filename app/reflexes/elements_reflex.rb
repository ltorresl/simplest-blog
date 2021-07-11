class ElementsReflex < ApplicationReflex

  def sort
    elements = JSON.parse(element.dataset[:elements])
    elements.each do |element|
      element_record = Element.find(element['id'])
      element_record.update(position: element['position'])
    end

    # Very bad, hacky fix... May break with future Stimulus versions
    @halted = true
  end

end
