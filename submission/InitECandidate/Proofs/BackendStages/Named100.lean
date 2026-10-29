import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed100
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody100_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody100_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody100_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody100_3 : StackLang.HolProg 64 :=
.seq NamedBody100_1 NamedBody100_2

def NamedBody100_4 : StackLang.HolProg 64 :=
.seq NamedBody100_0 NamedBody100_3

def Named100 : Nat × StackLang.HolProg 64 := (100, NamedBody100_4)
theorem Named100_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed100 = Named100 := by
  kernel_rfl
#print axioms Named100_eq
end InitECandidate.Proofs.BackendStages
