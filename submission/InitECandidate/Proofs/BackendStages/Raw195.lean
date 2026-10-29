import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function195
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody195_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody195_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody195_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody195_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody195_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody195_5 : StackLang.HolProg 64 :=
.seq rawBody195_3 rawBody195_4

def rawBody195_6 : StackLang.HolProg 64 :=
.seq rawBody195_2 rawBody195_5

def rawBody195_7 : StackLang.HolProg 64 :=
.seq rawBody195_1 rawBody195_6

def rawBody195_8 : StackLang.HolProg 64 :=
.seq rawBody195_0 rawBody195_7

def raw195 : StackLang.HolProg 64 := rawBody195_8
theorem raw195_eq : StackRawCall.compTop RawInfo.rawInfo (function195 (.list [])).1 = raw195 := by
  kernel_rfl
#print axioms raw195_eq
end InitECandidate.Proofs.BackendStages
