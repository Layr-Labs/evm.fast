import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function355
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody355_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody355_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody355_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 264#64))

def rawBody355_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody355_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody355_5 : StackLang.HolProg 64 :=
.seq rawBody355_3 rawBody355_4

def rawBody355_6 : StackLang.HolProg 64 :=
.seq rawBody355_2 rawBody355_5

def rawBody355_7 : StackLang.HolProg 64 :=
.seq rawBody355_1 rawBody355_6

def rawBody355_8 : StackLang.HolProg 64 :=
.seq rawBody355_0 rawBody355_7

def raw355 : StackLang.HolProg 64 := rawBody355_8
theorem raw355_eq : StackRawCall.compTop RawInfo.rawInfo (function355 (.list [])).1 = raw355 := by
  kernel_rfl
#print axioms raw355_eq
end InitECandidate.Proofs.BackendStages
