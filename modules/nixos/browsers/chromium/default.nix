{ ... }:
{
  programs.chromium = {
    enable = true;
    extraOpts = {
      "BrowserSignin" = 0;
      "SyncDisabled" = true;
      "PasswordManagerEnabled" = false;
      "SpellcheckEnabled" = true;
      "ExtensionManifestV2Availability" = 2;
      "SpellcheckLanguage" = [
        "en"
        "en-US"
      ];
    };
    extensions = [
      "cjpalhdlnbpafiamejdnhcphjbkeiagm" # uBlock Origin
      "gcbommkclmclpchllfjekcdonpmejbdp" # HTTPS Everywhere
      "aeblfdkhhhdcdjpifhhbdiojplfjncoa" # 1Password
      "hipekcciheckooncpjeljhnekcoolahp" # Tabliss
      "gppongmhjkpfnbhagpmjfkannfbllamg" # Wappalizer
      "cbghhgpcnddeihccjmnadmkaejncjndb" # Vencord Web
      "icgdjligmnkgafcejnjbdjgpeajefaom" # Ethone
      "eimadpbcbfnmbkopoojfekhnkhdbieeh" # Dark Reader
      "adjiklnjodbiaioggfpbpkhbfcnhgkfe" # Github WebIDE
      "emffkefkbkpkgpdeeooapgaicgmcbolj" # Wikiwand
      "idhdcccjlcijifdphaicgnmhifpmilge" # Mergify
      "dcplinogpijcknhlmnlhnogocpfbohfi" # Graphite
      "jfnifeihccihocjbfcfhicmmgpjicaec" # GSConnect
      "iadbdpnoknmbdeolbapdackdcogdmjpe" # Addy.io
      "ghmbeldphafepmbegfdlkpapadhbakde" # Proton Pass
      "jplgfhpmjnbigmhklmmbgecoobifkmpa" # ProtonVPN
      "dphilobhebphkdjbpfohgikllaljmgbn" # Simple Login
      "haijifigpgpndcnbbjooffflaceedhdp" # HTML to Framer
      "jhjmopmegnfaboaidbggelokaadjjgif" # Framer Checker
      "cfldfgibklhmjhnkfighkbafbkbfcmij" # Builder.io
    ];
  };
}
