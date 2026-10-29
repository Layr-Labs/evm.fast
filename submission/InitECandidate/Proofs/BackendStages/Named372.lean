import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed372
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody372_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody372_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody372_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody372_3 : StackLang.HolProg 64 :=
.seq NamedBody372_1 NamedBody372_2

def NamedBody372_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 2#64)

def NamedBody372_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody372_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody372_7 : StackLang.HolProg 64 :=
.call none (Sum.inl 370) none

def NamedBody372_8 : StackLang.HolProg 64 :=
.seq NamedBody372_6 NamedBody372_7

def NamedBody372_9 : StackLang.HolProg 64 :=
.seq NamedBody372_5 NamedBody372_8

def NamedBody372_10 : StackLang.HolProg 64 :=
.seq NamedBody372_4 NamedBody372_9

def NamedBody372_11 : StackLang.HolProg 64 :=
.seq NamedBody372_3 NamedBody372_10

def NamedBody372_12 : StackLang.HolProg 64 :=
.seq NamedBody372_0 NamedBody372_11

def Named372 : Nat × StackLang.HolProg 64 := (372, NamedBody372_12)
theorem Named372_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed372 = Named372 := by
  kernel_rfl
#print axioms Named372_eq
end InitECandidate.Proofs.BackendStages
