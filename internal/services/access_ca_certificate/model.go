// File generated from our OpenAPI spec by Stainless. See CONTRIBUTING.md for details.

package access_ca_certificate

import (
	"github.com/hashicorp/terraform-plugin-framework/types"
)

type AccessCACertificateResultEnvelope struct {
	Result AccessCACertificateModel `json:"result,computed"`
}

type AccessCACertificateResultDataSourceEnvelope struct {
	Result AccessCACertificateDataSourceModel `json:"result,computed"`
}

type AccessCACertificatesResultDataSourceEnvelope struct {
	Result AccessCACertificatesDataSourceModel `json:"result,computed"`
}

type AccessCACertificateModel struct {
	AppID     types.String `tfsdk:"app_id" path:"app_id"`
	AccountID types.String `tfsdk:"account_id" path:"account_id"`
	ZoneID    types.String `tfsdk:"zone_id" path:"zone_id"`
	ID        types.String `tfsdk:"id" json:"id,computed"`
}

type AccessCACertificateDataSourceModel struct {
}

type AccessCACertificatesDataSourceModel struct {
}
