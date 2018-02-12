
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'parsing/version'

Gem::Specification.new do |spec|
  spec.name          = 'parsing'
  spec.version       = Parsing::VERSION
  spec.authors       = ['Joel Van Horn']
  spec.email         = ['joel@joelvanhorn.com']

  spec.summary       = %q{Utilities to parse input in handy ways.}
  spec.description   = %q{Utilities to parse input in handy ways.}
  spec.homepage      = 'https://github.com/joelvh/parsing'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "http://mygemserver.com"
  # else
  #   raise 'RubyGems 2.0 or newer is required to protect against ' \
  #     'public gem pushes.'
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'

  # NLP
  spec.add_development_dependency 'punkt-segmenter' # Sentence segmentation
  spec.add_development_dependency 'srx-english' # English sentence segmentation absed on SRX
  spec.add_development_dependency 'stanford-core-nlp' # Ruby bindings to the Stanford Core NLP tools
  spec.add_development_dependency 'treat' # NLP framework in Ruby
  spec.add_development_dependency 'graph-rank' # PageRank and TextRank implementation
  spec.add_development_dependency 'stuff-classifier' # with Redis persistence
  spec.add_development_dependency 'ruby-stemmer' # Expose libstemmer_c to Ruby
  spec.add_development_dependency 'nbayes' # Naive Bayes
  spec.add_development_dependency 'decisiontree' # ID3-based ML Decision Tree algorithm
  spec.add_development_dependency 'classifier-reborn' # General classifier to allow for Bayesian and others
  spec.add_development_dependency 'linnaeus' # Redis-backed Bayesian Classifier

  # Input
  spec.add_development_dependency 'schiphol' # Simple HTTP downloader
  spec.add_development_dependency 'rugged' # Ruby bindings to libgit2 (git)
  spec.add_development_dependency 'down' # Useful library to download/stream files

  # Search
  spec.add_development_dependency 'textquery' # Match rules PEG-based (e.g. search engine options)

  # Parsing
  spec.add_development_dependency 'nikkou' # Extract useful data from HTML and XML (Nokogiri)
end
