import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed713
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody713_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody713_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody713_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody713_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody713_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 27 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody713_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 28 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody713_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 29 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody713_7 : StackLang.HolProg 64 :=
.seq NamedBody713_5 NamedBody713_6

def NamedBody713_8 : StackLang.HolProg 64 :=
.seq NamedBody713_4 NamedBody713_7

def NamedBody713_9 : StackLang.HolProg 64 :=
.seq NamedBody713_3 NamedBody713_8

def NamedBody713_10 : StackLang.HolProg 64 :=
.seq NamedBody713_2 NamedBody713_9

def NamedBody713_11 : StackLang.HolProg 64 :=
.seq NamedBody713_1 NamedBody713_10

def NamedBody713_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody713_13 : StackLang.HolProg 64 :=
.call none (Sum.inl 710) none

def NamedBody713_14 : StackLang.HolProg 64 :=
.seq NamedBody713_12 NamedBody713_13

def NamedBody713_15 : StackLang.HolProg 64 :=
.seq NamedBody713_11 NamedBody713_14

def NamedBody713_16 : StackLang.HolProg 64 :=
.seq NamedBody713_0 NamedBody713_15

def Named713 : Nat × StackLang.HolProg 64 := (713, NamedBody713_16)
theorem Named713_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed713 = Named713 := by
  kernel_rfl
#print axioms Named713_eq
end InitECandidate.Proofs.BackendStages
