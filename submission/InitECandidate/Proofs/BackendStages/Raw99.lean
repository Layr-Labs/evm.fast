import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function99
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody99_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody99_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody99_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody99_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody99_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody99_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody99_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody99_7 : StackLang.HolProg 64 :=
.seq rawBody99_5 rawBody99_6

def rawBody99_8 : StackLang.HolProg 64 :=
.seq rawBody99_4 rawBody99_7

def rawBody99_9 : StackLang.HolProg 64 :=
.seq rawBody99_3 rawBody99_8

def rawBody99_10 : StackLang.HolProg 64 :=
.seq rawBody99_2 rawBody99_9

def rawBody99_11 : StackLang.HolProg 64 :=
.seq rawBody99_1 rawBody99_10

def rawBody99_12 : StackLang.HolProg 64 :=
.seq rawBody99_0 rawBody99_11

def raw99 : StackLang.HolProg 64 := rawBody99_12
theorem raw99_eq : StackRawCall.compTop RawInfo.rawInfo (function99 (.list [])).1 = raw99 := by
  kernel_rfl
#print axioms raw99_eq
end InitECandidate.Proofs.BackendStages
