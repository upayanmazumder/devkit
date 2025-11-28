@{
    # Script module or binary module file associated with this manifest.
    RootModule        = 'DevKit.psm1'

    # Version number of this module.
    ModuleVersion     = '1.0.0'

    # ID used to uniquely identify this module
    GUID              = 'c9b1e8d2-8a7f-4f1f-9b1a-0b5b2a0f0c3d'

    # Author of this module
    Author            = 'Upayan Mazumder'

    # Company or vendor of this module
    CompanyName       = 'Upayan DevKit'

    # Description of the functionality provided by this module
    Description       = 'DevKit: Utility scripts for Bash and PowerShell development.'

    # Minimum version of PowerShell required
    PowerShellVersion = '7.0'

    # Functions to export from this module
    FunctionsToExport = @('Install-AllPackages')

    # Other recommended fields
    NestedModules     = @()
    CmdletsToExport   = @()
    AliasesToExport   = @()
    VariablesToExport = @()
}
