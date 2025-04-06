ROLE_NAME = $(shell basename $(CURDIR))

.PHONY: lint test converge verify destroy clean

## Run full Molecule test (destroy, create, converge, verify, destroy)
test:
	@echo "🧪 Running full Molecule test..."
	molecule test

## Create and converge the instance
converge:
	@echo "⚙️  Creating and converging..."
	molecule converge

## Verify role after convergence
verify:
	@echo "🔍 Verifying..."
	molecule verify

## Destroy the instance
destroy:
	@echo "💣 Destroying..."
	molecule destroy

## Clean Molecule state (destroy)
clean: destroy

## Reset Molecule environment (destroy + create)
reset:
	@echo "🔄 Resetting Molecule environment..."
	molecule destroy
	molecule create

## Show role name
name:
	@echo "📦 Role: $(ROLE_NAME)"
