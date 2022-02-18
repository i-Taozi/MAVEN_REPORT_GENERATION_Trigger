package com.github.marschall.memoryfilesystem;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.Arrays;
import java.util.Collections;

import org.junit.jupiter.api.Test;

class EnvironmentParserTest {

  @Test
  void empty() {
    EnvironmentParser parser = this.parse(MemoryFileSystemBuilder.newEmpty());
    assertEquals(Collections.singletonList("/"), parser.getRoots());
    assertEquals("/", parser.getSeparator());
  }

  @Test
  void unix() {
    EnvironmentParser parser = this.parse(MemoryFileSystemBuilder.newLinux());
    assertEquals(Collections.singletonList("/"), parser.getRoots());
    assertEquals("/", parser.getSeparator());
  }

  @Test
  void windows() {
    EnvironmentParser parser = this.parse(MemoryFileSystemBuilder.newWindows());
    assertEquals(Collections.singletonList("C:\\"), parser.getRoots());
    assertEquals("\\", parser.getSeparator());
  }

  @Test
  void windowsExtended() {
    EnvironmentParser parser = this.parse(MemoryFileSystemBuilder.newWindows().addRoot("D:\\"));
    assertEquals(Arrays.asList("C:\\", "D:\\"), parser.getRoots());
    assertEquals("\\", parser.getSeparator());
  }

  private EnvironmentParser parse(MemoryFileSystemBuilder builder) {
    return new EnvironmentParser(builder.buildEnvironment());
  }

}
