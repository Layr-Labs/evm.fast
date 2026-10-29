import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw101
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody101_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody101_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody101_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody101_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody101_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody101_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody101_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody101_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody101_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody101_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody101_10 : StackLang.HolProg 64 :=
.seq AllocBody101_8 AllocBody101_9

def AllocBody101_11 : StackLang.HolProg 64 :=
.seq AllocBody101_7 AllocBody101_10

def AllocBody101_12 : StackLang.HolProg 64 :=
.seq AllocBody101_6 AllocBody101_11

def AllocBody101_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody101_14 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody101_12 AllocBody101_13

def AllocBody101_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody101_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody101_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody101_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody101_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody101_20 : StackLang.HolProg 64 :=
.seq AllocBody101_18 AllocBody101_19

def AllocBody101_21 : StackLang.HolProg 64 :=
.seq AllocBody101_17 AllocBody101_20

def AllocBody101_22 : StackLang.HolProg 64 :=
.seq AllocBody101_16 AllocBody101_21

def AllocBody101_23 : StackLang.HolProg 64 :=
.seq AllocBody101_15 AllocBody101_22

def AllocBody101_24 : StackLang.HolProg 64 :=
.seq AllocBody101_14 AllocBody101_23

def AllocBody101_25 : StackLang.HolProg 64 :=
.seq AllocBody101_5 AllocBody101_24

def AllocBody101_26 : StackLang.HolProg 64 :=
.seq AllocBody101_4 AllocBody101_25

def AllocBody101_27 : StackLang.HolProg 64 :=
.seq AllocBody101_3 AllocBody101_26

def AllocBody101_28 : StackLang.HolProg 64 :=
.seq AllocBody101_2 AllocBody101_27

def AllocBody101_29 : StackLang.HolProg 64 :=
.seq AllocBody101_1 AllocBody101_28

def AllocBody101_30 : StackLang.HolProg 64 :=
.seq AllocBody101_0 AllocBody101_29

def Alloc101 : Nat × StackLang.HolProg 64 := (101, AllocBody101_30)
theorem Alloc101_eq : StackAlloc.progComp (101, raw101) = Alloc101 := by
  kernel_rfl
#print axioms Alloc101_eq
end InitECandidate.Proofs.BackendStages
