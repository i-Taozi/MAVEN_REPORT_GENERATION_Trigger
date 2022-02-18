package com.github.marschall.memoryfilesystem;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.PosixFilePermission;
import java.nio.file.attribute.PosixFilePermissions;
import java.util.Set;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.RegisterExtension;

final class UmaskTest {

  private static final Set<PosixFilePermission> UMASK = PosixFilePermissions.fromString("----w-rwx"); // ie, 027

  @RegisterExtension
  final PosixFileSystemExtension extension = new PosixFileSystemExtension(UMASK);

  /**
   * Tests creating a file without permissions respects umask.
   *
   * @throws IOException if the test fails
   */
  @Test
  void creatingFileWithoutPermissions() throws IOException {
    Path path = this.extension.getFileSystem().getPath("/fileWithoutPerms");
    Path created = Files.createFile(path);
    Set<PosixFilePermission> actual = Files.getPosixFilePermissions(created);
    assertEquals("rwxr-x---", PosixFilePermissions.toString(actual));
  }

  /**
   * Tests creating a file with permissions respects umask.
   *
   * @throws IOException if the test fails
   */
  @Test
  void creatingFileWithPermissions() throws IOException {
    Set<PosixFilePermission> permissions = PosixFilePermissions.fromString("rw-rw-rw-");
    FileAttribute<?> attr = PosixFilePermissions.asFileAttribute(permissions);
    Path file = this.extension.getFileSystem().getPath("/fileWithPerms");
    Path created = Files.createFile(file, attr);
    Set<PosixFilePermission> actual = Files.getPosixFilePermissions(created);
    assertEquals("rw-r-----", PosixFilePermissions.toString(actual));
  }

  /**
   * Tests creating a directory without permissions respects umask.
   *
   * @throws IOException if the test fails
   */
  @Test
  void creatingDirectoryWithoutPermissions() throws IOException {
    Path path = this.extension.getFileSystem().getPath("/dirWithoutPerms");
    Path created = Files.createDirectory(path);
    Set<PosixFilePermission> actual = Files.getPosixFilePermissions(created);
    assertEquals("rwxr-x---", PosixFilePermissions.toString(actual));
  }

  /**
   * Tests creating a directory with permissions respects umask.
   *
   * @throws IOException if the test fails
   */
  @Test
  void creatingDirectoryWithPermissions() throws IOException {
    Set<PosixFilePermission> permissions = PosixFilePermissions.fromString("rwxrwx-w-");
    FileAttribute<?> attribute = PosixFilePermissions.asFileAttribute(permissions);
    Path file = this.extension.getFileSystem().getPath("/dirWithPerms");
    Path created = Files.createDirectory(file, attribute);
    Set<PosixFilePermission> actual = Files.getPosixFilePermissions(created);
    assertEquals("rwxr-x---", PosixFilePermissions.toString(actual));
  }

}
