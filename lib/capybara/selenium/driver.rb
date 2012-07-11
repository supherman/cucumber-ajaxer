class Capybara::Selenium::Driver < Capybara::Driver::Base
  def resynchronize
    if options[:resynchronize]
      yield
      unless evaluate_script('typeof(jQuery)') == 'undefined'
        start_time = Time.now
        until evaluate_script('jQuery.isReady && jQuery.active == 0') or (start_time + options[:resynchronization_timeout]) < Time.now
          sleep 0.5
        end
      end
    else
      yield
    end
  end

  def visit(path)
    resynchronize { browser.navigate.to(url(path)) }
  end
end

