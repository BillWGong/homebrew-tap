cask "dsh-go-mac" do
  version "1.0.18"
  sha256 "cca9be91649cce1618461742f10974df61a9a53b5137a456c80da6ff6d37e216"

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
