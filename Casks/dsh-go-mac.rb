cask "dsh-go-mac" do
  version "1.0.19"
  sha256 "14b8c56a7d01fd3df69965d0d35ed9eab169af265489aff02e0db9f096b83f87"

  url "https://github.com/BillWGong/dsh-go-mac/releases/download/v#{version}/dsh-go-mac-#{version}-macos-arm64.dmg",
      verified: "github.com/BillWGong/dsh-go-mac/"
  name "DSH Go Mac"
  desc "Native macOS client for DeepSeek Harness"
  homepage "https://billwgong.github.io/dsh-go-mac/"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "dsh_go.app", target: "DSH Go Mac.app"

  caveats <<~EOS
    This build is unsigned. If macOS refuses to open it, run:
      xattr -dr com.apple.quarantine "/Applications/DSH Go Mac.app"
  EOS
end
