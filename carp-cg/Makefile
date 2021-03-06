# TOP LEVEL MAKEFILE FOR LIB SAMPLE PROBLEMS

#====================================================================
# ------------------------
# | CVS File Information |
# ------------------------
#
# $RCSfile: Makefile_dist_app,v $
#
# $Author: tuminaro $
#
# $Date: 2000/06/02 16:49:21 $
#
# $Revision: 1.36 $
#
# $Name:  $
#====================================================================
COMM    = SERIAL
MACHINE = GENERIC
MPI_INCLUDE_DIR = -I/opt/mpich-1.2.4/include
MPI_LIB     = -L/opt/mpich-1.2.4/lib
#
# ANSI C compiler
#
CC_GENERIC      = cc
CC_SUN4         = acc
CC_SOLARIS      = cc
CC_SGI          = cc
CC_SGIM4        = cc
CC_SGI10K	= cc
CC_DEC          = cc
CC_I860         = icc
CC_HP           = cc
CC_SUNMOS       = sicc
CC_NCUBE        = ncc
CC_SP2          = mpcc
CC_T3E          = cc
CC_LINUX        = gcc
CC_TFLOP        = pgcc -cougar

#
# Fortran compiler
#
FC_GENERIC      = f77
FC_SUN4         = f77
FC_SOLARIS      = f77
FC_SGI          = f77
FC_SGIM4        = f77
FC_SGI10K	= f77
FC_DEC          = f77
FC_I860         = if77
FC_HP           = cc
FC_SUNMOS       = sif77
FC_NCUBE        = ncc
FC_SP2          = mpxlf
FC_T3E          = f90
FC_LINUX        = g77
FC_TFLOP        = pgf77 -cougar
#
# USE C or Fortran compiler to link
#
LD_GENERIC      = $(CC_GENERIC)
LD_SUN4         = $(FC_SUN4)
LD_SOLARIS      = $(FC_SOLARIS)
LD_SGI          = $(FC_SGI)
LD_SGIM4        = $(FC_SGIM4)
LD_SGI10K	= $(FC_SGI10K)
LD_DEC          = $(CC_DEC)
LD_I860         = $(CC_I860)
LD_HP           = $(CC_HP)
LD_SUNMOS       = $(CC_SUNMOS)
LD_NCUBE        = $(CC_NCUBE)
LD_SP2          = $(CC_SP2)
LD_T3E          = $(CC_T3E)
LD_LINUX        = $(CC_LINUX)
LD_TFLOP        = $(CC_TFLOP)

#
# Machine dependent fortran/C interface
#
CFORT_GENERIC     = -Dappend_
CFORT_SUN4        = -Dappend_
CFORT_SOLARIS     = -Dappend_
CFORT_SGI         = -Dappend_
CFORT_SGIM4       = -Dappend_
CFORT_SGI10K	  = -Dappend_
CFORT_DEC         = -Dappend_
CFORT_I860        = -Dappend_
CFORT_HP          = -Dmatched
CFORT_SUNMOS      = -Dappend_
CFORT_NCUBE       = -Dcaps
CFORT_SP2         = -Dmatched
CFORT_T3E         = -Dcaps
CFORT_LINUX       = -Dappend_
CFORT_TFLOP       = -Dappend_

#
# Compilation flags
#
CFLAGS_GENERIC	= -O
CFLAGS_SUN4     = -O2 -vc -Xc
CFLAGS_SOLARIS  = -O -vc
CFLAGS_SGI      = -O  -n32
CFLAGS_SGIM4    = -O -n32
#CFLAGS_SGI10K   = -Ofast=ip27 -64 -r12000
CFLAGS_SGI10K   = -O3 -64 -r12000
CFLAGS_DEC      = -O2
CFLAGS_NCUBE    = -O
CFLAGS_HP	= -O4
CFLAGS_I860     = -O4
CFLAGS_SUNMOS   = -O4
CFLAGS_SP2      = -O2
CFLAGS_T3E      = -O3 -DT3E
CFLAGS_LINUX    = -O3
CFLAGS_TFLOP    = -O3

FFLAGS_GENERIC = -O
FFLAGS_SUN4     = -O2
FFLAGS_SOLARIS  = -O2
FFLAGS_SGI      = $(CFLAGS_SGI)
FFLAGS_SGIM4    = $(CFLAGS_SGIM4)
FFLAGS_SGI10K   = $(CFLAGS_SGI10K)
FFLAGS_DEC      = $(CFLAGS_DEC)
FFLAGS_I860     = $(CFLAGS_I860)
FFLAGS_HP	= -O
FFLAGS_SUNMOS   = $(CFLAGS_SUNMOS)
FFLAGS_NCUBE    = $(CFLAGS_NCUBE)
FFLAGS_SP2      = $(CFLAGS_SP2)
FFLAGS_T3E      = -O3 -dp
FFLAGS_LINUX    = $(CFLAGS_LINUX)
FFLAGS_TFLOP    = $(CFLAGS_TFLOP)

LDFLAGS_GENERIC   = -O
LDFLAGS_SUN4      = -O2
LDFLAGS_SOLARIS   = -O2
LDFLAGS_SGI       = -O2 -n32
LDFLAGS_SGIM4     = -O  -n32
#LDFLAGS_SGI10K    = -Ofast=ip27 -64 -r12000   
LDFLAGS_SGI10K    = -O3  -64 -r12000
LDFLAGS_DEC       = -O2
LDFLAGS_I860      = -O4
LDFLAGS_HP        = -O4
LDFLAGS_SUNMOS    = -O4
LDFLAGS_NCUBE     = -O -Nstack 40000 -Nheap 2800000 -Ncomm 200000
LDFLAGS_SP2       = -O
LDFLAGS_T3E       = -O -Wl"-D equiv(DCOPY)=SCOPY;equiv(DDOT)=SDOT;equiv(DSQRT)=SQRT;equiv(DNRM2)=SNRM2;equiv(DSCAL)=SSCAL;equiv(DAXPY)=SAXPY;equiv(DASUM)=SASUM;equiv(IDAMAX)=ISAMAX;equiv(DSWAP)=SSWAP;equiv(DGEMV)=SGEMV;equiv(DGEMM)=SGEMM;equiv(DTRSM)=STRSM;equiv(DGER)=SGER;equiv(DTRMM)=STRMM;equiv(DTRMV)=STRMV;equiv(DSYRK)=SSYRK"
LDFLAGS_LINUX     = -O3
LDFLAGS_TFLOP     = -O

#
# Communication Libraries to link
#
CLIB_SERIAL     =
CLIB_I860       =
CLIB_SUNMOS     =
CLIB_HP         =
CLIB_NCUBE      =
CLIB_MPI        = $(MPI_LIB) 

LIB_SUN4        = -cg89
LIB_SOLARIS     = -L/opt/SUNWspro/lib -lnsl -lsocket -lgen -lnsl \
                 -lsocket -lgen -lM77 -lF77 -lsunmath -lm
LIB_SGI         = -lI77 -lF77 -lisam
LIB_SGIM4       = -lI77 -lF77 -lisam
LIB_SGI10K      = 
LIB_DEC         = -lots -lfor
LIB_I860        = -lkmath -lf -nx
LIB_SUNMOS      = -lkmath -lf
LIB_NCUBE       = -lblas  -lf
LIB_SP2         = -lxlf90
LIB_T3E         = 
LIB_LINUX       = /usr/lib/gcc-lib/i386-redhat-linux/2.96/libg2c.a
LIB_TFLOP       = -lkmath -lf

# Choose the application you want to run:
#
# 1) Standard MSR/VBR application
#OBJ  = az_main.o az_examples.o az_app_utils.o
# 
# 2) Tutorial application
#       Choose one of the 3 depending on whether you want to see a "C"  
#       application, a Fortran application using MPI, or a Fortran
#       application without MPI.
#       NOTE: You can only use 'az_tutorial_with_MPI.f' if you have MPI
#             and you can not use 'az_tutorial_without_MPI.f' with MPI.
#
#OBJ  = my_az_tutorial_with_MPI.o
OBJ = carpcg.o                                      
#OBJ  = az_tutorial.o
#OBJ  = az_tutorial_with_MPI.o
#OBJ  = az_tutorial_without_MPI.o
#
# 3) Matrix free application
#
#OBJ  = az_mat_free_main.o az_mat_free_example.o az_mat_free_com.o


#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#
# No need to change the rest of this file when adding
# a new machine to the makefile
#
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

CC              = $(CC_LINUX)
FC              = $(FC_LINUX)
CFORT           = $(CFORT_LINUX)
CFLAGS2         = $(CFLAGS_LINUX)
FFLAGS2         = $(FFLAGS_LINUX)
LDFLAGS2        = $(LDFLAGS_LINUX)
LIB_MACH_DEP    = $(CLIB_MPI) $(LIB_LINUX)
LD_COMPILER     = $(LD_LINUX)


MAX_MEM = 16731136
GEN_CFLAGS   = -I../lib -DMAX_MEM_SIZE=$(MAX_MEM) -DCOMM_BUFF_SIZE=200000 \
	       -DMAX_CHUNK_SIZE=200000
GEN_LIBS     = -L/home/Aztec/lib -laztec  -lm /opt/mpich-1.2.4/lib/libmpich.a

LDFLAGS      = $(LDFLAGS2) $(GEN_LIBS) $(LIB_MACH_DEP)
CFLAGS       = $(CFLAGS2) $(CFORT) $(GEN_CFLAGS) -DAZ_MPI $(MPI_INCLUDE_DIR)
FFLAGS       = $(FFLAGS2)  $(MPI_INCLUDE_DIR) $(GEN_CFLAGS):
#                        -DMPI is used so that MPI_Init defined in
#                         az_main.c gets compiled and so that MPI_Request
#                         is defined properly.


#####################################
# Define implicit compilation rules #
#####################################
all: sample

# application code

sample: $(OBJ) 
	$(LD_COMPILER) $(OBJ) $(LDFLAGS)   -o  CARP_CG 
clean:
	@echo "cleaning ..."
	/bin/rm -f $(OBJ)
