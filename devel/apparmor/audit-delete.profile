#include <tunables/global>

profile docker-default-audit-delete  flags=(attach_disconnected,mediate_deleted) {
  #include <abstractions/base>

  # Audit all deletes!
  audit /** delete,

  # # From docker-default:
  # network,
  # capability,
  # file,
  # umount,

  # deny @{PROC}/{*,**^[0-9*],sys/kernel/shm*} wkx,
  # deny @{PROC}/sysrq-trigger rwklx,
  # deny @{PROC}/mem rwklx,
  # deny @{PROC}/kmem rwklx,
  # deny @{PROC}/kcore rwklx,

  # deny mount,

  # deny /sys/[^f]*/** wklx,
  # deny /sys/f[^s]*/** wklx,
  # deny /sys/fs/[^c]*/** wklx,
  # deny /sys/fs/c[^g]*/** wklx,
  # deny /sys/fs/cg[^r]*/** wklx,
  # deny /sys/firmware/efi/efivars/** rwklx,
  # deny /sys/kernel/security/** rwklx,
}
