class Runner
  attr_accessor :metrics

  def generate_sandi_metrics
    SandiRunner.perform
  end

  def generate_spec_metrics

  end
end
