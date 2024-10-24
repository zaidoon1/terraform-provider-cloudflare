// File generated from our OpenAPI spec by Stainless. See CONTRIBUTING.md for details.

package zero_trust_local_domain_fallback_test

import (
	"context"
	"testing"

	"github.com/cloudflare/terraform-provider-cloudflare/internal/services/zero_trust_local_domain_fallback"
	"github.com/cloudflare/terraform-provider-cloudflare/internal/test_helpers"
)

func TestZeroTrustLocalDomainFallbacksDataSourceModelSchemaParity(t *testing.T) {
	t.Parallel()
	model := (*zero_trust_local_domain_fallback.ZeroTrustLocalDomainFallbacksDataSourceModel)(nil)
	schema := zero_trust_local_domain_fallback.ListDataSourceSchema(context.TODO())
	errs := test_helpers.ValidateDataSourceModelSchemaIntegrity(model, schema)
	errs.Report(t)
}
