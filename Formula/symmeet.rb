class Symmeet < Formula
  desc "Local-first, standalone meeting-artifact tool"
  homepage "https://github.com/danieljustus/symaira-meet"
  url "https://github.com/danieljustus/symaira-meet/releases/download/v0.4.0-beta.1/symmeet_0.4.0-beta.1_darwin_arm64.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "Apache-2.0"

  depends_on macos: :sequoia

  def install
    bin.install "symmeet"
  end

  test do
    system "#{bin}/symmeet", "version", "--json"
  end
end
