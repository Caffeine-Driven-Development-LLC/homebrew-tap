class FinanceTracker < Formula
  desc "Personal finance tracking CLI"
  homepage "https://github.com/Caffeine-Driven-Development-LLC/finance_tracker"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/Caffeine-Driven-Development-LLC/finance_tracker/releases/download/v0.2.0/finance_tracker-v0.2.0-darwin-arm64.tar.gz"
      sha256 "e0b2e10e642e5ec7f11825ae20817a7a57d9eba3c88fcb574b4f525e1561c4c1"
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
