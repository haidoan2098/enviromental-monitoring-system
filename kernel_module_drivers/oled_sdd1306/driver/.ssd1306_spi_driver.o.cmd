cmd_/home/haidoan2098/workspace/environmental_monitoring_system/kernel_module_drivers/oled_sdd1306/driver/ssd1306_spi_driver.o := arm-poky-linux-gnueabi-gcc -Wp,-MMD,/home/haidoan2098/workspace/environmental_monitoring_system/kernel_module_drivers/oled_sdd1306/driver/.ssd1306_spi_driver.o.d -nostdinc -isystem /opt/poky/4.0.31/sysroots/x86_64-pokysdk-linux/usr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/11.5.0/include -I/home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include -I./arch/arm/include/generated -I/home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include -I./include -I/home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/uapi -I./arch/arm/include/generated/uapi -I/home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi -I./include/generated/uapi -include /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/compiler-version.h -include /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/kconfig.h -include /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/compiler_types.h -D__KERNEL__ -mlittle-endian -fmacro-prefix-map=/home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/= -Wall -Wundef -Werror=strict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Wno-format-security -std=gnu89 -fno-dwarf2-cfi-asm -fno-ipa-sra -mabi=aapcs-linux -mfpu=vfp -funwind-tables -marm -Wa,-mno-warn-deprecated -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-address-of-packed-member -Os -fno-allow-store-data-races -Wframe-larger-than=1024 -fstack-protector-strong -Wimplicit-fallthrough=5 -Wno-main -Wno-unused-but-set-variable -Wno-unused-const-variable -fno-stack-clash-protection -g -pg -Wdeclaration-after-statement -Wvla -Wno-pointer-sign -Wno-stringop-truncation -Wno-zero-length-bounds -Wno-array-bounds -Wno-stringop-overflow -Wno-restrict -Wno-maybe-uninitialized -Wno-alloc-size-larger-than -fno-strict-overflow -fno-stack-check -fconserve-stack -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -Wno-packed-not-aligned --sysroot=/opt/poky/4.0.31/sysroots/cortexa8hf-neon-poky-linux-gnueabi  -DMODULE  -DKBUILD_BASENAME='"ssd1306_spi_driver"' -DKBUILD_MODNAME='"ssd1306_spi_driver"' -D__KBUILD_MODNAME=kmod_ssd1306_spi_driver -c -o /home/haidoan2098/workspace/environmental_monitoring_system/kernel_module_drivers/oled_sdd1306/driver/ssd1306_spi_driver.o /home/haidoan2098/workspace/environmental_monitoring_system/kernel_module_drivers/oled_sdd1306/driver/ssd1306_spi_driver.c

source_/home/haidoan2098/workspace/environmental_monitoring_system/kernel_module_drivers/oled_sdd1306/driver/ssd1306_spi_driver.o := /home/haidoan2098/workspace/environmental_monitoring_system/kernel_module_drivers/oled_sdd1306/driver/ssd1306_spi_driver.c

deps_/home/haidoan2098/workspace/environmental_monitoring_system/kernel_module_drivers/oled_sdd1306/driver/ssd1306_spi_driver.o := \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/compiler-version.h \
    $(wildcard include/config/CC_VERSION_TEXT) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/kconfig.h \
    $(wildcard include/config/CPU_BIG_ENDIAN) \
    $(wildcard include/config/BOOGER) \
    $(wildcard include/config/FOO) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/compiler_types.h \
    $(wildcard include/config/HAVE_ARCH_COMPILER_H) \
    $(wildcard include/config/CC_HAS_ASM_INLINE) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/compiler_attributes.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/compiler-gcc.h \
    $(wildcard include/config/RETPOLINE) \
    $(wildcard include/config/ARCH_USE_BUILTIN_BSWAP) \
    $(wildcard include/config/KCOV) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/module.h \
    $(wildcard include/config/MODULES) \
    $(wildcard include/config/SYSFS) \
    $(wildcard include/config/MODULES_TREE_LOOKUP) \
    $(wildcard include/config/LIVEPATCH) \
    $(wildcard include/config/STACKTRACE_BUILD_ID) \
    $(wildcard include/config/CFI_CLANG) \
    $(wildcard include/config/MODULE_SIG) \
    $(wildcard include/config/GENERIC_BUG) \
    $(wildcard include/config/KALLSYMS) \
    $(wildcard include/config/SMP) \
    $(wildcard include/config/TRACEPOINTS) \
    $(wildcard include/config/TREE_SRCU) \
    $(wildcard include/config/BPF_EVENTS) \
    $(wildcard include/config/DEBUG_INFO_BTF_MODULES) \
    $(wildcard include/config/JUMP_LABEL) \
    $(wildcard include/config/TRACING) \
    $(wildcard include/config/EVENT_TRACING) \
    $(wildcard include/config/FTRACE_MCOUNT_RECORD) \
    $(wildcard include/config/KPROBES) \
    $(wildcard include/config/HAVE_STATIC_CALL_INLINE) \
    $(wildcard include/config/PRINTK_INDEX) \
    $(wildcard include/config/MODULE_UNLOAD) \
    $(wildcard include/config/CONSTRUCTORS) \
    $(wildcard include/config/FUNCTION_ERROR_INJECTION) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/list.h \
    $(wildcard include/config/DEBUG_LIST) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/types.h \
    $(wildcard include/config/HAVE_UID16) \
    $(wildcard include/config/UID16) \
    $(wildcard include/config/ARCH_DMA_ADDR_T_64BIT) \
    $(wildcard include/config/PHYS_ADDR_T_64BIT) \
    $(wildcard include/config/64BIT) \
    $(wildcard include/config/ARCH_32BIT_USTAT_F_TINODE) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/types.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/uapi/asm/types.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/int-ll64.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/asm-generic/int-ll64.h \
  arch/arm/include/generated/uapi/asm/bitsperlong.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/bitsperlong.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/asm-generic/bitsperlong.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/posix_types.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/stddef.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/stddef.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/compiler_types.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/uapi/asm/posix_types.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/asm-generic/posix_types.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/poison.h \
    $(wildcard include/config/ILLEGAL_POINTER_VALUE) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/const.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/vdso/const.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/const.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/kernel.h \
    $(wildcard include/config/PREEMPT_VOLUNTARY) \
    $(wildcard include/config/PREEMPT_DYNAMIC) \
    $(wildcard include/config/PREEMPT_) \
    $(wildcard include/config/DEBUG_ATOMIC_SLEEP) \
    $(wildcard include/config/MMU) \
    $(wildcard include/config/PROVE_LOCKING) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/stdarg.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/align.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/limits.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/limits.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/vdso/limits.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/linkage.h \
    $(wildcard include/config/ARCH_USE_SYM_ANNOTATIONS) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/stringify.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/export.h \
    $(wildcard include/config/MODVERSIONS) \
    $(wildcard include/config/MODULE_REL_CRCS) \
    $(wildcard include/config/HAVE_ARCH_PREL32_RELOCATIONS) \
    $(wildcard include/config/TRIM_UNUSED_KSYMS) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/linkage.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/compiler.h \
    $(wildcard include/config/TRACE_BRANCH_PROFILING) \
    $(wildcard include/config/PROFILE_ALL_BRANCHES) \
    $(wildcard include/config/STACK_VALIDATION) \
  arch/arm/include/generated/asm/rwonce.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/rwonce.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/kasan-checks.h \
    $(wildcard include/config/KASAN_GENERIC) \
    $(wildcard include/config/KASAN_SW_TAGS) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/kcsan-checks.h \
    $(wildcard include/config/KCSAN) \
    $(wildcard include/config/KCSAN_IGNORE_ATOMICS) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/bitops.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/bits.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/vdso/bits.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/build_bug.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/typecheck.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/kernel.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/sysinfo.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/bitops.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/irqflags.h \
    $(wildcard include/config/TRACE_IRQFLAGS) \
    $(wildcard include/config/IRQSOFF_TRACER) \
    $(wildcard include/config/PREEMPT_TRACER) \
    $(wildcard include/config/DEBUG_IRQFLAGS) \
    $(wildcard include/config/TRACE_IRQFLAGS_SUPPORT) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/irqflags.h \
    $(wildcard include/config/CPU_V7M) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/ARM_THUMB) \
    $(wildcard include/config/THUMB2_KERNEL) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/uapi/asm/ptrace.h \
    $(wildcard include/config/CPU_ENDIAN_BE8) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/hwcap.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/uapi/asm/hwcap.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/irqflags.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/percpu.h \
    $(wildcard include/config/CPU_V6) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/percpu.h \
    $(wildcard include/config/DEBUG_PREEMPT) \
    $(wildcard include/config/HAVE_SETUP_PER_CPU_AREA) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/threads.h \
    $(wildcard include/config/NR_CPUS) \
    $(wildcard include/config/BASE_SMALL) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/percpu-defs.h \
    $(wildcard include/config/DEBUG_FORCE_WEAK_PER_CPU) \
    $(wildcard include/config/AMD_MEM_ENCRYPT) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/barrier.h \
    $(wildcard include/config/CPU_32v6K) \
    $(wildcard include/config/CPU_XSC3) \
    $(wildcard include/config/CPU_FA526) \
    $(wildcard include/config/ARM_HEAVY_MB) \
    $(wildcard include/config/ARM_DMA_MEM_BUFFERABLE) \
    $(wildcard include/config/CPU_SPECTRE) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/barrier.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/bitops/non-atomic.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/bitops/builtin-__fls.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/bitops/builtin-__ffs.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/bitops/builtin-fls.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/bitops/builtin-ffs.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/bitops/ffz.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/bitops/fls64.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/bitops/sched.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/bitops/hweight.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/bitops/arch_hweight.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/bitops/const_hweight.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/bitops/lock.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/atomic.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/atomic.h \
    $(wildcard include/config/GENERIC_ATOMIC64) \
    $(wildcard include/config/ARM_LPAE) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/prefetch.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/processor.h \
    $(wildcard include/config/HAVE_HW_BREAKPOINT) \
    $(wildcard include/config/BINFMT_ELF_FDPIC) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/hw_breakpoint.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/unified.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/vdso/processor.h \
    $(wildcard include/config/ARM_ERRATA_754327) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/cache.h \
    $(wildcard include/config/ARM_L1_CACHE_SHIFT) \
    $(wildcard include/config/AEABI) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/cmpxchg.h \
    $(wildcard include/config/CPU_SA1100) \
    $(wildcard include/config/CPU_SA110) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/cmpxchg-local.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/atomic/atomic-arch-fallback.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/atomic/atomic-long.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/atomic/atomic-instrumented.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/instrumented.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/bitops/instrumented-lock.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/bitops/find.h \
    $(wildcard include/config/GENERIC_FIND_FIRST_BIT) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/bitops/le.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/uapi/asm/byteorder.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/byteorder/little_endian.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/byteorder/little_endian.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/swab.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/swab.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/swab.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/uapi/asm/swab.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/byteorder/generic.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/kstrtox.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/log2.h \
    $(wildcard include/config/ARCH_HAS_ILOG2_U32) \
    $(wildcard include/config/ARCH_HAS_ILOG2_U64) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/math.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/div64.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/compiler.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/div64.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/minmax.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/panic.h \
    $(wildcard include/config/PANIC_TIMEOUT) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/printk.h \
    $(wildcard include/config/MESSAGE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_QUIET) \
    $(wildcard include/config/EARLY_PRINTK) \
    $(wildcard include/config/PRINTK) \
    $(wildcard include/config/DYNAMIC_DEBUG) \
    $(wildcard include/config/DYNAMIC_DEBUG_CORE) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/init.h \
    $(wildcard include/config/STRICT_KERNEL_RWX) \
    $(wildcard include/config/STRICT_MODULE_RWX) \
    $(wildcard include/config/LTO_CLANG) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/kern_levels.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/cache.h \
    $(wildcard include/config/ARCH_HAS_CACHE_LINE_SIZE) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/ratelimit_types.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/param.h \
  arch/arm/include/generated/uapi/asm/param.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/param.h \
    $(wildcard include/config/HZ) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/asm-generic/param.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/spinlock_types.h \
    $(wildcard include/config/PREEMPT_RT) \
    $(wildcard include/config/DEBUG_LOCK_ALLOC) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/spinlock_types_raw.h \
    $(wildcard include/config/DEBUG_SPINLOCK) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/spinlock_types_up.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/lockdep_types.h \
    $(wildcard include/config/PROVE_RAW_LOCK_NESTING) \
    $(wildcard include/config/PREEMPT_LOCK) \
    $(wildcard include/config/LOCKDEP) \
    $(wildcard include/config/LOCK_STAT) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/rwlock_types.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/once_lite.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/static_call_types.h \
    $(wildcard include/config/HAVE_STATIC_CALL) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/stat.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/uapi/asm/stat.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/stat.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/time.h \
    $(wildcard include/config/POSIX_TIMERS) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/math64.h \
    $(wildcard include/config/ARCH_SUPPORTS_INT128) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/vdso/math64.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/time64.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/vdso/time64.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/time.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/time_types.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/time32.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/timex.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/timex.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/timex.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/vdso/time32.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/vdso/time.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/uidgid.h \
    $(wildcard include/config/MULTIUSER) \
    $(wildcard include/config/USER_NS) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/highuid.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/buildid.h \
    $(wildcard include/config/CRASH_CORE) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/mm_types.h \
    $(wildcard include/config/HAVE_ALIGNED_STRUCT_PAGE) \
    $(wildcard include/config/MEMCG) \
    $(wildcard include/config/AUFS_FS) \
    $(wildcard include/config/USERFAULTFD) \
    $(wildcard include/config/SWAP) \
    $(wildcard include/config/NUMA) \
    $(wildcard include/config/HAVE_ARCH_COMPAT_MMAP_BASES) \
    $(wildcard include/config/MEMBARRIER) \
    $(wildcard include/config/AIO) \
    $(wildcard include/config/MMU_NOTIFIER) \
    $(wildcard include/config/TRANSPARENT_HUGEPAGE) \
    $(wildcard include/config/NUMA_BALANCING) \
    $(wildcard include/config/ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH) \
    $(wildcard include/config/HUGETLB_PAGE) \
    $(wildcard include/config/IOMMU_SUPPORT) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/mm_types_task.h \
    $(wildcard include/config/SPLIT_PTLOCK_CPUS) \
    $(wildcard include/config/ARCH_ENABLE_SPLIT_PMD_PTLOCK) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/cpumask.h \
    $(wildcard include/config/CPUMASK_OFFSTACK) \
    $(wildcard include/config/HOTPLUG_CPU) \
    $(wildcard include/config/DEBUG_PER_CPU_MAPS) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/bitmap.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/string.h \
    $(wildcard include/config/BINARY_PRINTF) \
    $(wildcard include/config/FORTIFY_SOURCE) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/err.h \
  arch/arm/include/generated/uapi/asm/errno.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/asm-generic/errno.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/asm-generic/errno-base.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/errno.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/errno.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/overflow.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/string.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/string.h \
    $(wildcard include/config/KASAN) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/bug.h \
    $(wildcard include/config/BUG_ON_DATA_CORRUPTION) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/bug.h \
    $(wildcard include/config/DEBUG_BUGVERBOSE) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/opcodes.h \
    $(wildcard include/config/CPU_ENDIAN_BE32) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/bug.h \
    $(wildcard include/config/BUG) \
    $(wildcard include/config/GENERIC_BUG_RELATIVE_POINTERS) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/instrumentation.h \
    $(wildcard include/config/DEBUG_ENTRY) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/page.h \
    $(wildcard include/config/CPU_COPY_V4WT) \
    $(wildcard include/config/CPU_COPY_V4WB) \
    $(wildcard include/config/CPU_COPY_FEROCEON) \
    $(wildcard include/config/CPU_COPY_FA) \
    $(wildcard include/config/CPU_XSCALE) \
    $(wildcard include/config/CPU_COPY_V6) \
    $(wildcard include/config/KUSER_HELPERS) \
    $(wildcard include/config/HAVE_ARCH_PFN_VALID) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/glue.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/pgtable-2level-types.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/memory.h \
    $(wildcard include/config/NEED_MACH_MEMORY_H) \
    $(wildcard include/config/PAGE_OFFSET) \
    $(wildcard include/config/HIGHMEM) \
    $(wildcard include/config/DRAM_BASE) \
    $(wildcard include/config/DRAM_SIZE) \
    $(wildcard include/config/XIP_KERNEL) \
    $(wildcard include/config/HAVE_TCM) \
    $(wildcard include/config/ARM_PATCH_PHYS_VIRT) \
    $(wildcard include/config/PHYS_OFFSET) \
    $(wildcard include/config/DEBUG_VIRTUAL) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/sizes.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/kasan_def.h \
    $(wildcard include/config/KASAN_SHADOW_OFFSET) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/memory_model.h \
    $(wildcard include/config/FLATMEM) \
    $(wildcard include/config/SPARSEMEM_VMEMMAP) \
    $(wildcard include/config/SPARSEMEM) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/pfn.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/getorder.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/auxvec.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/auxvec.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/auxvec.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/uapi/asm/auxvec.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/spinlock.h \
    $(wildcard include/config/PREEMPTION) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/preempt.h \
    $(wildcard include/config/PREEMPT_COUNT) \
    $(wildcard include/config/TRACE_PREEMPT_TOGGLE) \
    $(wildcard include/config/PREEMPT_NOTIFIERS) \
  arch/arm/include/generated/asm/preempt.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/preempt.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/thread_info.h \
    $(wildcard include/config/THREAD_INFO_IN_TASK) \
    $(wildcard include/config/GENERIC_ENTRY) \
    $(wildcard include/config/HAVE_ARCH_WITHIN_STACK_FRAMES) \
    $(wildcard include/config/HARDENED_USERCOPY) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/restart_block.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/STACKPROTECTOR_PER_TASK) \
    $(wildcard include/config/ARM_THUMBEE) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/VFPv3) \
    $(wildcard include/config/IWMMXT) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/bottom_half.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/lockdep.h \
    $(wildcard include/config/DEBUG_LOCKING_API_SELFTESTS) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/smp.h \
    $(wildcard include/config/UP_LATE_INIT) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/smp_types.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/llist.h \
    $(wildcard include/config/ARCH_HAVE_NMI_SAFE_CMPXCHG) \
  arch/arm/include/generated/asm/mmiowb.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/mmiowb.h \
    $(wildcard include/config/MMIOWB) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/spinlock_up.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/rwlock.h \
    $(wildcard include/config/PREEMPT) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/spinlock_api_up.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/rbtree.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/rbtree_types.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/rcupdate.h \
    $(wildcard include/config/PREEMPT_RCU) \
    $(wildcard include/config/TINY_RCU) \
    $(wildcard include/config/TASKS_RCU_GENERIC) \
    $(wildcard include/config/RCU_STALL_COMMON) \
    $(wildcard include/config/NO_HZ_FULL) \
    $(wildcard include/config/RCU_NOCB_CPU) \
    $(wildcard include/config/TASKS_RCU) \
    $(wildcard include/config/TASKS_TRACE_RCU) \
    $(wildcard include/config/TASKS_RUDE_RCU) \
    $(wildcard include/config/TREE_RCU) \
    $(wildcard include/config/DEBUG_OBJECTS_RCU_HEAD) \
    $(wildcard include/config/PROVE_RCU) \
    $(wildcard include/config/ARCH_WEAK_RELEASE_ACQUIRE) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/rcutree.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/rwsem.h \
    $(wildcard include/config/RWSEM_SPIN_ON_OWNER) \
    $(wildcard include/config/DEBUG_RWSEMS) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/completion.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/swait.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/wait.h \
  arch/arm/include/generated/asm/current.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/current.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/wait.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/uprobes.h \
    $(wildcard include/config/UPROBES) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/uprobes.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/probes.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/page-flags-layout.h \
    $(wildcard include/config/KASAN_HW_TAGS) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/numa.h \
    $(wildcard include/config/NODES_SHIFT) \
    $(wildcard include/config/NUMA_KEEP_MEMINFO) \
  include/generated/bounds.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/workqueue.h \
    $(wildcard include/config/DEBUG_OBJECTS_WORK) \
    $(wildcard include/config/FREEZER) \
    $(wildcard include/config/WQ_WATCHDOG) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/timer.h \
    $(wildcard include/config/DEBUG_OBJECTS_TIMERS) \
    $(wildcard include/config/NO_HZ_COMMON) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/ktime.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/jiffies.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/vdso/jiffies.h \
  include/generated/timeconst.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/vdso/ktime.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/timekeeping.h \
    $(wildcard include/config/GENERIC_CMOS_UPDATE) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/clocksource_ids.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/debugobjects.h \
    $(wildcard include/config/DEBUG_OBJECTS) \
    $(wildcard include/config/DEBUG_OBJECTS_FREE) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/seqlock.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/mutex.h \
    $(wildcard include/config/MUTEX_SPIN_ON_OWNER) \
    $(wildcard include/config/DEBUG_MUTEXES) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/osq_lock.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/debug_locks.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/ww_mutex.h \
    $(wildcard include/config/DEBUG_RT_MUTEXES) \
    $(wildcard include/config/DEBUG_WW_MUTEX_SLOWPATH) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/rtmutex.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/mmu.h \
    $(wildcard include/config/CPU_HAS_ASID) \
    $(wildcard include/config/VDSO) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/kmod.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/umh.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/gfp.h \
    $(wildcard include/config/ZONE_DMA) \
    $(wildcard include/config/ZONE_DMA32) \
    $(wildcard include/config/ZONE_DEVICE) \
    $(wildcard include/config/PM_SLEEP) \
    $(wildcard include/config/CONTIG_ALLOC) \
    $(wildcard include/config/CMA) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/mmdebug.h \
    $(wildcard include/config/DEBUG_VM) \
    $(wildcard include/config/DEBUG_VM_PGFLAGS) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/mmzone.h \
    $(wildcard include/config/FORCE_MAX_ZONEORDER) \
    $(wildcard include/config/MEMORY_ISOLATION) \
    $(wildcard include/config/ZSMALLOC) \
    $(wildcard include/config/SHADOW_CALL_STACK) \
    $(wildcard include/config/MEMORY_HOTPLUG) \
    $(wildcard include/config/COMPACTION) \
    $(wildcard include/config/PAGE_EXTENSION) \
    $(wildcard include/config/DEFERRED_STRUCT_PAGE_INIT) \
    $(wildcard include/config/HAVE_MEMORYLESS_NODES) \
    $(wildcard include/config/SPARSEMEM_EXTREME) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/nodemask.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/pageblock-flags.h \
    $(wildcard include/config/HUGETLB_PAGE_SIZE_VARIABLE) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/page-flags.h \
    $(wildcard include/config/ARCH_USES_PG_UNCACHED) \
    $(wildcard include/config/MEMORY_FAILURE) \
    $(wildcard include/config/PAGE_IDLE_FLAG) \
    $(wildcard include/config/THP_SWAP) \
    $(wildcard include/config/KSM) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/local_lock.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/local_lock_internal.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/memory_hotplug.h \
    $(wildcard include/config/ARCH_HAS_ADD_PAGES) \
    $(wildcard include/config/HAVE_ARCH_NODEDATA_EXTENSION) \
    $(wildcard include/config/MEMORY_HOTREMOVE) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/notifier.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/srcu.h \
    $(wildcard include/config/TINY_SRCU) \
    $(wildcard include/config/SRCU) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/rcu_segcblist.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/srcutree.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/rcu_node_tree.h \
    $(wildcard include/config/RCU_FANOUT) \
    $(wildcard include/config/RCU_FANOUT_LEAF) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/topology.h \
    $(wildcard include/config/USE_PERCPU_NUMA_NODE_ID) \
    $(wildcard include/config/SCHED_SMT) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/arch_topology.h \
    $(wildcard include/config/GENERIC_ARCH_TOPOLOGY) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/percpu.h \
    $(wildcard include/config/NEED_PER_CPU_EMBED_FIRST_CHUNK) \
    $(wildcard include/config/NEED_PER_CPU_PAGE_FIRST_CHUNK) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/topology.h \
    $(wildcard include/config/ARM_CPU_TOPOLOGY) \
    $(wildcard include/config/BL_SWITCHER) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/topology.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/sysctl.h \
    $(wildcard include/config/SYSCTL) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/sysctl.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/elf.h \
    $(wildcard include/config/ARCH_USE_GNU_PROPERTY) \
    $(wildcard include/config/ARCH_HAVE_ELF_PROT) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/elf.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/vdso_datapage.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/vdso/datapage.h \
    $(wildcard include/config/ARCH_HAS_VDSO_DATA) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/asm-generic/errno-base.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/vdso/clocksource.h \
    $(wildcard include/config/GENERIC_GETTIMEOFDAY) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/vdso/clocksource.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/vdso/processor.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/vdso/gettimeofday.h \
    $(wildcard include/config/ARM_ARCH_TIMER) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/unistd.h \
    $(wildcard include/config/OABI_COMPAT) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/uapi/asm/unistd.h \
  arch/arm/include/generated/uapi/asm/unistd-eabi.h \
  arch/arm/include/generated/asm/unistd-nr.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/vdso/cp15.h \
    $(wildcard include/config/CPU_CP15) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/user.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/elf.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/elf-em.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/kobject.h \
    $(wildcard include/config/UEVENT_HELPER) \
    $(wildcard include/config/DEBUG_KOBJECT_RELEASE) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/sysfs.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/kernfs.h \
    $(wildcard include/config/KERNFS) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/idr.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/radix-tree.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/xarray.h \
    $(wildcard include/config/XARRAY_MULTI) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/kconfig.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/kobject_ns.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/kref.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/refcount.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/moduleparam.h \
    $(wildcard include/config/ALPHA) \
    $(wildcard include/config/IA64) \
    $(wildcard include/config/PPC64) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/jump_label.h \
    $(wildcard include/config/HAVE_ARCH_JUMP_LABEL_RELATIVE) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/rbtree_latch.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/error-injection.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/error-injection.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/tracepoint-defs.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/static_key.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/cfi.h \
    $(wildcard include/config/CFI_CLANG_SHADOW) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/module.h \
    $(wildcard include/config/ARM_UNWIND) \
    $(wildcard include/config/ARM_MODULE_PLTS) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/module.h \
    $(wildcard include/config/HAVE_MOD_ARCH_SPECIFIC) \
    $(wildcard include/config/MODULES_USE_ELF_REL) \
    $(wildcard include/config/MODULES_USE_ELF_RELA) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/spi/spi.h \
    $(wildcard include/config/SPI_SLAVE) \
    $(wildcard include/config/SPI) \
    $(wildcard include/config/OF) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/device.h \
    $(wildcard include/config/ENERGY_MODEL) \
    $(wildcard include/config/GENERIC_MSI_IRQ_DOMAIN) \
    $(wildcard include/config/PINCTRL) \
    $(wildcard include/config/GENERIC_MSI_IRQ) \
    $(wildcard include/config/DMA_OPS) \
    $(wildcard include/config/DMA_DECLARE_COHERENT) \
    $(wildcard include/config/DMA_CMA) \
    $(wildcard include/config/SWIOTLB) \
    $(wildcard include/config/ARCH_HAS_SYNC_DMA_FOR_DEVICE) \
    $(wildcard include/config/ARCH_HAS_SYNC_DMA_FOR_CPU) \
    $(wildcard include/config/ARCH_HAS_SYNC_DMA_FOR_CPU_ALL) \
    $(wildcard include/config/DMA_OPS_BYPASS) \
    $(wildcard include/config/DEVTMPFS) \
    $(wildcard include/config/SYSFS_DEPRECATED) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/dev_printk.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/ratelimit.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/sched.h \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_NATIVE) \
    $(wildcard include/config/SCHED_INFO) \
    $(wildcard include/config/SCHEDSTATS) \
    $(wildcard include/config/FAIR_GROUP_SCHED) \
    $(wildcard include/config/RT_GROUP_SCHED) \
    $(wildcard include/config/RT_MUTEXES) \
    $(wildcard include/config/UCLAMP_TASK) \
    $(wildcard include/config/UCLAMP_BUCKETS_COUNT) \
    $(wildcard include/config/KMAP_LOCAL) \
    $(wildcard include/config/SCHED_CORE) \
    $(wildcard include/config/CGROUP_SCHED) \
    $(wildcard include/config/BLK_DEV_IO_TRACE) \
    $(wildcard include/config/PSI) \
    $(wildcard include/config/COMPAT_BRK) \
    $(wildcard include/config/CGROUPS) \
    $(wildcard include/config/BLK_CGROUP) \
    $(wildcard include/config/PAGE_OWNER) \
    $(wildcard include/config/EVENTFD) \
    $(wildcard include/config/STACKPROTECTOR) \
    $(wildcard include/config/ARCH_HAS_SCALED_CPUTIME) \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_GEN) \
    $(wildcard include/config/POSIX_CPUTIMERS) \
    $(wildcard include/config/POSIX_CPU_TIMERS_TASK_WORK) \
    $(wildcard include/config/KEYS) \
    $(wildcard include/config/SYSVIPC) \
    $(wildcard include/config/DETECT_HUNG_TASK) \
    $(wildcard include/config/IO_URING) \
    $(wildcard include/config/AUDIT) \
    $(wildcard include/config/AUDITSYSCALL) \
    $(wildcard include/config/UBSAN) \
    $(wildcard include/config/UBSAN_TRAP) \
    $(wildcard include/config/BLOCK) \
    $(wildcard include/config/TASK_XACCT) \
    $(wildcard include/config/CPUSETS) \
    $(wildcard include/config/X86_CPU_RESCTRL) \
    $(wildcard include/config/FUTEX) \
    $(wildcard include/config/COMPAT) \
    $(wildcard include/config/PERF_EVENTS) \
    $(wildcard include/config/RSEQ) \
    $(wildcard include/config/TASK_DELAY_ACCT) \
    $(wildcard include/config/FAULT_INJECTION) \
    $(wildcard include/config/LATENCYTOP) \
    $(wildcard include/config/KUNIT) \
    $(wildcard include/config/FUNCTION_GRAPH_TRACER) \
    $(wildcard include/config/BCACHE) \
    $(wildcard include/config/VMAP_STACK) \
    $(wildcard include/config/SECURITY) \
    $(wildcard include/config/BPF_SYSCALL) \
    $(wildcard include/config/GCC_PLUGIN_STACKLEAK) \
    $(wildcard include/config/X86_MCE) \
    $(wildcard include/config/KRETPROBES) \
    $(wildcard include/config/ARCH_HAS_PARANOID_L1D_FLUSH) \
    $(wildcard include/config/ARCH_TASK_STRUCT_ON_STACK) \
    $(wildcard include/config/DEBUG_RSEQ) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/sched.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/pid.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/rculist.h \
    $(wildcard include/config/PROVE_RCU_LIST) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/sem.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/sem.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/ipc.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/rhashtable-types.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/ipc.h \
  arch/arm/include/generated/uapi/asm/ipcbuf.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/asm-generic/ipcbuf.h \
  arch/arm/include/generated/uapi/asm/sembuf.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/asm-generic/sembuf.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/shm.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/shm.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/asm-generic/hugetlb_encode.h \
  arch/arm/include/generated/uapi/asm/shmbuf.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/asm-generic/shmbuf.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/shmparam.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/plist.h \
    $(wildcard include/config/DEBUG_PLIST) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/hrtimer.h \
    $(wildcard include/config/HIGH_RES_TIMERS) \
    $(wildcard include/config/TIME_LOW_RES) \
    $(wildcard include/config/TIMERFD) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/hrtimer_defs.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/timerqueue.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/seccomp.h \
    $(wildcard include/config/SECCOMP) \
    $(wildcard include/config/HAVE_ARCH_SECCOMP_FILTER) \
    $(wildcard include/config/SECCOMP_FILTER) \
    $(wildcard include/config/CHECKPOINT_RESTORE) \
    $(wildcard include/config/SECCOMP_CACHE_DEBUG) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/seccomp.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/seccomp.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/seccomp.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/unistd.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/resource.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/resource.h \
  arch/arm/include/generated/uapi/asm/resource.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/resource.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/asm-generic/resource.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/latencytop.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/sched/prio.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/sched/types.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/signal_types.h \
    $(wildcard include/config/OLD_SIGACTION) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/signal.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/signal.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/uapi/asm/signal.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/asm-generic/signal-defs.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/uapi/asm/sigcontext.h \
  arch/arm/include/generated/uapi/asm/siginfo.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/asm-generic/siginfo.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/syscall_user_dispatch.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/task_io_accounting.h \
    $(wildcard include/config/TASK_IO_ACCOUNTING) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/posix-timers.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/alarmtimer.h \
    $(wildcard include/config/RTC_CLASS) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/task_work.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/rseq.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/kcsan.h \
  arch/arm/include/generated/asm/kmap_size.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/kmap_size.h \
    $(wildcard include/config/DEBUG_KMAP_LOCAL) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/energy_model.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/sched/cpufreq.h \
    $(wildcard include/config/CPU_FREQ) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/sched/topology.h \
    $(wildcard include/config/SCHED_DEBUG) \
    $(wildcard include/config/SCHED_MC) \
    $(wildcard include/config/CPU_FREQ_GOV_SCHEDUTIL) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/sched/idle.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/ioport.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/klist.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/pm.h \
    $(wildcard include/config/VT_CONSOLE_SLEEP) \
    $(wildcard include/config/PM) \
    $(wildcard include/config/PM_CLK) \
    $(wildcard include/config/PM_GENERIC_DOMAINS) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/device/bus.h \
    $(wildcard include/config/ACPI) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/device/class.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/device/driver.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/device.h \
    $(wildcard include/config/DMABOUNCE) \
    $(wildcard include/config/ARM_DMA_USE_IOMMU) \
    $(wildcard include/config/ARCH_OMAP) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/pm_wakeup.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/mod_devicetable.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/uuid.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/uuid.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/slab.h \
    $(wildcard include/config/DEBUG_SLAB) \
    $(wildcard include/config/FAILSLAB) \
    $(wildcard include/config/MEMCG_KMEM) \
    $(wildcard include/config/HAVE_HARDENED_USERCOPY_ALLOCATOR) \
    $(wildcard include/config/SLAB) \
    $(wildcard include/config/SLUB) \
    $(wildcard include/config/SLOB) \
    $(wildcard include/config/CC_IS_GCC) \
    $(wildcard include/config/CLANG_VERSION) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/percpu-refcount.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/kasan.h \
    $(wildcard include/config/KASAN_STACK) \
    $(wildcard include/config/KASAN_VMALLOC) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/kthread.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/scatterlist.h \
    $(wildcard include/config/NEED_SG_DMA_LENGTH) \
    $(wildcard include/config/DEBUG_SG) \
    $(wildcard include/config/SGL_ALLOC) \
    $(wildcard include/config/ARCH_NO_SG_CHAIN) \
    $(wildcard include/config/SG_POOL) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/mm.h \
    $(wildcard include/config/HAVE_ARCH_MMAP_RND_BITS) \
    $(wildcard include/config/HAVE_ARCH_MMAP_RND_COMPAT_BITS) \
    $(wildcard include/config/DEBUG_INFO_BTF) \
    $(wildcard include/config/MEM_SOFT_DIRTY) \
    $(wildcard include/config/ARCH_USES_HIGH_VMA_FLAGS) \
    $(wildcard include/config/ARCH_HAS_PKEYS) \
    $(wildcard include/config/PPC) \
    $(wildcard include/config/X86) \
    $(wildcard include/config/PARISC) \
    $(wildcard include/config/SPARC64) \
    $(wildcard include/config/ARM64) \
    $(wildcard include/config/ARM64_MTE) \
    $(wildcard include/config/HAVE_ARCH_USERFAULTFD_MINOR) \
    $(wildcard include/config/STACK_GROWSUP) \
    $(wildcard include/config/SHMEM) \
    $(wildcard include/config/DEV_PAGEMAP_OPS) \
    $(wildcard include/config/DEVICE_PRIVATE) \
    $(wildcard include/config/PCI_P2PDMA) \
    $(wildcard include/config/MIGRATION) \
    $(wildcard include/config/ARCH_HAS_PTE_SPECIAL) \
    $(wildcard include/config/ARCH_HAS_PTE_DEVMAP) \
    $(wildcard include/config/DEBUG_VM_RB) \
    $(wildcard include/config/PAGE_POISONING) \
    $(wildcard include/config/INIT_ON_ALLOC_DEFAULT_ON) \
    $(wildcard include/config/INIT_ON_FREE_DEFAULT_ON) \
    $(wildcard include/config/DEBUG_PAGEALLOC) \
    $(wildcard include/config/HUGETLBFS) \
    $(wildcard include/config/MAPPING_DIRTY_HELPERS) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/mmap_lock.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/range.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/bit_spinlock.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/shrinker.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/page_ext.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/stacktrace.h \
    $(wildcard include/config/STACKTRACE) \
    $(wildcard include/config/ARCH_STACKWALK) \
    $(wildcard include/config/HAVE_RELIABLE_STACKTRACE) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/stackdepot.h \
    $(wildcard include/config/STACKDEPOT) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/page_ref.h \
    $(wildcard include/config/DEBUG_PAGE_REF) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/memremap.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/pgtable.h \
    $(wildcard include/config/PGTABLE_LEVELS) \
    $(wildcard include/config/HIGHPTE) \
    $(wildcard include/config/GUP_GET_PTE_LOW_HIGH) \
    $(wildcard include/config/HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD) \
    $(wildcard include/config/HAVE_ARCH_SOFT_DIRTY) \
    $(wildcard include/config/ARCH_ENABLE_THP_MIGRATION) \
    $(wildcard include/config/HAVE_ARCH_HUGE_VMAP) \
    $(wildcard include/config/X86_ESPFIX64) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/pgtable.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/proc-fns.h \
    $(wildcard include/config/BIG_LITTLE) \
    $(wildcard include/config/HARDEN_BRANCH_PREDICTOR) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/glue-proc.h \
    $(wildcard include/config/CPU_ARM7TDMI) \
    $(wildcard include/config/CPU_ARM720T) \
    $(wildcard include/config/CPU_ARM740T) \
    $(wildcard include/config/CPU_ARM9TDMI) \
    $(wildcard include/config/CPU_ARM920T) \
    $(wildcard include/config/CPU_ARM922T) \
    $(wildcard include/config/CPU_ARM925T) \
    $(wildcard include/config/CPU_ARM926T) \
    $(wildcard include/config/CPU_ARM940T) \
    $(wildcard include/config/CPU_ARM946E) \
    $(wildcard include/config/CPU_ARM1020) \
    $(wildcard include/config/CPU_ARM1020E) \
    $(wildcard include/config/CPU_ARM1022) \
    $(wildcard include/config/CPU_ARM1026) \
    $(wildcard include/config/CPU_MOHAWK) \
    $(wildcard include/config/CPU_FEROCEON) \
    $(wildcard include/config/CPU_V6K) \
    $(wildcard include/config/CPU_PJ4B) \
    $(wildcard include/config/CPU_V7) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/pgtable-nopud.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/pgtable-nop4d.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/pgtable-hwdef.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/pgtable-2level-hwdef.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/tlbflush.h \
    $(wildcard include/config/SMP_ON_UP) \
    $(wildcard include/config/CPU_TLB_V4WT) \
    $(wildcard include/config/CPU_TLB_FA) \
    $(wildcard include/config/CPU_TLB_V4WBI) \
    $(wildcard include/config/CPU_TLB_FEROCEON) \
    $(wildcard include/config/CPU_TLB_V4WB) \
    $(wildcard include/config/CPU_TLB_V6) \
    $(wildcard include/config/CPU_TLB_V7) \
    $(wildcard include/config/ARM_ERRATA_720789) \
    $(wildcard include/config/ARM_ERRATA_798181) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/pgtable-2level.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/pgtable_uffd.h \
    $(wildcard include/config/HAVE_ARCH_USERFAULTFD_WP) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/huge_mm.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/sched/coredump.h \
    $(wildcard include/config/CORE_DUMP_DEFAULT_ELF_HEADERS) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/fs.h \
    $(wildcard include/config/READ_ONLY_THP_FOR_FS) \
    $(wildcard include/config/FS_POSIX_ACL) \
    $(wildcard include/config/CGROUP_WRITEBACK) \
    $(wildcard include/config/IMA) \
    $(wildcard include/config/FILE_LOCKING) \
    $(wildcard include/config/FSNOTIFY) \
    $(wildcard include/config/FS_ENCRYPTION) \
    $(wildcard include/config/FS_VERITY) \
    $(wildcard include/config/EPOLL) \
    $(wildcard include/config/UNICODE) \
    $(wildcard include/config/QUOTA) \
    $(wildcard include/config/FS_DAX) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/wait_bit.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/kdev_t.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/kdev_t.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/dcache.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/rculist_bl.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/list_bl.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/lockref.h \
    $(wildcard include/config/ARCH_USE_CMPXCHG_LOCKREF) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/stringhash.h \
    $(wildcard include/config/DCACHE_WORD_ACCESS) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/hash.h \
    $(wildcard include/config/HAVE_ARCH_HASH) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/path.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/list_lru.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/capability.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/capability.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/semaphore.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/fcntl.h \
    $(wildcard include/config/ARCH_32BIT_OFF_T) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/fcntl.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/uapi/asm/fcntl.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/asm-generic/fcntl.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/openat2.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/migrate_mode.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/percpu-rwsem.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/rcuwait.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/sched/signal.h \
    $(wildcard include/config/SCHED_AUTOGROUP) \
    $(wildcard include/config/BSD_PROCESS_ACCT) \
    $(wildcard include/config/TASKSTATS) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/signal.h \
    $(wildcard include/config/PROC_FS) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/sched/jobctl.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/sched/task.h \
    $(wildcard include/config/HAVE_EXIT_THREAD) \
    $(wildcard include/config/ARCH_WANTS_DYNAMIC_TASK_STRUCT) \
    $(wildcard include/config/HAVE_ARCH_THREAD_STRUCT_WHITELIST) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/uaccess.h \
    $(wildcard include/config/SET_FS) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/fault-inject-usercopy.h \
    $(wildcard include/config/FAULT_INJECTION_USERCOPY) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/uaccess.h \
    $(wildcard include/config/CPU_SW_DOMAIN_PAN) \
    $(wildcard include/config/CPU_USE_DOMAINS) \
    $(wildcard include/config/HAVE_EFFICIENT_UNALIGNED_ACCESS) \
    $(wildcard include/config/UACCESS_WITH_MEMCPY) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/domain.h \
    $(wildcard include/config/IO_36) \
    $(wildcard include/config/CPU_CP15_MMU) \
  arch/arm/include/generated/asm/unaligned.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/unaligned.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/unaligned/packed_struct.h \
  arch/arm/include/generated/asm/extable.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/extable.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/cred.h \
    $(wildcard include/config/DEBUG_CREDENTIALS) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/key.h \
    $(wildcard include/config/KEY_NOTIFICATIONS) \
    $(wildcard include/config/NET) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/assoc_array.h \
    $(wildcard include/config/ASSOCIATIVE_ARRAY) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/sched/user.h \
    $(wildcard include/config/WATCH_QUEUE) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/percpu_counter.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/rcu_sync.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/delayed_call.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/errseq.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/ioprio.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/sched/rt.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/iocontext.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/ioprio.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/fs_types.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/mount.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/mnt_idmapping.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/fs.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/ioctl.h \
  arch/arm/include/generated/uapi/asm/ioctl.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/ioctl.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/asm-generic/ioctl.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/quota.h \
    $(wildcard include/config/QUOTA_NETLINK_INTERFACE) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/dqblk_xfs.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/dqblk_v1.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/dqblk_v2.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/dqblk_qtree.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/projid.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/quota.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/nfs_fs_i.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/vmstat.h \
    $(wildcard include/config/VM_EVENT_COUNTERS) \
    $(wildcard include/config/DEBUG_TLBFLUSH) \
    $(wildcard include/config/DEBUG_VM_VMACACHE) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/vm_event_item.h \
    $(wildcard include/config/MEMORY_BALLOON) \
    $(wildcard include/config/BALLOON_COMPACTION) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/io.h \
    $(wildcard include/config/PCI) \
    $(wildcard include/config/NEED_MACH_IO_H) \
    $(wildcard include/config/PCMCIA_SOC_COMMON) \
    $(wildcard include/config/ISA) \
    $(wildcard include/config/PCCARD) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/pci_iomap.h \
    $(wildcard include/config/NO_GENERIC_PCI_IOPORT_MAP) \
    $(wildcard include/config/GENERIC_PCI_IOMAP) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/io.h \
    $(wildcard include/config/GENERIC_IOMAP) \
    $(wildcard include/config/GENERIC_IOREMAP) \
    $(wildcard include/config/HAS_IOPORT_MAP) \
    $(wildcard include/config/VIRT_TO_BUS) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/logic_pio.h \
    $(wildcard include/config/INDIRECT_PIO) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/fwnode.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/vmalloc.h \
    $(wildcard include/config/HAVE_ARCH_HUGE_VMALLOC) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/vmalloc.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/gpio/consumer.h \
    $(wildcard include/config/GPIOLIB) \
    $(wildcard include/config/OF_GPIO) \
    $(wildcard include/config/GPIO_SYSFS) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/ptp_clock_kernel.h \
    $(wildcard include/config/PTP_1588_CLOCK) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/pps_kernel.h \
    $(wildcard include/config/NTP_PPS) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/pps.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/cdev.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/ptp_clock.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/timecounter.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/skbuff.h \
    $(wildcard include/config/NF_CONNTRACK) \
    $(wildcard include/config/BRIDGE_NETFILTER) \
    $(wildcard include/config/NET_TC_SKB_EXT) \
    $(wildcard include/config/DEBUG_KMAP_LOCAL_FORCE_MAP) \
    $(wildcard include/config/NET_SOCK_MSG) \
    $(wildcard include/config/SKB_EXTENSIONS) \
    $(wildcard include/config/IPV6_NDISC_NODETYPE) \
    $(wildcard include/config/NET_SWITCHDEV) \
    $(wildcard include/config/NET_CLS_ACT) \
    $(wildcard include/config/NET_REDIRECT) \
    $(wildcard include/config/TLS_DEVICE) \
    $(wildcard include/config/NET_SCHED) \
    $(wildcard include/config/NET_RX_BUSY_POLL) \
    $(wildcard include/config/XPS) \
    $(wildcard include/config/NETWORK_SECMARK) \
    $(wildcard include/config/DEBUG_NET) \
    $(wildcard include/config/PAGE_POOL) \
    $(wildcard include/config/NETWORK_PHY_TIMESTAMPING) \
    $(wildcard include/config/XFRM) \
    $(wildcard include/config/MPTCP) \
    $(wildcard include/config/NETFILTER_XT_TARGET_TRACE) \
    $(wildcard include/config/NF_TABLES) \
    $(wildcard include/config/IP_VS) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/bvec.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/highmem.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/hardirq.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/context_tracking_state.h \
    $(wildcard include/config/CONTEXT_TRACKING) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/ftrace_irq.h \
    $(wildcard include/config/HWLAT_TRACER) \
    $(wildcard include/config/OSNOISE_TRACER) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/vtime.h \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING) \
    $(wildcard include/config/IRQ_TIME_ACCOUNTING) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/hardirq.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/irq.h \
    $(wildcard include/config/SPARSE_IRQ) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/hardirq.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/irq.h \
    $(wildcard include/config/GENERIC_IRQ_EFFECTIVE_AFF_MASK) \
    $(wildcard include/config/GENERIC_IRQ_IPI) \
    $(wildcard include/config/IRQ_DOMAIN_HIERARCHY) \
    $(wildcard include/config/GENERIC_IRQ_MIGRATION) \
    $(wildcard include/config/GENERIC_PENDING_IRQ) \
    $(wildcard include/config/HARDIRQS_SW_RESEND) \
    $(wildcard include/config/GENERIC_IRQ_LEGACY) \
    $(wildcard include/config/GENERIC_IRQ_MULTI_HANDLER) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/irqhandler.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/irqreturn.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/irqnr.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/irqnr.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/io.h \
  arch/arm/include/generated/asm/irq_regs.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/irq_regs.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/irqdesc.h \
    $(wildcard include/config/GENERIC_IRQ_DEBUGFS) \
    $(wildcard include/config/IRQ_DOMAIN) \
    $(wildcard include/config/HANDLE_DOMAIN_IRQ) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/hw_irq.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/cacheflush.h \
    $(wildcard include/config/ARM_ERRATA_411920) \
    $(wildcard include/config/CPU_CACHE_VIPT) \
    $(wildcard include/config/OUTER_CACHE) \
    $(wildcard include/config/FRAME_POINTER) \
    $(wildcard include/config/CPU_ICACHE_MISMATCH_WORKAROUND) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/glue-cache.h \
    $(wildcard include/config/CPU_CACHE_V4) \
    $(wildcard include/config/CPU_CACHE_V4WB) \
    $(wildcard include/config/CACHE_B15_RAC) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/cachetype.h \
    $(wildcard include/config/CPU_CACHE_VIVT) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/outercache.h \
    $(wildcard include/config/OUTER_CACHE_SYNC) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/highmem-internal.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/highmem.h \
    $(wildcard include/config/DEBUG_HIGHMEM) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/fixmap.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/fixmap.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/socket.h \
  arch/arm/include/generated/uapi/asm/socket.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/asm-generic/socket.h \
  arch/arm/include/generated/uapi/asm/sockios.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/asm-generic/sockios.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/sockios.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/uio.h \
    $(wildcard include/config/ARCH_HAS_UACCESS_FLUSHCACHE) \
    $(wildcard include/config/ARCH_HAS_COPY_MC) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/uio.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/socket.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/net.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/random.h \
    $(wildcard include/config/ARCH_RANDOM) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/once.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/random.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/prandom.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/siphash.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/sockptr.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/net.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/textsearch.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/net/checksum.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/checksum.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/in6.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/in6.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/libc-compat.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/dma-mapping.h \
    $(wildcard include/config/DMA_API_DEBUG) \
    $(wildcard include/config/HAS_DMA) \
    $(wildcard include/config/NEED_DMA_MAP_STATE) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/dma-direction.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/mem_encrypt.h \
    $(wildcard include/config/ARCH_HAS_MEM_ENCRYPT) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/netdev_features.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/sched/clock.h \
    $(wildcard include/config/HAVE_UNSTABLE_SCHED_CLOCK) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/net/flow_dissector.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/if_ether.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/splice.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/pipe_fs_i.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/if_packet.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/net/flow.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/net/page_pool.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/ptr_ring.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/netfilter/nf_conntrack_common.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/netfilter/nf_conntrack_common.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/spi/spi.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/gpio.h \
    $(wildcard include/config/ARCH_HAVE_CUSTOM_GPIO_H) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/gpio.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/asm-generic/gpio.h \
    $(wildcard include/config/ARCH_NR_GPIO) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/gpio/driver.h \
    $(wildcard include/config/GPIO_GENERIC) \
    $(wildcard include/config/GPIOLIB_IRQCHIP) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/irqchip/chained_irq.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/irqdomain.h \
    $(wildcard include/config/IRQ_DOMAIN_NOMAP) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/of.h \
    $(wildcard include/config/OF_DYNAMIC) \
    $(wildcard include/config/SPARC) \
    $(wildcard include/config/OF_PROMTREE) \
    $(wildcard include/config/OF_KOBJ) \
    $(wildcard include/config/OF_NUMA) \
    $(wildcard include/config/OF_OVERLAY) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/property.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/pinctrl/pinctrl.h \
    $(wildcard include/config/GENERIC_PINCONF) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/seq_file.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/pinctrl/pinctrl-state.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/pinctrl/devinfo.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/pinctrl/consumer.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/pinctrl/pinconf-generic.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/pinctrl/machine.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/of_gpio.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/delay.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/delay.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/miscdevice.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi/linux/major.h \

/home/haidoan2098/workspace/environmental_monitoring_system/kernel_module_drivers/oled_sdd1306/driver/ssd1306_spi_driver.o: $(deps_/home/haidoan2098/workspace/environmental_monitoring_system/kernel_module_drivers/oled_sdd1306/driver/ssd1306_spi_driver.o)

$(deps_/home/haidoan2098/workspace/environmental_monitoring_system/kernel_module_drivers/oled_sdd1306/driver/ssd1306_spi_driver.o):
