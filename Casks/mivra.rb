cask "mivra" do
  version "1.0.0,26072401"

  on_arm do
    sha256 "64549d65b83f4873ce2ade1bcd0c39849f9713587daae9c8e859251ac439274c"
    url "https://github.com/zyravo-store/mivra/releases/download/v1.0.0/Mivra_1.0.0_26072401_arm64.dmg"
  end

  on_intel do
    sha256 "90589f6bcb16bc591bf265c5cdd548c984a07266ab9269b7127cb7b4f251161d"
    url "https://github.com/zyravo-store/mivra/releases/download/v1.0.0/Mivra_1.0.0_26072401_universal.dmg"
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
