FILES := \
	cli/contrib/completion/fish/docker.fish

all: $(addprefix completions/,$(notdir $(FILES)))

completions/%: $(FILES)
	@mkdir -p completions
	cp $< $@
