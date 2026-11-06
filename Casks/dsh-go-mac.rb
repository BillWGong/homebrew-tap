cask "dsh-go-mac" do
  version "1.0.20"
  sha256 "bd147b3a250290bfe85fbeb71f907034c7ae0e91238a6883afa04446a46dd2d4"

  url "https://github.com/BillWGong/dsh-go-mac/releases/download/v#{version}/dsh-go-mac-#{version}-macos-arm64.dmg",
      verified: "github.com/BillWGong/dsh-go-mac/"
  name "DSH Go Mac"
  desc "Native macOS client for DeepSeek Harness"
  homepage "https://dsh.billw.top/"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "dsh_go.app", target: "DSH Go Mac.app"

  caveats <<~EOS
    This build is unsigned. If macOS refuses to open it, run:
      xattr -dr com.apple.quarantine "/Applications/DSH Go Mac.app"
  EOS
end
