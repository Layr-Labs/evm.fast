import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw715
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody715_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody715_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody715_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody715_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody715_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody715_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody715_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody715_7 : StackLang.HolProg 64 :=
.seq AllocBody715_5 AllocBody715_6

def AllocBody715_8 : StackLang.HolProg 64 :=
.seq AllocBody715_4 AllocBody715_7

def AllocBody715_9 : StackLang.HolProg 64 :=
.seq AllocBody715_3 AllocBody715_8

def AllocBody715_10 : StackLang.HolProg 64 :=
.seq AllocBody715_2 AllocBody715_9

def AllocBody715_11 : StackLang.HolProg 64 :=
.seq AllocBody715_1 AllocBody715_10

def AllocBody715_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody715_13 : StackLang.HolProg 64 :=
.call none (Sum.inl 714) none

def AllocBody715_14 : StackLang.HolProg 64 :=
.seq AllocBody715_12 AllocBody715_13

def AllocBody715_15 : StackLang.HolProg 64 :=
.seq AllocBody715_11 AllocBody715_14

def AllocBody715_16 : StackLang.HolProg 64 :=
.seq AllocBody715_0 AllocBody715_15

def Alloc715 : Nat × StackLang.HolProg 64 := (715, AllocBody715_16)
theorem Alloc715_eq : StackAlloc.progComp (715, raw715) = Alloc715 := by
  kernel_rfl
#print axioms Alloc715_eq
end InitECandidate.Proofs.BackendStages
