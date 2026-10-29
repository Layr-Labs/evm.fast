import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed375
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody375_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody375_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody375_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody375_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1#64)

def NamedBody375_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody375_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody375_6 : StackLang.HolProg 64 :=
.call none (Sum.inl 370) none

def NamedBody375_7 : StackLang.HolProg 64 :=
.seq NamedBody375_5 NamedBody375_6

def NamedBody375_8 : StackLang.HolProg 64 :=
.seq NamedBody375_4 NamedBody375_7

def NamedBody375_9 : StackLang.HolProg 64 :=
.seq NamedBody375_3 NamedBody375_8

def NamedBody375_10 : StackLang.HolProg 64 :=
.seq NamedBody375_2 NamedBody375_9

def NamedBody375_11 : StackLang.HolProg 64 :=
.seq NamedBody375_1 NamedBody375_10

def NamedBody375_12 : StackLang.HolProg 64 :=
.seq NamedBody375_0 NamedBody375_11

def Named375 : Nat × StackLang.HolProg 64 := (375, NamedBody375_12)
theorem Named375_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed375 = Named375 := by
  kernel_rfl
#print axioms Named375_eq
end InitECandidate.Proofs.BackendStages
