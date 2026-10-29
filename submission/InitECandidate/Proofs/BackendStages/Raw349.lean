import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function349
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody349_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody349_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody349_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 152#64))

def rawBody349_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody349_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody349_5 : StackLang.HolProg 64 :=
.seq rawBody349_3 rawBody349_4

def rawBody349_6 : StackLang.HolProg 64 :=
.seq rawBody349_2 rawBody349_5

def rawBody349_7 : StackLang.HolProg 64 :=
.seq rawBody349_1 rawBody349_6

def rawBody349_8 : StackLang.HolProg 64 :=
.seq rawBody349_0 rawBody349_7

def raw349 : StackLang.HolProg 64 := rawBody349_8
theorem raw349_eq : StackRawCall.compTop RawInfo.rawInfo (function349 (.list [])).1 = raw349 := by
  kernel_rfl
#print axioms raw349_eq
end InitECandidate.Proofs.BackendStages
