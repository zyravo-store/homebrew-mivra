cask "mivra" do
  version "1.0.1,26203003"

  on_arm do
    sha256 "a73dccc1979ba7f45f6f3da26e4260055ae157a2b6d45ab7edfbd02a7aa3c055"
    url "https://github.com/zyravo-store/mivra/releases/download/v1.0.1/Mivra_1.0.1_26203003_arm64.dmg"
  end

  on_intel do
    sha256 "4e2b5ebe034396c74011beeabdfbfc6fc17a2d85764edc2b3d742723b65b07ec"
    url "https://github.com/zyravo-store/mivra/releases/download/v1.0.1/Mivra_1.0.1_26203003_universal.dmg"
  end

  name "Mivra"
  desc "Clipboard, notes, capture and translation workspace"
  homepage "https://mivra.zyravo.store"

  depends_on macos: :ventura

  app "Mivra.app"

  zap trash: [
    "~/Library/Application Support/com.mivra.zyravo.store",
    "~/Library/Caches/com.mivra.zyravo.store",
    "~/Library/Preferences/com.mivra.zyravo.store.plist",
    "~/Library/Saved Application State/com.mivra.zyravo.store.savedState",
  ]
end
