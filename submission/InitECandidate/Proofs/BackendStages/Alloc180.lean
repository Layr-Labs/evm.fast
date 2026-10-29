import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw180
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody180_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody180_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody180_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody180_3 : StackLang.HolProg 64 :=
.call none (Sum.inl 175) none

def AllocBody180_4 : StackLang.HolProg 64 :=
.seq AllocBody180_2 AllocBody180_3

def AllocBody180_5 : StackLang.HolProg 64 :=
.seq AllocBody180_1 AllocBody180_4

def AllocBody180_6 : StackLang.HolProg 64 :=
.seq AllocBody180_0 AllocBody180_5

def Alloc180 : Nat × StackLang.HolProg 64 := (180, AllocBody180_6)
theorem Alloc180_eq : StackAlloc.progComp (180, raw180) = Alloc180 := by
  kernel_rfl
#print axioms Alloc180_eq
end InitECandidate.Proofs.BackendStages
