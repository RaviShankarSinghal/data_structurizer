# frozen_string_literal: true

require_relative "lib/data_structurizer/version"

Gem::Specification.new do |spec|
  spec.name = "data_structurizer"
  spec.version = DataStructurizer::VERSION
  spec.authors = ["Ravi Shankar Singhal"]
  spec.email = ["ravi.singhal2308@gmail.com"]

  spec.summary = "Smart CSV/XLSX -> JSON/Excel normalizer & exporter"
  spec.description = "Reads CSV/XLSX files, detects messy headers (multi-row/merged), normalizes them and exports nested JSON + cleaned Excel files."
  spec.homepage = "https://github.com/RaviShankarSinghal/data_structurizer"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/RaviShankarSinghal/data_structurizer"
  spec.metadata["changelog_uri"] = "https://github.com/RaviShankarSinghal/data_structurizer"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.license = "MIT"
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "roo", ">= 2.8"
  spec.add_runtime_dependency "caxlsx", ">= 3.0"
  spec.add_runtime_dependency "thor", ">= 1.0"
  spec.add_runtime_dependency "oj", ">= 3.0"

  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rake"

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
