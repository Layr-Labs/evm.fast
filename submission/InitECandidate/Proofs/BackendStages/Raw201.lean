import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function201
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody201_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody201_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody201_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody201_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody201_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody201_5 : StackLang.HolProg 64 :=
.seq rawBody201_3 rawBody201_4

def rawBody201_6 : StackLang.HolProg 64 :=
.seq rawBody201_2 rawBody201_5

def rawBody201_7 : StackLang.HolProg 64 :=
.seq rawBody201_1 rawBody201_6

def rawBody201_8 : StackLang.HolProg 64 :=
.seq rawBody201_0 rawBody201_7

def raw201 : StackLang.HolProg 64 := rawBody201_8
theorem raw201_eq : StackRawCall.compTop RawInfo.rawInfo (function201 (.list [])).1 = raw201 := by
  kernel_rfl
#print axioms raw201_eq
end InitECandidate.Proofs.BackendStages
