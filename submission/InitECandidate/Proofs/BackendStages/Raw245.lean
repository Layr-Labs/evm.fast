import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function245
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody245_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody245_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody245_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody245_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def rawBody245_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody245_5 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody245_6 : StackLang.HolProg 64 :=
.seq rawBody245_4 rawBody245_5

def rawBody245_7 : StackLang.HolProg 64 :=
.seq rawBody245_3 rawBody245_6

def rawBody245_8 : StackLang.HolProg 64 :=
.seq rawBody245_2 rawBody245_7

def rawBody245_9 : StackLang.HolProg 64 :=
.seq rawBody245_1 rawBody245_8

def rawBody245_10 : StackLang.HolProg 64 :=
.seq rawBody245_0 rawBody245_9

def raw245 : StackLang.HolProg 64 := rawBody245_10
theorem raw245_eq : StackRawCall.compTop RawInfo.rawInfo (function245 (.list [])).1 = raw245 := by
  kernel_rfl
#print axioms raw245_eq
end InitECandidate.Proofs.BackendStages
