param(
    [string]$Option = '/config/ps-rule.yaml'
)

Assert-PSRule `
    -InputPath /src `
    -Module PSRule.Rules.Azure `
    -Format File `
    -Option $Option `
    -As Summary

if ($PSRule.FailureCount -gt 0) {
    exit 1
}
