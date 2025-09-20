class FinanceTracker < Formula
  desc "Personal finance tracking CLI"
  homepage "https://github.com/Caffeine-Driven-Development-LLC/finance_tracker"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/Caffeine-Driven-Development-LLC/finance_tracker/releases/download/v0.0.2/finance_tracker-v0.0.2-darwin-arm64.tar.gz"
      sha256 "8101bcc412a9cc5c76128fcdf3ea35e2c02af40c999e3a2c4b0af374dca1f71c"
    end
  end

  depends_on "tectonic"
  depends_on cask: "font-roboto"

  def install
    bin.install "finance_tracker"
  end

  test do
    system "#{bin}/finance_tracker", "--version"
  end
end
