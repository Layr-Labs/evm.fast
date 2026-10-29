import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw102
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody102_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody102_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody102_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody102_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody102_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody102_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody102_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody102_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody102_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody102_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody102_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody102_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody102_12 : StackLang.HolProg 64 :=
.seq AllocBody102_10 AllocBody102_11

def AllocBody102_13 : StackLang.HolProg 64 :=
.seq AllocBody102_9 AllocBody102_12

def AllocBody102_14 : StackLang.HolProg 64 :=
.seq AllocBody102_8 AllocBody102_13

def AllocBody102_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody102_16 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody102_14 AllocBody102_15

def AllocBody102_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody102_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody102_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody102_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody102_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody102_22 : StackLang.HolProg 64 :=
.seq AllocBody102_20 AllocBody102_21

def AllocBody102_23 : StackLang.HolProg 64 :=
.seq AllocBody102_19 AllocBody102_22

def AllocBody102_24 : StackLang.HolProg 64 :=
.seq AllocBody102_18 AllocBody102_23

def AllocBody102_25 : StackLang.HolProg 64 :=
.seq AllocBody102_17 AllocBody102_24

def AllocBody102_26 : StackLang.HolProg 64 :=
.seq AllocBody102_16 AllocBody102_25

def AllocBody102_27 : StackLang.HolProg 64 :=
.seq AllocBody102_7 AllocBody102_26

def AllocBody102_28 : StackLang.HolProg 64 :=
.seq AllocBody102_6 AllocBody102_27

def AllocBody102_29 : StackLang.HolProg 64 :=
.seq AllocBody102_5 AllocBody102_28

def AllocBody102_30 : StackLang.HolProg 64 :=
.seq AllocBody102_4 AllocBody102_29

def AllocBody102_31 : StackLang.HolProg 64 :=
.seq AllocBody102_3 AllocBody102_30

def AllocBody102_32 : StackLang.HolProg 64 :=
.seq AllocBody102_2 AllocBody102_31

def AllocBody102_33 : StackLang.HolProg 64 :=
.seq AllocBody102_1 AllocBody102_32

def AllocBody102_34 : StackLang.HolProg 64 :=
.seq AllocBody102_0 AllocBody102_33

def Alloc102 : Nat × StackLang.HolProg 64 := (102, AllocBody102_34)
theorem Alloc102_eq : StackAlloc.progComp (102, raw102) = Alloc102 := by
  kernel_rfl
#print axioms Alloc102_eq
end InitECandidate.Proofs.BackendStages
