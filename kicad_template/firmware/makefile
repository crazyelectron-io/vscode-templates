APP        = #{application}

CC         = gcc
LINKER     = ld -o
RM         = rm -f
MKDIR      = mkdir -p
RMDIR      = rmdir

SRCDIR     = src
OBJDIR     = obj
BINDIR     = bin

CFLAGS    :=
LFLAGS    :=
DEPS      := $(SRCDIR)/#{application}.h
OBJ       := $(OBJDIR)/#{application}.o
DIRS      := $(OBJDIR) $(BINDIR)

.PHONEY: all
all: directories #{application}

#{application}: directories $(BINDIR)/$(APP)

.PHONEY: directories
directories: $(DIRS)

$(OBJDIR):
	@$(MKDIR) $(OBJDIR)

$(BINDIR):
	@$(MKDIR) $(BINDIR)

$(OBJDIR)/%.o: $(SRCDIR)/%.asm $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)
	@echo "Compiled "$@" successfully"

$(BINDIR)/$(APP): $(OBJ) $(OBJ)
	$(LINKER) $@ $^ $(LFLAGS)
	@echo "Linking "$@" complete"

.PHONEY: clean
clean:
	$(RM) $(OBJDIR)/*.o
	@echo "Derived objects removed"

.PHONEY: realclean
realclean: clean
	@$(RM) $(BINDIR)/*
	@$(RMDIR) $(OBJDIR)
	@$(RMDIR) $(BINDIR)
	@echo "Binaries removed"
