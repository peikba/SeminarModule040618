Set-ExecutionPolicy RemoteSigned
# Import the module for the  cmdLet
Import-Module 'C:\Program Files\Microsoft Dynamics NAV\110\Service\NavAdminTool.ps1'
# Publish app to database
Publish-NAVApp -ServerInstance DynamicsNAV110 -Path "C:\Users\Admin\Desktop\D. E. Veloper_Solution Module_2.0.0.0.app" -SkipVerification
# Install in tenant
Install-NAVApp -ServerInstance DynamicsNAV110 -Name "Solution Module"
Uninstall-NAVApp  -ServerInstance DynamicsNAV110 -Name "Solution Module" -DoNotSaveData 
Unpublish-NAVApp -ServerInstance DynamicsNAV110 -Name "Solution Module" 
Sync-NAVTenant -ServerInstance DynamicsNAV110
Sync-NAVApp -ServerInstance DynamicsNAV110 -Name "Solution Module" -Mode Clean