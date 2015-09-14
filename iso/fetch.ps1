Param(
    $version
)


function fetch
{
    param(
        $version
    )
    $info = @{}
    $info['win7'] = @{
        'uri'='http://care.dlservice.microsoft.com/dl/download/evalx/win7/x64/EN/7600.16385.090713-1255_x64fre_enterprise_en-us_EVAL_Eval_Enterprise-GRMCENXEVAL_EN_DVD.iso';
        'iso'='en_windows_7.iso'}

    $info['win81'] = @{
        'uri'='http://download.microsoft.com/download/B/9/9/B999286E-0A47-406D-8B3D-5B5AD7373A4A/9600.16384.WINBLUE_RTM.130821-1623_X64FRE_ENTERPRISE_EVAL_EN-US-IRM_CENA_X64FREE_EN-US_DV5.ISO';
        'iso'='en_windows_81.iso'}

    $info['win10'] = @{
        'uri'='http://care.dlservice.microsoft.com/dl/download/C/3/9/C399EEA8-135D-4207-92C9-6AAB3259F6EF/10240.16384.150709-1700.TH1_CLIENTENTERPRISEEVAL_OEMRET_X64FRE_EN-US.ISO';
        'iso'='en_windows_10.iso'}

    $info['win2008r2'] = @{
        'uri'='http://download.microsoft.com/download/7/5/E/75EC4E54-5B02-42D6-8879-D8D3A25FBEF7/7601.17514.101119-1850_x64fre_server_eval_en-us-GRMSXEVAL_EN_DVD.iso';
        'iso'='en_windows_2008r2.iso'}

    $info['win2012'] = @{
        'uri'='http://download.microsoft.com/download/6/D/A/6DAB58BA-F939-451D-9101-7DE07DC09C03/9200.16384.WIN8_RTM.120725-1247_X64FRE_SERVER_EVAL_EN-US-HRM_SSS_X64FREE_EN-US_DV5.ISO';
        'iso'='en_windows_2012.iso'}
    $info['win2012r2'] = @{
        'uri'='http://download.microsoft.com/download/6/2/A/62A76ABB-9990-4EFC-A4FE-C7D698DAEB96/9600.16384.WINBLUE_RTM.130821-1623_X64FRE_SERVER_EVAL_EN-US-IRM_SSS_X64FREE_EN-US_DV5.ISO';
        'iso'='en_windows_2012r2.iso'}
 
    $info['win2016tp3'] = @{
        'uri'='http://download.microsoft.com/download/6/2/A/62A76ABB-9990-4EFC-A4FE-C7D698DAEB96/9600.16384.WINBLUE_RTM.130821-1623_X64FRE_SERVER_EVAL_EN-US-IRM_SSS_X64FREE_EN-US_DV5.ISO';
        'iso'='en_windows_2016tp3.iso'}

    $uri = $info[$version]['uri']
    $iso = $info[$version]['iso']

    wget -Uri $uri -OutFile $iso
}

fetch -version $version