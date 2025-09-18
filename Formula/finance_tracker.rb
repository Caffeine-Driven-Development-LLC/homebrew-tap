class FinanceTracker < Formula
  desc "Personal finance tracking CLI"
  homepage "https://github.com/Caffeine-Driven-Development-LLC/finance_tracker"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/Caffeine-Driven-Development-LLC/finance_tracker/releases/download/v0.1.0/finance_tracker-aarch64-apple-darwin.tar.gz"
      sha256 "sha256:efc9887509006095db626a2c6907e48859072dcefdcdc02961d69b6f21c44815"
    end
  end

  def install
    bin.install "finance_tracker"
  end

  test do
    system "#{bin}/finance_tracker", "--version"
  end
end