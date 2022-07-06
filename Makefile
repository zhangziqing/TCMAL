PREFIX = ../chiplab/toolchains/loongarch32r-linux-gnusf/bin/loongarch32r-linux-gnusf-
CC = $(PREFIX)gcc
OBJDUMP = $(PREFIX)objdump 
AS = $(PREFIX)as
OBJCOPY = $(PREFIX)objcopy
LD = $(PREFIX)ld
COMMON_FLAG += -march=loongarch32r 
ASFLAG += -O0 $(COMMON_FLAG)
CFLAGS += $(COMMON_FLAG) -nostdlib -static -O2 -fno-pic -fdata-sections -ffunction-sections -fno-asynchronous-unwind-tables -fno-builtin -fno-stack-protector  -mno-check-zero-division\
		-Wno-main -U_FORTIFY_SOURCE 
LDFLAGS = --defsym=_pmem_start=0x1c000000 --defsym=_entry_offset=0x0 --gc-section -e _start -T linker.ld
CCSRC ?= $(shell find src -name '*.c')
ASSRC ?= $(shell find src -name '*.s')
TARGET_DIR := build
DATA_GEN_MOD =  utils/data
OBJS = $(ASSRC:%.s=$(TARGET_DIR)/%.o) $(CCSRC:%.c=$(TARGET_DIR)/%.o)
TARGET ?= test
IMAGE ?= test

#Compile pattern
$(TARGET_DIR)/%.o: %.s
	@echo + AS $<
	@mkdir -p $(dir $@)
	@$(CC) $(ASFLAG) $< -c -o $@ 

$(TARGET_DIR)/%.o: %.c
	@echo + CC $<
	@mkdir -p $(dir $@)
	@$(CC) $(CFLAGS) -c -o $@ $<


.PHONY:all dump help

all :$(OBJS)
	@echo LD + $(OBJS) > $(TARGET_DIR)/$(IMAGE).elf
	@$(LD) $(LDFLAGS) $(OBJS) -o $(TARGET_DIR)/$(IMAGE).elf
objdump :
	$(OBJDUMP) -aD $(FLAGS) $(TARGET_DIR)/$(TARGET).elf > $(TARGET_DIR)/test.s
objcopy:
	$(OBJCOPY) -O binary $(TARGET_DIR)/$(IMAGE).elf $(TARGET_DIR)/$(IMAGE).bin  
$(DATA_GEN_MOD):
	gcc -o utils/data_gen utils/test.c
data:$(DATA_GEN_MOD)
	./utils/data_gen $(IMAGE).bin

clean:
	rm -rf test.elf test.s test.bin build mem*
help:
	@echo this is a simple script to create the pure binary file
	@echo all :
	@echo  "\t create the elf format file" 
	@echo objdump :
	@echo  "\t dump the elf file"
	@echo objcopy :
	@echo  "\t copy the prue binary file from the elf file"
	@echo clean :
	@echo  "\t clean the object file"
	@echo by Zakilim

