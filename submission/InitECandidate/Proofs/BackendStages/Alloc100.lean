import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw100
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody100_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody100_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody100_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody100_3 : StackLang.HolProg 64 :=
.seq AllocBody100_1 AllocBody100_2

def AllocBody100_4 : StackLang.HolProg 64 :=
.seq AllocBody100_0 AllocBody100_3

def Alloc100 : Nat × StackLang.HolProg 64 := (100, AllocBody100_4)
theorem Alloc100_eq : StackAlloc.progComp (100, raw100) = Alloc100 := by
  kernel_rfl
#print axioms Alloc100_eq
end InitECandidate.Proofs.BackendStages
