{ ... }:
{
  programs.nixcord = {
    enable = true;
    config = {
      themeLinks = [
        "https://raw.githubusercontent.com/refact0r/midnight-discord/refs/heads/master/themes/midnight.theme.css"
      ];
      frameless = true;
      plugins = {
        hideAttachments.enable = true;
        alwaysExpandRoles.enable = true;
        banger.enable = true;
        betterFolders = {
            enable = true;
            closeOthers = true;
            forceOpen = true;
        };
        betterNotesBox = {
          enable = true;
          hide = true;
          noSpellCheck = true;
        };
        betterGifPicker.enable = true;
        betterRoleContext = {
          enable = true;
          roleIconFileFormat = "png";
        };
        betterSessions = {
          enable = true;
          backgroundCheck = true;
        };
        betterSettings = {
          enable = true;
        };
        commandsAPI.enable = true;
        consoleJanitor = {
          enable = true;
        };
        crashHandler = {
          enable = true;
          attemptToPreventCrashes = true;
        };
        ctrlEnterSend = {
          enable = true;
          submitRule = "shift+enter";
        };
        dearrow = {
          enable = true;
          dearrowByDefault = true;
          hideButton = true;
          replaceElements = "everything";
        };
        disableCallIdle.enable = true;
        emoteCloner.enable = true;
        experiments = {
          enable = true;
          toolbarDevMenu = true;
          };
        fakeNitro = {};
        forceOwnerCrown.enable = true;
        friendInvites.enable = true;
        friendsSince.enable = true;
        gameActivityToggle.enable = true;
        ignoreActivities = {};
        keepCurrentChannel.enable = true;
        memberCount = {
          enable = true;
          memberList = true;
          toolTip = true;
        };
        messageLatency = {
          enable = true;
          detectDiscordKotlin = true;
          showMillis = true;
        };
        messageLogger = {
          enable = true;
          collapseDeleted = true;
          ignoreBots = true;
          ignoreSelf = true;
          inlineEdits = true;
          logDeletes = true;
          logEdits = true;
        };
        messageTags = {
          enable = true;
          clyde = true;
        };
        moreCommands.enable = true;
        moreKaomoji.enable = true;
        platformIndicators = {
          enable = true;
          badges = true;
          lists = false;
          messages = false;
          colorMobileIndicator = true;
        };
        relationshipNotifier = {
          enable = true;
          friendRequestCancels = true;
          friends = true;
          groups = true;
          notices = true;
          offlineRemovals = true;
          servers = true;
        };
        serverInfo.enable = true;
        serverListIndicators = {
          enable = true;
          mode = "both";
        };
        shikiCodeblocks = {
          enable = true;
          theme = "https://raw.githubusercontent.com/shikijs/shiki/0b28ad8ccfbf2615f2d9d38ea8255416b8ac3043/packages/shiki/themes/dark-plus.json";
          useDevIcon = "COLOR";
        };
        showHiddenChannels = {
          enable = true;
          showMode = "plain";
        };
        showHiddenThings = {
          enable = true;
          disableDiscoveryFilters = true;
          showInvitesPaused = true;
          showModView = true;
          showTimeouts = true;
        };
        showTimeoutDuration = {
          enable = true;
          displayStyle = "ssalggnikool";
        };
        spotifyControls = {
          enable = true;
          useSpotifyUris = true;
        };
        permissionsViewer = {
          enable = true;
          defaultPermissionsDropdownState = true;
          permissionsSortOrder = "highestRole";
        };
        plainFolderIcon.enable = true;
#        silentTyping = {
#          enabled = true;
#          isEnabled = true;
#          contextMenu = true;
#          showIcon = true;
#        };
#        customRPC = {
#          enable = false;
#          appID = "1388798010045235261";
#          appName = "awrpc";
#          buttonOneText = "Donate";
#          buttonOneURL = "https://ko-fi.com/awfixer";
#          buttonTwoText = "Discord";
#          buttonTwoURL = "https://discord.gg/ajsbasement";
#          details = "join AJ's Basement";
#          endTime = "";
#          imageBig = "";
#          imageBigTooltip = "";
#          imageSmall = "";
#          imageSmallTooltip = "";
#          startTime = "";
#          state = "";
#          streamLink = "https://twitch.tv/awfixer";
#          timestampMode = "";
#          type = "streaming";
#        };
      };
    };
  };
}
