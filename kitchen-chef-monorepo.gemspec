Gem::Specification.new do |spec|
  spec.name          = "kitchen-chef-monorepo"
  spec.version       = "0.0.1"
  spec.authors       = ["Jeff Goldschrafe"]
  spec.email         = ["jeff@holyhandgrenade.org"]
  spec.description   = "A Test Kitchen driver for Chef using a monolithic cookbook repo"
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/jgoldschrafe/kitchen-chef-monorepo"
  spec.license       = "Apache-2.0"

  spec.files         = Dir["lib/**/*"]
  spec.executables   = []
  spec.test_files    = []
  spec.require_paths = ["lib"]

  spec.add_dependency "test-kitchen", "~> 1.5"
end
