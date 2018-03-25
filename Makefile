# GO env vars
ifeq ($(GOPATH),)
	GOPATH:=~/go
endif
GO=$(firstword $(subst :, ,$(GOPATH)))
GOGET=go get -u
GORUN=go run

REPOSITORY?=api-a

.PHONY: get-it
get-it:
	$(GOGET) github.com/rlespinasse/$(REPOSITORY)

.PHONY: run-it
run-it:
	$(GORUN) $(GO)/src/github.com/rlespinasse/$(REPOSITORY)/main.go
