require "./spec_helper"

describe File::Info do
  # TODO: Write tests

  it "works" do
    info = File.info __FILE__

    info.posix_perm.should_not eq info.posix_mode

    (info.posix_perm & 0o7700).should eq 0o600

    info.posix_ino.should be > 0
    info.posix_gen.should be > 0
    info.posix_dev.should be > 0
    # info.posix_rdev.should eq ?
  end
end
