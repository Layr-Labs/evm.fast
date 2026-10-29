import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed737
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody737_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody737_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody737_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody737_3 : StackLang.HolProg 64 :=
.call none (Sum.inl 734) none

def NamedBody737_4 : StackLang.HolProg 64 :=
.seq NamedBody737_2 NamedBody737_3

def NamedBody737_5 : StackLang.HolProg 64 :=
.seq NamedBody737_1 NamedBody737_4

def NamedBody737_6 : StackLang.HolProg 64 :=
.seq NamedBody737_0 NamedBody737_5

def Named737 : Nat × StackLang.HolProg 64 := (737, NamedBody737_6)
theorem Named737_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed737 = Named737 := by
  kernel_rfl
#print axioms Named737_eq
end InitECandidate.Proofs.BackendStages
