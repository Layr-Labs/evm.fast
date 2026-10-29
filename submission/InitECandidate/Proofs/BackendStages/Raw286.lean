import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function286
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody286_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody286_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody286_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody286_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def rawBody286_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody286_5 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody286_6 : StackLang.HolProg 64 :=
.seq rawBody286_4 rawBody286_5

def rawBody286_7 : StackLang.HolProg 64 :=
.seq rawBody286_3 rawBody286_6

def rawBody286_8 : StackLang.HolProg 64 :=
.seq rawBody286_2 rawBody286_7

def rawBody286_9 : StackLang.HolProg 64 :=
.seq rawBody286_1 rawBody286_8

def rawBody286_10 : StackLang.HolProg 64 :=
.seq rawBody286_0 rawBody286_9

def raw286 : StackLang.HolProg 64 := rawBody286_10
theorem raw286_eq : StackRawCall.compTop RawInfo.rawInfo (function286 (.list [])).1 = raw286 := by
  kernel_rfl
#print axioms raw286_eq
end InitECandidate.Proofs.BackendStages
