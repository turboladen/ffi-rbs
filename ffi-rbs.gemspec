Gem::Specification.new do |spec|
  spec.name          = "ffi-rbs"
  spec.version       = FFI::Rbs::VERSION
  spec.authors       = ["Steve Loveless"]
  spec.email         = ["steve.loveless@gmail.com"]

  spec.summary       = %q{Rbs typedefs for ffi}
  spec.description   = %q{Rbs typedefs for ffi}
  spec.homepage      = "https://github.com/turboladen/ffi-rbs"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/turboladen/ffi-rbs"
    spec.metadata["changelog_uri"] = "https://github.com/turboladen/ffi-rbs"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rbs"
end
