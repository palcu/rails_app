Autotest.add_discovery { "rails" }
Autotest.add_discovery { "rspec2" }

Autotest.add_hook(:initialize) do |at|
  at.add_mapping(%r%^(models|controllers|routing|views|helpers|mailers|requests|lib)/.*rb$%) do |filename, _|
    filename
  end
end
