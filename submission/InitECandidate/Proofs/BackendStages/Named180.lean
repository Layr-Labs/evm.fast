import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed180
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody180_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody180_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody180_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody180_3 : StackLang.HolProg 64 :=
.call none (Sum.inl 175) none

def NamedBody180_4 : StackLang.HolProg 64 :=
.seq NamedBody180_2 NamedBody180_3

def NamedBody180_5 : StackLang.HolProg 64 :=
.seq NamedBody180_1 NamedBody180_4

def NamedBody180_6 : StackLang.HolProg 64 :=
.seq NamedBody180_0 NamedBody180_5

def Named180 : Nat × StackLang.HolProg 64 := (180, NamedBody180_6)
theorem Named180_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed180 = Named180 := by
  kernel_rfl
#print axioms Named180_eq
end InitECandidate.Proofs.BackendStages
