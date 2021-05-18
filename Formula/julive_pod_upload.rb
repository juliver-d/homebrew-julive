# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class JulivePodUpload < Formula
  desc "a simple tool for cocoapods push private repo"
  homepage "https://github.com/juliver-d/homebrew-julive/tree/master/julive_pod_upload"
  url "https://github.com/juliver-d/homebrew-julive/blob/master/julive_pod_upload/julive_pod_upload-1.0.3.tgz?raw=true"
  sha256 "8ab432dfc408813bf292526021a5a39ecb7d0c47fa8d6b7bea1562bb2320fb78"
  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
#    system "./configure", "--disable-debug",
#                          "--disable-dependency-tracking",
#                          "--disable-silent-rules",
#                          "--prefix=#{prefix}"
#    # system "cmake", ".", *std_cmake_args
#    system "make", "install" # if this fails, try separate make/make install steps
    system "make"
    bin.install "./.build/julive_pod_upload"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test julive_pod_upload`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
