class Capybara::Selenium::Node < Capybara::Driver::Node
  def set(value)
    if tag_name == 'input' and type == 'radio'
      click
    elsif tag_name == 'input' and type == 'checkbox'
      click if value ^ native.attribute('checked').to_s.eql?("true")
    elsif tag_name == 'textarea' or tag_name == 'input'
      resynchronize do
        native.clear
        native.send_keys(value.to_s)
      end
    end
  end

  def select_option
    resynchronize { native.click } unless selected?
  end

  def unselect_option
    if select_node['multiple'] != 'multiple' and select_node['multiple'] != 'true'
      raise Capybara::UnselectNotAllowed, "Cannot unselect option from single select box."
    end
    resynchronize { native.click } if selected?
  end

  def click
    resynchronize { native.click }
  end

  def drag_to(element)
    resynchronize { driver.browser.action.drag_and_drop(native, element.native).perform }
  end

private

  def resynchronize
    driver.resynchronize { yield }
  end

end

