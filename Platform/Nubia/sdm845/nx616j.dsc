[Defines]
  PLATFORM_NAME                  = sdm845Pkg
  PLATFORM_GUID                  = 28f1a3bf-193a-47e3-a7b9-5a435eaab2ee
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = sdm845Pkg/Devices/nx616j.fdf

!include sdm845Pkg/sdm845Pkg.dsc
[BuildOptions.common]
  GCC:*_*_AARCH64_CC_FLAGS = -DENABLE_SIMPLE_INIT -DENABLE_LINUX_SIMPLE_MASS_STORAGE

[PcdsFixedAtBuild.common]

  gQcomTokenSpaceGuid.PcdMipiFrameBufferWidth|1080
  gQcomTokenSpaceGuid.PcdMipiFrameBufferHeight|2280

  # Simple Init
  gSimpleInitTokenSpaceGuid.PcdGuiDefaultDPI|440

  gRenegadePkgTokenSpaceGuid.PcdDeviceVendor|"Nubia"
  gRenegadePkgTokenSpaceGuid.PcdDeviceProduct|"X"
  gRenegadePkgTokenSpaceGuid.PcdDeviceCodeName|"nx616j"
