# CarPlay setup

## Entitlement

CarPlay apps require an Apple-approved CarPlay entitlement. In Xcode, open the app target's **Signing & Capabilities**, add the CarPlay capability, and select the appropriate category approved for your app. The checked-in `MuseCarPlay.entitlements` file is a starting point; Apple may require a category-specific entitlement during provisioning.

## Scene connection

The app declares a `CPTemplateApplicationSceneSessionRoleApplication` scene configuration in `Info.plist`. `CarPlaySceneDelegate` owns the `CPInterfaceController` and installs the native `CPListTemplate` home screen.

## Simulator

In Xcode, choose a CarPlay simulator, run the app, and use the CarPlay simulator controls to connect the app. Test both connected and disconnected lifecycle paths.

## Production checklist

- Request and receive the correct CarPlay entitlement from Apple.
- Confirm the bundle ID and provisioning profile include that entitlement.
- Keep all driving UI glanceable and voice-first.
- Avoid free-form text input in active driving contexts.
- Test speech permission denial, audio interruptions, and loss of connectivity.
- Replace `MuseChatService` and `PlacesService` stubs with authenticated, resilient services.
