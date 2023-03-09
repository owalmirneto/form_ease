build:
	gem build form_ease.gemspec

# Example: make publish v=form_ease-0.0.1.gem
publish:
	gem push $(v)
