import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function100
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody100_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody100_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody100_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody100_3 : StackLang.HolProg 64 :=
.seq rawBody100_1 rawBody100_2

def rawBody100_4 : StackLang.HolProg 64 :=
.seq rawBody100_0 rawBody100_3

def raw100 : StackLang.HolProg 64 := rawBody100_4
theorem raw100_eq : StackRawCall.compTop RawInfo.rawInfo (function100 (.list [])).1 = raw100 := by
  kernel_rfl
#print axioms raw100_eq
end InitECandidate.Proofs.BackendStages
