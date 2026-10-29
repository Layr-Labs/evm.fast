import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw713
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody713_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody713_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody713_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody713_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody713_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody713_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody713_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody713_7 : StackLang.HolProg 64 :=
.seq AllocBody713_5 AllocBody713_6

def AllocBody713_8 : StackLang.HolProg 64 :=
.seq AllocBody713_4 AllocBody713_7

def AllocBody713_9 : StackLang.HolProg 64 :=
.seq AllocBody713_3 AllocBody713_8

def AllocBody713_10 : StackLang.HolProg 64 :=
.seq AllocBody713_2 AllocBody713_9

def AllocBody713_11 : StackLang.HolProg 64 :=
.seq AllocBody713_1 AllocBody713_10

def AllocBody713_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody713_13 : StackLang.HolProg 64 :=
.call none (Sum.inl 710) none

def AllocBody713_14 : StackLang.HolProg 64 :=
.seq AllocBody713_12 AllocBody713_13

def AllocBody713_15 : StackLang.HolProg 64 :=
.seq AllocBody713_11 AllocBody713_14

def AllocBody713_16 : StackLang.HolProg 64 :=
.seq AllocBody713_0 AllocBody713_15

def Alloc713 : Nat × StackLang.HolProg 64 := (713, AllocBody713_16)
theorem Alloc713_eq : StackAlloc.progComp (713, raw713) = Alloc713 := by
  kernel_rfl
#print axioms Alloc713_eq
end InitECandidate.Proofs.BackendStages
