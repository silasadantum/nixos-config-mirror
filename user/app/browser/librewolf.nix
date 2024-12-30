{ pkgs, userSettings, ... }:

{
  # Module installing librewolf as default browser
  home.packages = if (userSettings.wmType == "wayland") then [ pkgs.librewolf-wayland ]
                else [ pkgs.librewolf ];

  home.sessionVariables = if (userSettings.wmType == "wayland")
                            then { DEFAULT_BROWSER = "${pkgs.librewolf-wayland}/bin/librewolf";}
                          else
                            { DEFAULT_BROWSER = "${pkgs.librewolf}/bin/librewolf";};

  home.file.".librewolf/librewolf.overrides.cfg".text = ''
    defaultPref("font.name.serif.x-western","''+userSettings.font+''");

    defaultPref("font.size.variable.x-western",20);
    defaultPref("browser.toolbars.bookmarks.visibility","always");
    defaultPref("privacy.resisttFingerprinting.letterboxing", true);
    defaultPref("network.http.referer.XOriginPolicy",2);
    defaultPref("privacy.clearOnShutdown.history",false);
    defaultPref("privacy.clearOnShutdown.downloads",false);
    defaultPref("privacy.clearOnShutdown.cookies",false);
    defaultPref("gfx.webrender.software.opengl",false);
    defaultPref("webgl.disabled",true);
    
    user_pref("accessibility.typeaheadfind.flashBar", 0);
    user_pref("app.update.lastUpdateTime.addon-background-update-timer", 1721983766);
    user_pref("app.update.lastUpdateTime.browser-cleanup-thumbnails", 1722009114);
    user_pref("app.update.lastUpdateTime.services-settings-poll-changes", 1721983766);
    user_pref("app.update.lastUpdateTime.xpi-signature-verification", 1721983766);
    user_pref("browser.bookmarks.editDialog.confirmationHintShowCount", 3);
    user_pref("browser.bookmarks.restore_default_bookmarks", false);
    user_pref("browser.contentblocking.category", "strict");
    user_pref("browser.dom.window.dump.enabled", false);
    user_pref("browser.download.lastDir", "/Users/ponymushama/Downloads");
    user_pref("browser.download.panel.shown", true);
    user_pref("browser.download.useDownloadDir", true);
    user_pref("browser.download.viewableInternally.typeWasRegistered.avif", true);
    user_pref("browser.download.viewableInternally.typeWasRegistered.webp", true);
    user_pref("browser.engagement.ctrlTab.has-used", true);
    user_pref("browser.engagement.downloads-button.has-used", true);
    user_pref("browser.formfill.enable", true);
    user_pref("browser.migrate.interactions.bookmarks", true);
    user_pref("browser.migrate.interactions.history", true);
    user_pref("browser.migration.version", 148);
    user_pref("browser.newtab.extensionControlled", true);
    user_pref("browser.newtab.privateAllowed", false);
    user_pref("browser.newtabpage.activity-stream.impressionId", "{46adf694-7f5a-4315-b2c8-768b1254d6e7}");
    user_pref("browser.newtabpage.storageVersion", 1);
    user_pref("browser.pageActions.persistedActions", "{\"ids\":[\"bookmark\",\"content-farm-terminator_danny0838_addons_mozilla_org\",\"_3c078156-979c-498b-8990-85f7987dd929_\"],\"idsInUrlbar\":[\"content-farm-terminator_danny0838_addons_mozilla_org\",\"_3c078156-979c-498b-8990-85f7987dd929_\",\"bookmark\"],\"idsInUrlbarPreProton\":[],\"version\":1}");
    user_pref("browser.pagethumbnails.storage_version", 3);
    user_pref("browser.policies.applied", true);
    user_pref("browser.policies.runOncePerModification.extensionsInstall", "[\"https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi\"]");
    user_pref("browser.policies.runOncePerModification.extensionsUninstall", "[\"google@search.mozilla.org\",\"bing@search.mozilla.org\",\"amazondotcom@search.mozilla.org\",\"ebay@search.mozilla.org\",\"twitter@search.mozilla.org\"]");
    user_pref("browser.policies.runOncePerModification.removeSearchEngines", "[\"Google\",\"Bing\",\"Amazon.com\",\"eBay\",\"Twitter\"]");
    user_pref("browser.policies.runOncePerModification.setDefaultSearchEngine", "DuckDuckGo");
    user_pref("browser.protections_panel.infoMessage.seen", true);
    user_pref("browser.proton.toolbar.version", 3);
    user_pref("browser.region.network.url", "");
    user_pref("browser.region.update.enabled", false);
    user_pref("browser.safebrowsing.downloads.remote.block_potentially_unwanted", false);
    user_pref("browser.safebrowsing.downloads.remote.block_uncommon", false);
    user_pref("browser.safebrowsing.downloads.remote.enabled", false);
    user_pref("browser.safebrowsing.downloads.remote.url", "");
    user_pref("browser.safebrowsing.provider.google4.dataSharingURL", "");
    user_pref("browser.safebrowsing.provider.mozilla.lastupdatetime", "1721991998001");
    user_pref("browser.safebrowsing.provider.mozilla.nextupdatetime", "1722013598001");
    user_pref("browser.search.separatePrivateDefault", false);
    user_pref("browser.sessionstore.upgradeBackup.latestBuildID", "20240712182932");
    user_pref("browser.shell.mostRecentDateSetAsDefault", "1722010523");
    user_pref("browser.startup.couldRestoreSession.count", 2);
    user_pref("browser.startup.homepage", "moz-extension://0d8e211d-1871-4d79-8581-862bbec2ea0f/newtab.html");
    user_pref("browser.startup.homepage_override.extensionControlled", true);
    user_pref("browser.startup.homepage_override.privateAllowed", false);
    user_pref("browser.startup.lastColdStartupCheck", 1722010523);
    user_pref("browser.startup.page", 3);
    user_pref("browser.theme.toolbar-theme", 0);
    user_pref("browser.toolbars.bookmarks.showOtherBookmarks", false);
    user_pref("browser.toolbars.bookmarks.visibility", "newtab");
    user_pref("browser.translations.enable", false);
    user_pref("browser.translations.panelShown", true);
    user_pref("browser.uiCustomization.state", "{\"placements\":{\"widget-overflow-fixed-list\":[],\"unified-extensions-area\":[\"_3c6bf0cc-3ae2-42fb-9993-0d33104fdcaf_-browser-action\",\"_3c078156-979c-498b-8990-85f7987dd929_-browser-action\",\"button_scholar_google_com-browser-action\",\"ublock0_raymondhill_net-browser-action\",\"magnolia_limited_permissions_d_12_34-browser-action\",\"_74145f27-f039-47ce-a470-a662b129930a_-browser-action\",\"content-farm-terminator_danny0838_addons_mozilla_org-browser-action\",\"copyplaintext_eros_man-browser-action\",\"_47163005-a10b-4a41-9abd-ab3c5840e075_-browser-action\",\"_72bd91c9-3dc5-40a8-9b10-dec633c0873f_-browser-action\",\"jid1-kkzogwgsw3ao4q_jetpack-browser-action\",\"i_diygod_me-browser-action\",\"extension_one-tab_com-browser-action\",\"vimium-c_gdh1995_cn-browser-action\",\"treestyletab_piro_sakura_ne_jp-browser-action\",\"_6779b4de-d680-462a-8038-43079e365983_-browser-action\",\"firefoxcolor_mozilla_com-browser-action\",\"adguardadblocker_adguard_com-browser-action\"],\"nav-bar\":[\"back-button\",\"forward-button\",\"stop-reload-button\",\"urlbar-container\",\"save-to-pocket-button\",\"zotero_chnm_gmu_edu-browser-action\",\"_5efceaa7-f3a2-4e59-a54b-85319448e305_-browser-action\",\"team_readwise_io-browser-action\",\"_d634138d-c276-4fc8-924b-40a0ea21d284_-browser-action\",\"firefox_tampermonkey_net-browser-action\",\"addon_darkreader_org-browser-action\",\"downloads-button\",\"fxa-toolbar-menu-button\",\"unified-extensions-button\",\"87677a2c52b84ad3a151a4a72f5bd3c4_jetpack-browser-action\"],\"TabsToolbar\":[\"tabbrowser-tabs\",\"new-tab-button\",\"alltabs-button\"],\"PersonalToolbar\":[\"personal-bookmarks\"]},\"seen\":[\"developer-button\",\"ublock0_raymondhill_net-browser-action\",\"magnolia_limited_permissions_d_12_34-browser-action\",\"_74145f27-f039-47ce-a470-a662b129930a_-browser-action\",\"content-farm-terminator_danny0838_addons_mozilla_org-browser-action\",\"copyplaintext_eros_man-browser-action\",\"_47163005-a10b-4a41-9abd-ab3c5840e075_-browser-action\",\"_72bd91c9-3dc5-40a8-9b10-dec633c0873f_-browser-action\",\"_d634138d-c276-4fc8-924b-40a0ea21d284_-browser-action\",\"button_scholar_google_com-browser-action\",\"jid1-kkzogwgsw3ao4q_jetpack-browser-action\",\"_5efceaa7-f3a2-4e59-a54b-85319448e305_-browser-action\",\"firefox_tampermonkey_net-browser-action\",\"team_readwise_io-browser-action\",\"zotero_chnm_gmu_edu-browser-action\",\"_3c078156-979c-498b-8990-85f7987dd929_-browser-action\",\"i_diygod_me-browser-action\",\"extension_one-tab_com-browser-action\",\"87677a2c52b84ad3a151a4a72f5bd3c4_jetpack-browser-action\",\"vimium-c_gdh1995_cn-browser-action\",\"treestyletab_piro_sakura_ne_jp-browser-action\",\"_6779b4de-d680-462a-8038-43079e365983_-browser-action\",\"firefoxcolor_mozilla_com-browser-action\",\"addon_darkreader_org-browser-action\",\"_3c6bf0cc-3ae2-42fb-9993-0d33104fdcaf_-browser-action\",\"adguardadblocker_adguard_com-browser-action\"],\"dirtyAreaCache\":[\"nav-bar\",\"PersonalToolbar\",\"TabsToolbar\",\"unified-extensions-area\"],\"currentVersion\":20,\"newElementCount\":6}");
    user_pref("browser.urlbar.placeholderName", "DuckDuckGo");
    user_pref("browser.urlbar.placeholderName.private", "DuckDuckGo");
    user_pref("browser.urlbar.recentsearches.lastDefaultChanged", "1720878834541");
    user_pref("browser.urlbar.tabToSearch.onboard.interactionsLeft", 2);
    user_pref("browser.warnOnQuitShortcut", false);
    user_pref("browser.zoom.full", false);
    user_pref("captivedetect.canonicalURL", "");
    user_pref("devtools.console.stdout.chrome", false);
    user_pref("devtools.debugger.prefs-schema-version", 11);
    user_pref("devtools.debugger.remote-enabled", false);
    user_pref("devtools.everOpened", true);
    user_pref("devtools.toolbox.selectedTool", "jsdebugger");
    user_pref("distribution.iniFile.exists.appversion", "128.0-2");
    user_pref("distribution.iniFile.exists.value", false);
    user_pref("doh-rollout.provider-list", "[{\"UIName\":\"Mozilla Cloudflare\",\"uri\":\"https://mozilla.cloudflare-dns.com/dns-query\"},{\"UIName\":\"Quad9\",\"uri\":\"https://dns.quad9.net/dns-query\"},{\"UIName\":\"Quad9+ECS\",\"uri\":\"https://dns11.quad9.net/dns-query\"}]");
    user_pref("dom.forms.autocomplete.formautofill", true);
    user_pref("dom.push.userAgentID", "fc2895512be246d88af6c62752b97f5e");
    user_pref("dom.security.https_only_mode_ever_enabled", true);
    user_pref("extensions.activeThemeID", "{820afd08-7271-4f9d-8cec-43211ff42102}");
    user_pref("extensions.blocklist.pingCountVersion", -1);
    user_pref("extensions.databaseSchema", 36);
    user_pref("extensions.formautofill.creditCards.reauth.optout", "MDIEEPgAAAAAAAAAAAAAAAAAAAEwFAYIKoZIhvcNAwcECMjIk2o8BY6sBAjm6cHTA3/GVg==");
    user_pref("extensions.getAddons.cache.lastUpdate", 1721983767);
    user_pref("extensions.getAddons.databaseSchema", 6);
    user_pref("extensions.lastAppBuildId", "20240712182932");
    user_pref("extensions.lastAppVersion", "128.0-2");
    user_pref("extensions.lastPlatformVersion", "128.0");
    user_pref("extensions.pendingOperations", false);
    user_pref("extensions.pictureinpicture.enable_picture_in_picture_overrides", true);
    user_pref("extensions.systemAddonSet", "{\"schema\":1,\"addons\":{}}");
    user_pref("extensions.ui.dictionary.hidden", true);
    user_pref("extensions.ui.extension.hidden", false);
    user_pref("extensions.ui.lastCategory", "addons://list/plugin");
    user_pref("extensions.ui.locale.hidden", true);
    user_pref("extensions.ui.sitepermission.hidden", true);
    user_pref("extensions.ui.theme.hidden", false);
    user_pref("extensions.webcompat.enable_shims", true);
    user_pref("extensions.webcompat.perform_injections", true);
    user_pref("extensions.webcompat.perform_ua_overrides", true);
    user_pref("extensions.webextensions.ExtensionStorageIDB.migrated.87677a2c52b84ad3a151a4a72f5bd3c4@jetpack", true);
    user_pref("extensions.webextensions.ExtensionStorageIDB.migrated.FirefoxColor@mozilla.com", true);
    user_pref("extensions.webextensions.ExtensionStorageIDB.migrated.button@scholar.google.com", true);
    user_pref("extensions.webextensions.ExtensionStorageIDB.migrated.content-farm-terminator@danny0838.addons.mozilla.org", true);
    user_pref("extensions.webextensions.ExtensionStorageIDB.migrated.copyplaintext@eros.man", true);
    user_pref("extensions.webextensions.ExtensionStorageIDB.migrated.extension@one-tab.com", true);
    user_pref("extensions.webextensions.ExtensionStorageIDB.migrated.firefox@tampermonkey.net", true);
    user_pref("extensions.webextensions.ExtensionStorageIDB.migrated.i@diygod.me", true);
    user_pref("extensions.webextensions.ExtensionStorageIDB.migrated.jid1-KKzOGWgsW3Ao4Q@jetpack", true);
    user_pref("extensions.webextensions.ExtensionStorageIDB.migrated.magnolia_limited_permissions_d@12.34", true);
    user_pref("extensions.webextensions.ExtensionStorageIDB.migrated.screenshots@mozilla.org", true);
    user_pref("extensions.webextensions.ExtensionStorageIDB.migrated.team@readwise.io", true);
    user_pref("extensions.webextensions.ExtensionStorageIDB.migrated.treestyletab@piro.sakura.ne.jp", true);
    user_pref("extensions.webextensions.ExtensionStorageIDB.migrated.uBlock0@raymondhill.net", true);
    user_pref("extensions.webextensions.ExtensionStorageIDB.migrated.vimium-c@gdh1995.cn", true);
    user_pref("extensions.webextensions.ExtensionStorageIDB.migrated.zotero@chnm.gmu.edu", true);
    user_pref("extensions.webextensions.ExtensionStorageIDB.migrated.{3c078156-979c-498b-8990-85f7987dd929}", true);
    user_pref("extensions.webextensions.ExtensionStorageIDB.migrated.{3c6bf0cc-3ae2-42fb-9993-0d33104fdcaf}", true);
    user_pref("extensions.webextensions.ExtensionStorageIDB.migrated.{47163005-a10b-4a41-9abd-ab3c5840e075}", true);
    user_pref("extensions.webextensions.ExtensionStorageIDB.migrated.{5efceaa7-f3a2-4e59-a54b-85319448e305}", true);
    user_pref("extensions.webextensions.ExtensionStorageIDB.migrated.{72bd91c9-3dc5-40a8-9b10-dec633c0873f}", true);
    user_pref("extensions.webextensions.ExtensionStorageIDB.migrated.{74145f27-f039-47ce-a470-a662b129930a}", true);
    user_pref("extensions.webextensions.uuids", "{\"formautofill@mozilla.org\":\"f2abcbb4-5bb9-4e7b-8f35-c03544431028\",\"pictureinpicture@mozilla.org\":\"eff82b69-9023-4c77-94f5-b6dfc49c2ab8\",\"screenshots@mozilla.org\":\"e8058bb6-dfe5-47bd-8603-3fa5936d739f\",\"webcompat@mozilla.org\":\"a14cd889-27d0-4a4d-8aa7-aaeec9012e88\",\"default-theme@mozilla.org\":\"ee69bf6b-7a3e-44cd-916b-d6009cd8a3bb\",\"addons-search-detection@mozilla.com\":\"b8b43c6c-e30b-42fd-ad80-c42dca436f9b\",\"wikipedia@search.mozilla.org\":\"dec194b2-f7a3-47a1-b88f-0b9ad6dcc764\",\"ddg@search.mozilla.org\":\"311fbff3-ed84-4cbb-be00-943c4238c410\",\"uBlock0@raymondhill.net\":\"7a29b374-fde7-43e7-8bb0-eddd6277d776\",\"firefox-alpenglow@mozilla.org\":\"a3fbd43d-2a03-4b15-b691-c08ea8925b62\",\"magnolia_limited_permissions_d@12.34\":\"4a7ff264-6d00-48bb-bcfd-a1db5c11aac2\",\"{74145f27-f039-47ce-a470-a662b129930a}\":\"35c511ee-2b0a-43c9-8c52-d17a01daf18c\",\"content-farm-terminator@danny0838.addons.mozilla.org\":\"29250f95-691a-49cd-8625-299df91c8726\",\"copyplaintext@eros.man\":\"be2ecbd1-8874-472b-9535-695ec9bd5fc2\",\"{47163005-a10b-4a41-9abd-ab3c5840e075}\":\"ab0a38c4-3e7b-46c2-bb2e-df62d2eb270d\",\"{72bd91c9-3dc5-40a8-9b10-dec633c0873f}\":\"b2d155b0-e4d8-4520-8c10-142cca9bd5c2\",\"{d634138d-c276-4fc8-924b-40a0ea21d284}\":\"2f9bf35e-8272-4ee0-91e1-b75223996c4a\",\"button@scholar.google.com\":\"71b6597a-3188-44bd-873f-561ee6f205d5\",\"{bb9cfae3-9ac6-4c72-b90b-71814ab7d789}\":\"0d8e211d-1871-4d79-8581-862bbec2ea0f\",\"jid1-KKzOGWgsW3Ao4Q@jetpack\":\"42a91c8e-c09f-4a99-abb9-cfc6cd9e0fc0\",\"{5efceaa7-f3a2-4e59-a54b-85319448e305}\":\"fbee85ae-fb1a-4fe7-a24b-646258183724\",\"firefox@tampermonkey.net\":\"77244919-2f72-4dd7-aa82-723f30797947\",\"team@readwise.io\":\"fbd6d288-bb10-491b-b5f3-3690fe3e7022\",\"zotero@chnm.gmu.edu\":\"4856d1f0-f2a7-4218-bb1a-7c1aaec9e528\",\"{3c078156-979c-498b-8990-85f7987dd929}\":\"f8d03972-1c61-4a4d-8ee6-01184b8954cb\",\"firefox-compact-light@mozilla.org\":\"4e86fe77-d819-4e9e-b454-f078c006c07c\",\"activist-balanced-colorway@mozilla.org\":\"c2e7904f-6b16-4577-992b-1a02c36107db\",\"visionary-balanced-colorway@mozilla.org\":\"ccbf8655-a5f2-4575-8ca4-99b9a72e120d\",\"{22b0eca1-8c02-4c0d-a5d7-6604ddd9836e}\":\"6b800a89-eae0-4bee-b96d-4e56f37e4d0a\",\"i@diygod.me\":\"aecd064a-fbe9-40b4-ba9f-1b185032e290\",\"extension@one-tab.com\":\"88e3c308-0c03-49f9-be01-ae79e16e8b94\",\"87677a2c52b84ad3a151a4a72f5bd3c4@jetpack\":\"78b40e46-9add-42da-9a03-ab427d311da3\",\"vimium-c@gdh1995.cn\":\"ab3c4be1-dd7b-4306-8b48-5fc636687a09\",\"treestyletab@piro.sakura.ne.jp\":\"2987a415-d888-469e-9e5c-dcd2f5d5f5ca\",\"FirefoxColor@mozilla.com\":\"4f2d64b7-e8a2-4155-9358-0d7063df2dfb\",\"{3c6bf0cc-3ae2-42fb-9993-0d33104fdcaf}\":\"a9e3e1a7-c9aa-4364-98e4-7de7c5f3f548\",\"{820afd08-7271-4f9d-8cec-43211ff42102}\":\"a74fbb92-51cb-4681-8802-e24608842c75\"}");
    user_pref("font.language.group", "zh-CN");
    user_pref("font.name.monospace.zh-CN", "JetBrainsMono Nerd Font Mono");
    user_pref("font.name.monospace.zh-HK", "JetBrainsMono Nerd Font Mono");
    user_pref("font.name.monospace.zh-TW", "JetBrainsMono Nerd Font Mono");
    user_pref("font.name.sans-serif.zh-CN", "LXGW WenKai Mono");
    user_pref("font.name.sans-serif.zh-HK", "LXGW WenKai Mono");
    user_pref("font.name.sans-serif.zh-TW", "LXGW WenKai Mono");
    user_pref("font.name.serif.x-western", "LXGW WenKai Mono");
    user_pref("font.name.serif.zh-CN", "LXGW WenKai Mono");
    user_pref("font.name.serif.zh-HK", "LXGW WenKai Mono");
    user_pref("font.name.serif.zh-TW", "LXGW WenKai Mono");
    user_pref("gecko.handlerService.defaultHandlersVersion", 1);
    user_pref("idle.lastDailyNotification", 1721959209);
    user_pref("intl.accept_languages", "en-US, en");
    user_pref("javascript.use_us_english_locale", true);
    user_pref("layout.spellcheckDefault", 0);
    user_pref("media.gmp-manager.buildID", "20240712182932");
    user_pref("media.gmp-manager.lastCheck", 1722010855);
    user_pref("media.gmp-manager.lastEmptyCheck", 1722010855);
    user_pref("media.gmp.storage.version.observed", 1);
    user_pref("media.videocontrols.picture-in-picture.video-toggle.first-seen-secs", 1707320403);
    user_pref("media.videocontrols.picture-in-picture.video-toggle.has-used", true);
    user_pref("network.captive-portal-service.enabled", false);
    user_pref("network.connectivity-service.enabled", false);
    user_pref("network.http.referer.disallowCrossSiteRelaxingDefault.top_navigation", true);
    user_pref("network.http.speculative-parallel-limit", 0);
    user_pref("network.predictor.enabled", false);
    user_pref("network.prefetch-next", false);
    user_pref("pdfjs.enabledCache.state", true);
    user_pref("pdfjs.migrationVersion", 2);
    user_pref("permissions.delegation.enabled", false);
    user_pref("permissions.manager.defaultsUrl", "");
    user_pref("places.database.lastMaintenance", 1721854637);
    user_pref("pref.privacy.disable_button.cookie_exceptions", false);
    user_pref("pref.privacy.disable_button.tracking_protection_exceptions", false);
    user_pref("print.printer_Brother_DCP-7180DN.print_orientation", 0);
    user_pref("print_printer", "Mozilla Save to PDF");
    user_pref("privacy.annotate_channels.strict_list.enabled", true);
    user_pref("privacy.bounceTrackingProtection.hasMigratedUserActivationData", true);
    user_pref("privacy.clearOnShutdown.cache", false);
    user_pref("privacy.clearOnShutdown.cookies", false);
    user_pref("privacy.clearOnShutdown.offlineApps", false);
    user_pref("privacy.clearOnShutdown_v2.cache", false);
    user_pref("privacy.clearOnShutdown_v2.cookiesAndStorage", false);
    user_pref("privacy.donottrackheader.enabled", true);
    user_pref("privacy.fingerprintingProtection", true);
    user_pref("privacy.firstparty.isolate", true);
    user_pref("privacy.globalprivacycontrol.enabled", true);
    user_pref("privacy.globalprivacycontrol.was_ever_enabled", true);
    user_pref("privacy.history.custom", true);
    user_pref("privacy.purge_trackers.date_in_cookie_database", "0");
    user_pref("privacy.purge_trackers.last_purge", "1721959209538");
    user_pref("privacy.query_stripping.enabled", true);
    user_pref("privacy.query_stripping.enabled.pbmode", true);
    user_pref("privacy.sanitize.clearOnShutdown.hasMigratedToNewPrefs2", true);
    user_pref("privacy.sanitize.pending", "[{\"id\":\"newtab-container\",\"itemsToClear\":[],\"options\":{}}]");
    user_pref("privacy.sanitize.sanitizeOnShutdown", false);
    user_pref("privacy.spoof_english", 2);
    user_pref("privacy.trackingprotection.emailtracking.enabled", true);
    user_pref("privacy.trackingprotection.enabled", true);
    user_pref("privacy.trackingprotection.socialtracking.enabled", true);
    user_pref("privacy.userContext.extension", "{3c078156-979c-498b-8990-85f7987dd929}");
    user_pref("security.OCSP.require", false);
    user_pref("security.cert_pinning.enforcement_level", 1);
    user_pref("security.tls.enable_0rtt_data", false);
    user_pref("services.sync.engine.addresses.available", true);
    user_pref("signon.management.page.os-auth.optout", "MDIEEPgAAAAAAAAAAAAAAAAAAAEwFAYIKoZIhvcNAwcECEVv3z/dnycYBAhYO4wlL96t2w==");
    user_pref("storage.vacuum.last.content-prefs.sqlite", 1719995403);
    user_pref("storage.vacuum.last.index", 2);
    user_pref("storage.vacuum.last.places.sqlite", 1719899356);
    user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
    user_pref("toolkit.startup.last_success", 1722010522);
    user_pref("toolkit.telemetry.cachedClientID", "aa37697d-2ba6-4fdf-a122-6f774e77242e");
    user_pref("toolkit.telemetry.reportingpolicy.firstRun", false);
    user_pref("toolkit.winRegisterApplicationRestart", false);
    user_pref("webchannel.allowObject.urlWhitelist", "");
    '';

  xdg.mimeApps.defaultApplications = {
  "text/html" = "librewolf.desktop";
  "x-scheme-handler/http" = "librewolf.desktop";
  "x-scheme-handler/https" = "librewolf.desktop";
  "x-scheme-handler/about" = "librewolf.desktop";
  "x-scheme-handler/unknown" = "librewolf.desktop";
  };

}
