/* Process admission only: exec the unchanged Lean compiler after flock.
 * Locks survive exec and are released by the kernel when Lean exits. */
#define _POSIX_C_SOURCE 200809L
#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/file.h>
#include <unistd.h>

static void fail(const char *message) {
  fprintf(stderr, "lean process limiter: %s: %s\n", message, strerror(errno));
  exit(111);
}
static int open_slot(const char *directory, long slot) {
  size_t length = strlen(directory) + 64;
  char *path = malloc(length);
  if (!path) fail("allocate lock path");
  snprintf(path, length, "%s/slot-%ld.lock", directory, slot);
  /* Deliberately no O_CLOEXEC: the real compiler must retain this lock. */
  int fd = open(path, O_CREAT | O_RDWR, 0600);
  free(path);
  if (fd < 0) fail("open slot");
  return fd;
}
int main(int argc, char **argv) {
  (void)argc;
  const char *real_lean = getenv("LEAN_LIMIT_REAL");
  const char *directory = getenv("LEAN_LIMIT_LOCK_DIR");
  const char *count = getenv("LEAN_LIMIT_SLOTS");
  if (!real_lean || !directory || !count || real_lean[0] != '/') {
    errno = EINVAL; fail("missing launcher environment");
  }
  char *end;
  long slots = strtol(count, &end, 10);
  if (*end || slots < 1 || slots > 32) {
    errno = EINVAL; fail("invalid slot count");
  }
  long preferred = (long)getpid() % slots;
  int acquired = -1;
  for (long offset = 0; offset < slots; ++offset) {
    int fd = open_slot(directory, (preferred + offset) % slots);
    int result;
    do { result = flock(fd, LOCK_EX | LOCK_NB); } while (result < 0 && errno == EINTR);
    if (result == 0) { acquired = fd; break; }
    if (errno != EWOULDBLOCK && errno != EAGAIN) fail("try slot lock");
    close(fd);
  }
  if (acquired < 0) {
    acquired = open_slot(directory, preferred);
    int result;
    do { result = flock(acquired, LOCK_EX); } while (result < 0 && errno == EINTR);
    if (result < 0) fail("wait for slot lock");
  }
  /* argv[1..], the environment, and all standard streams are unchanged. */
  argv[0] = (char *)real_lean;
  execv(real_lean, argv);
  fail("exec real Lean");
  return 111;
}
