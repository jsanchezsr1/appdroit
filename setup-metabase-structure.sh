#!/usr/bin/env bash

set -e

REPO_NAME="MetaBase"

echo "Creating folder structure for ${REPO_NAME}..."

# Root folders
mkdir -p apps \
         packages \
         generated/apps \
         infrastructure/{docker,terraform,k8s,scripts} \
         docs/{architecture,api,decisions} \
         .github/workflows

# apps/builder-web
mkdir -p apps/builder-web/{app,components,hooks,lib,public,styles}
touch apps/builder-web/next.config.ts
touch apps/builder-web/package.json

# apps/control-api
mkdir -p apps/control-api/src/{auth,organizations,projects,versions,prompts,generation-jobs,deployments,integrations,billing}
mkdir -p apps/control-api/prisma
touch apps/control-api/src/app.module.ts
touch apps/control-api/prisma/schema.prisma
touch apps/control-api/package.json

# apps/worker
mkdir -p apps/worker/src/{generation,deployment,queues}
touch apps/worker/src/worker.ts
touch apps/worker/package.json

# apps/runtime-gateway
mkdir -p apps/runtime-gateway/src/{runtime,deployments}
touch apps/runtime-gateway/src/gateway.ts
touch apps/runtime-gateway/package.json

# packages/app-spec
mkdir -p packages/app-spec/src
touch packages/app-spec/src/index.ts
touch packages/app-spec/package.json

# packages/generator-core
mkdir -p packages/generator-core/src/{planner,compiler,validators}
touch packages/generator-core/src/generator.ts
touch packages/generator-core/package.json

# packages/template-registry
mkdir -p packages/template-registry/{base-template,crm-template,marketplace-template,booking-template}

# packages/ui-kit
mkdir -p packages/ui-kit/{components,layout}
touch packages/ui-kit/package.json

# packages/shared-types
mkdir -p packages/shared-types/src
touch packages/shared-types/src/index.ts
touch packages/shared-types/package.json

# packages/integration-sdk
mkdir -p packages/integration-sdk/{stripe,resend,twilio}
touch packages/integration-sdk/package.json

# packages/auth-sdk
mkdir -p packages/auth-sdk/src
touch packages/auth-sdk/package.json

# Root files
touch package.json \
      pnpm-workspace.yaml \
      turbo.json \
      tsconfig.base.json \
      .env.example \
      README.md \
      LICENSE

echo "Structure created successfully."
