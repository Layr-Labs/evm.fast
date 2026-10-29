import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function347
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody347_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody347_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody347_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 144#64))

def rawBody347_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody347_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody347_5 : StackLang.HolProg 64 :=
.seq rawBody347_3 rawBody347_4

def rawBody347_6 : StackLang.HolProg 64 :=
.seq rawBody347_2 rawBody347_5

def rawBody347_7 : StackLang.HolProg 64 :=
.seq rawBody347_1 rawBody347_6

def rawBody347_8 : StackLang.HolProg 64 :=
.seq rawBody347_0 rawBody347_7

def raw347 : StackLang.HolProg 64 := rawBody347_8
theorem raw347_eq : StackRawCall.compTop RawInfo.rawInfo (function347 (.list [])).1 = raw347 := by
  kernel_rfl
#print axioms raw347_eq
end InitECandidate.Proofs.BackendStages
