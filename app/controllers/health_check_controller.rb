class HealthCheckController < ActionController::Base

  def teste_monitoramento
    begin
      text = ActiveRecord::Base.connected? ? 'UP' : 'DOWN'
    rescue
      text = 'DOWN'
    end
    render text: text
  end

  # TODO: Create an exception for this test
  def teste_email
    raise 'Email test error'
  end

end
