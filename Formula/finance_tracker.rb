class FinanceTracker < Formula
  desc "Personal finance tracking CLI"
  homepage "https://github.com/Caffeine-Driven-Development-LLC/finance_tracker"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/Caffeine-Driven-Development-LLC/finance_tracker/releases/download/v0.1.3/finance_tracker-v0.1.3-darwin-arm64.tar.gz"
      sha256 "bb1965de7772141a96cf9f3b6264122afddc1123b35dd8a304aa5d2245a0e985"
    end
  end

  depends_on "tectonic"

  def install
    bin.install "finance_tracker"
  end

  test do
    system "#{bin}/finance_tracker", "--version"
  end
end
