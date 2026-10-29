import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function196
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody196_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody196_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody196_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def rawBody196_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody196_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody196_5 : StackLang.HolProg 64 :=
.seq rawBody196_3 rawBody196_4

def rawBody196_6 : StackLang.HolProg 64 :=
.seq rawBody196_2 rawBody196_5

def rawBody196_7 : StackLang.HolProg 64 :=
.seq rawBody196_1 rawBody196_6

def rawBody196_8 : StackLang.HolProg 64 :=
.seq rawBody196_0 rawBody196_7

def raw196 : StackLang.HolProg 64 := rawBody196_8
theorem raw196_eq : StackRawCall.compTop RawInfo.rawInfo (function196 (.list [])).1 = raw196 := by
  kernel_rfl
#print axioms raw196_eq
end InitECandidate.Proofs.BackendStages
