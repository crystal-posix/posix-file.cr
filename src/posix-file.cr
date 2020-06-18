@[Experimental]
struct File::Info
  def posix_mode
    @stat.st_mode
  end

  def posix_perm
    posix_mode & 0o7777
  end

  def posix_ino
    @stat.st_ino
  end

  # Not available on Linux.
  def posix_gen
    @stat.st_ino
  end

  def posix_dev
    @stat.st_dev
  end

  def posix_rdev
    @stat.st_dev
  end
end
