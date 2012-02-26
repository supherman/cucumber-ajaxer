require 'cucumber'

# Wait for AJAX requests when using @javascript tags: http://bit.ly/zige8p
WAIT_TIME = 5 # seconds
SLEEP_FOR = 0 # seconds

AfterStep('@javascript') do
  # only when JQuery is loaded
  unless page.evaluate_script('typeof(jQuery)') == 'undefined'
    start_time = Time.now
    until page.evaluate_script('jQuery.isReady && jQuery.active == 0') or (start_time + WAIT_TIME) < Time.now
      page.evaluate_script('jQuery.isReady && jQuery.active == 0').class.should_not eql(String)
      sleep SLEEP_FOR
    end
  end
end
