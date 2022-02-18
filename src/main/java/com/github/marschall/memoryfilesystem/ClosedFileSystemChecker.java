package com.github.marschall.memoryfilesystem;

import java.nio.file.ClosedFileSystemException;

final class ClosedFileSystemChecker extends ClosedChecker {

  void check() {
    if (!this.isOpen()) {
      throw new ClosedFileSystemException();
    }
  }
}