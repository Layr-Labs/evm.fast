import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function159
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody159_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody159_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody159_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody159_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody159_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody159_5 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody159_6 : StackLang.HolProg 64 :=
.seq rawBody159_4 rawBody159_5

def rawBody159_7 : StackLang.HolProg 64 :=
.seq rawBody159_3 rawBody159_6

def rawBody159_8 : StackLang.HolProg 64 :=
.seq rawBody159_2 rawBody159_7

def rawBody159_9 : StackLang.HolProg 64 :=
.seq rawBody159_1 rawBody159_8

def rawBody159_10 : StackLang.HolProg 64 :=
.seq rawBody159_0 rawBody159_9

def raw159 : StackLang.HolProg 64 := rawBody159_10
theorem raw159_eq : StackRawCall.compTop RawInfo.rawInfo (function159 (.list [])).1 = raw159 := by
  kernel_rfl
#print axioms raw159_eq
end InitECandidate.Proofs.BackendStages
