cmd_/home/haidoan2098/workspace/environmental_monitoring_system/kernel_module_drivers/oled_sdd1306/driver/ssd1306_spi_driver.mod.o := arm-poky-linux-gnueabi-gcc -Wp,-MMD,/home/haidoan2098/workspace/environmental_monitoring_system/kernel_module_drivers/oled_sdd1306/driver/.ssd1306_spi_driver.mod.o.d -nostdinc -isystem /opt/poky/4.0.31/sysroots/x86_64-pokysdk-linux/usr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/11.5.0/include -I/home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include -I./arch/arm/include/generated -I/home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include -I./include -I/home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/uapi -I./arch/arm/include/generated/uapi -I/home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/uapi -I./include/generated/uapi -include /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/compiler-version.h -include /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/kconfig.h -include /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/compiler_types.h -D__KERNEL__ -mlittle-endian -fmacro-prefix-map=/home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/= -Wall -Wundef -Werror=strict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Wno-format-security -std=gnu89 -fno-dwarf2-cfi-asm -fno-ipa-sra -mabi=aapcs-linux -mfpu=vfp -funwind-tables -marm -Wa,-mno-warn-deprecated -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-address-of-packed-member -Os -fno-allow-store-data-races -Wframe-larger-than=1024 -fstack-protector-strong -Wimplicit-fallthrough=5 -Wno-main -Wno-unused-but-set-variable -Wno-unused-const-variable -fno-stack-clash-protection -g -pg -Wdeclaration-after-statement -Wvla -Wno-pointer-sign -Wno-stringop-truncation -Wno-zero-length-bounds -Wno-array-bounds -Wno-stringop-overflow -Wno-restrict -Wno-maybe-uninitialized -Wno-alloc-size-larger-than -fno-strict-overflow -fno-stack-check -fconserve-stack -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -Wno-packed-not-aligned --sysroot=/opt/poky/4.0.31/sysroots/cortexa8hf-neon-poky-linux-gnueabi -DMODULE -DKBUILD_BASENAME='"ssd1306_spi_driver.mod"' -DKBUILD_MODNAME='"ssd1306_spi_driver"' -D__KBUILD_MODNAME=kmod_ssd1306_spi_driver -c -o /home/haidoan2098/workspace/environmental_monitoring_system/kernel_module_drivers/oled_sdd1306/driver/ssd1306_spi_driver.mod.o /home/haidoan2098/workspace/environmental_monitoring_system/kernel_module_drivers/oled_sdd1306/driver/ssd1306_spi_driver.mod.c

source_/home/haidoan2098/workspace/environmental_monitoring_system/kernel_module_drivers/oled_sdd1306/driver/ssd1306_spi_driver.mod.o := /home/haidoan2098/workspace/environmental_monitoring_system/kernel_module_drivers/oled_sdd1306/driver/ssd1306_spi_driver.mod.c

deps_/home/haidoan2098/workspace/environmental_monitoring_system/kernel_module_drivers/oled_sdd1306/driver/ssd1306_spi_driver.mod.o := \
    $(wildcard include/config/MODULE_UNLOAD) \
    $(wildcard include/config/RETPOLINE) \
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
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/build-salt.h \
    $(wildcard include/config/BUILD_SALT) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/elfnote.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/elfnote-lto.h \
    $(wildcard include/config/LTO) \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/include/linux/vermagic.h \
  include/generated/utsrelease.h \
  /home/haidoan2098/workspace/yocto-bbb/build/tmp/work-shared/beaglebone-yocto/kernel-source/arch/arm/include/asm/vermagic.h \

/home/haidoan2098/workspace/environmental_monitoring_system/kernel_module_drivers/oled_sdd1306/driver/ssd1306_spi_driver.mod.o: $(deps_/home/haidoan2098/workspace/environmental_monitoring_system/kernel_module_drivers/oled_sdd1306/driver/ssd1306_spi_driver.mod.o)

$(deps_/home/haidoan2098/workspace/environmental_monitoring_system/kernel_module_drivers/oled_sdd1306/driver/ssd1306_spi_driver.mod.o):
