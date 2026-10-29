import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function180
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody180_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody180_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody180_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody180_3 : StackLang.HolProg 64 :=
.call none (Sum.inl 175) none

def rawBody180_4 : StackLang.HolProg 64 :=
.seq rawBody180_2 rawBody180_3

def rawBody180_5 : StackLang.HolProg 64 :=
.seq rawBody180_1 rawBody180_4

def rawBody180_6 : StackLang.HolProg 64 :=
.seq rawBody180_0 rawBody180_5

def raw180 : StackLang.HolProg 64 := rawBody180_6
theorem raw180_eq : StackRawCall.compTop RawInfo.rawInfo (function180 (.list [])).1 = raw180 := by
  kernel_rfl
#print axioms raw180_eq
end InitECandidate.Proofs.BackendStages
