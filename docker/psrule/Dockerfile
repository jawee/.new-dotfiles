
FROM mcr.microsoft.com/powershell:7.4-ubuntu-22.04

# Install dependencies for Bicep CLI
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        curl \
        ca-certificates \
        libicu70 \
    && rm -rf /var/lib/apt/lists/*

# Install Bicep CLI
RUN curl -fSL \
        https://github.com/Azure/bicep/releases/latest/download/bicep-linux-x64 \
        -o /usr/local/bin/bicep \
    && chmod +x /usr/local/bin/bicep \
    && bicep --version

# Install PSRule for Azure
RUN pwsh -NoProfile -Command \
    "Set-PSRepository PSGallery -InstallationPolicy Trusted; \
     Install-Module PSRule.Rules.Azure -Scope AllUsers -Force; \
     Import-Module PSRule.Rules.Azure"

# Enable Bicep expansion
ENV PSRULE_CONFIGURATION_AZURE_BICEP_FILE_EXPANSION=true
ENV PSRULE_CONFIGURATION_AZURE_BICEP_FILE_EXPANSION_TIMEOUT=30

WORKDIR /src

COPY entrypoint.ps1 /opt/psrule/entrypoint.ps1

ENTRYPOINT ["pwsh", "-NoProfile", "-File", "/opt/psrule/entrypoint.ps1"]
#
# ENTRYPOINT ["pwsh", "-NoProfile", "-Command", \
#     "Assert-PSRule -InputPath /src -Module PSRule.Rules.Azure -Format File -As Summary"]

