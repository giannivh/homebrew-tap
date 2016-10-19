class Evotherm < Formula
  desc "Command-line utility to control your Evohome thermostat"
  homepage "https://github.com/giannivh/EvoTherm"
  url "https://github.com/giannivh/EvoTherm/archive/1.0.tar.gz"
  sha256 "c092762bf4fafe89d1b74e86a3580f5e9d01d28586bc73db7f8dc5f3d568ccdd"

  depends_on "cmake" => :build
  depends_on "curl"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    assert_match "config", shell_output("#{bin}/evotherm --help")
  end
end
