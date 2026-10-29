import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed715
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody715_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody715_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody715_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody715_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody715_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 27 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody715_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 28 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody715_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 29 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody715_7 : StackLang.HolProg 64 :=
.seq NamedBody715_5 NamedBody715_6

def NamedBody715_8 : StackLang.HolProg 64 :=
.seq NamedBody715_4 NamedBody715_7

def NamedBody715_9 : StackLang.HolProg 64 :=
.seq NamedBody715_3 NamedBody715_8

def NamedBody715_10 : StackLang.HolProg 64 :=
.seq NamedBody715_2 NamedBody715_9

def NamedBody715_11 : StackLang.HolProg 64 :=
.seq NamedBody715_1 NamedBody715_10

def NamedBody715_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody715_13 : StackLang.HolProg 64 :=
.call none (Sum.inl 714) none

def NamedBody715_14 : StackLang.HolProg 64 :=
.seq NamedBody715_12 NamedBody715_13

def NamedBody715_15 : StackLang.HolProg 64 :=
.seq NamedBody715_11 NamedBody715_14

def NamedBody715_16 : StackLang.HolProg 64 :=
.seq NamedBody715_0 NamedBody715_15

def Named715 : Nat × StackLang.HolProg 64 := (715, NamedBody715_16)
theorem Named715_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed715 = Named715 := by
  kernel_rfl
#print axioms Named715_eq
end InitECandidate.Proofs.BackendStages
