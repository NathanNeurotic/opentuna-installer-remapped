EE_BIN = Installer.elf
EE_BIN_PACKED = OpenTuna_Installer.elf
EE_BIN_STRIPPED = stripped.elf
EE_OBJS = main.o gs.o pad.o  gs_asm.o ps2_asm.o dma_asm.o
EE_OBJS += launchelf_cnf.o ipconfig_dat.o esr_elf.o fmcbd_elf.o boot2_elf.o boot_elf.o icon_sys.o copy_icn.o del_icn.o boot_icn.o config_ini.o OpenTuna_sys.o OpenTuna_SLIMS.o OpenTuna_FAT-170.o OpenTuna_FAT-110-120-150-160.o PADMAN_irx.o SIO2MAN_irx.o MCMAN_irx.o MCSERV_irx.o
EE_SRC =   launchelf_cnf.s ipconfig_dat.s esr_elf.s fmcbd_elf.s boot2_elf.s boot_elf.s icon_sys.s copy_icn.s del_icn.s boot_icn.s config_ini.s OpenTuna_sys.s  OpenTuna_SLIMS.s OpenTuna_FAT-170.s OpenTuna_FAT-110-120-150-160.s PADMAN_irx.c SIO2MAN_irx.c MCMAN_irx.c MCSERV_irx.c
EE_LIBS = -ldebug -lcdvd -lpatches -lpadx -lmc

all:
	$(MAKE) $(EE_BIN_PACKED)
launchelf_cnf.s:
	bin2s INSTALL/BOOT/LAUNCHELF.CNF launchelf_cnf.s launchelf_cnf

ipconfig_dat.s:
	bin2s INSTALL/BOOT/IPCONFIG.DAT ipconfig_dat.s ipconfig_dat

esr_elf.s:
	bin2s INSTALL/BOOT/ESR.ELF esr_elf.s esr_elf

fmcbd_elf.s:
	bin2s INSTALL/BOOT/FMCBD.ELF fmcbd_elf.s fmcbd_elf

boot2_elf.s:
	bin2s INSTALL/BOOT/BOOT2.ELF boot2_elf.s boot2_elf

boot_elf.s:
	bin2s INSTALL/BOOT/BOOT.ELF boot_elf.s boot_elf

icon_sys.s:
	bin2s INSTALL/BOOT/ICON.SYS icon_sys.s icon_sys

copy_icn.s:
	bin2s INSTALL/BOOT/COPY.ICN copy_icn.s copy_icn

del_icn.s:
	bin2s INSTALL/BOOT/DEL.ICN del_icn.s del_icn

boot_icn.s:
	bin2s INSTALL/BOOT/BOOT.ICN boot_icn.s boot_icn

config_ini.s:
	bin2s INSTALL/BOOT/CONFIG.INI config_ini.s config_ini

OpenTuna_sys.s:
	bin2c INSTALL/OPENTUNA/icon.sys OpenTuna_sys.s opentuna_sys

OpenTuna_SLIMS.s:
	bin2c INSTALL/OPENTUNA/OpenTuna_Slims.bin OpenTuna_SLIMS.s opentuna_slims

OpenTuna_FAT-110-120-150-160.s:
	bin2c INSTALL/OPENTUNA/OpenTuna_FAT-110-120-150-160.bin OpenTuna_FAT-110-120-150-160.s opentuna_fats

OpenTuna_FAT-170.s:
	bin2c INSTALL/OPENTUNA/OpenTuna_FAT-170.bin OpenTuna_FAT-170.s opentuna_fat170

SIO2MAN_irx.c: $(PS2SDK)/iop/irx/freesio2.irx
	bin2c $(PS2SDK)/iop/irx/freesio2.irx SIO2MAN_irx.c SIO2MAN_irx

MCMAN_irx.c: $(PS2SDK)/iop/irx/mcman.irx
	bin2c $(PS2SDK)/iop/irx/mcman.irx MCMAN_irx.c MCMAN_irx

MCSERV_irx.c: $(PS2SDK)/iop/irx/mcserv.irx
	bin2c $(PS2SDK)/iop/irx/mcserv.irx MCSERV_irx.c MCSERV_irx

PADMAN_irx.c: $(PS2SDK)/iop/irx/freepad.irx
	bin2c $(PS2SDK)/iop/irx/freepad.irx PADMAN_irx.c PADMAN_irx

clean:
	rm -fr $(EE_OBJS) $(EE_BIN_PACKED) $(EE_BIN_STRIPPED) $(EE_BIN) $(EE_SRC)

$(EE_BIN_STRIPPED): $(EE_BIN)
	$(EE_STRIP) -o $@ $<

$(EE_BIN_PACKED): $(EE_BIN_STRIPPED)
	ps2-packer $< $@ > /dev/null

include $(PS2SDK)/samples/Makefile.pref
include $(PS2SDK)/samples/Makefile.eeglobal
