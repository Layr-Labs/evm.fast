import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function368
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody368_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody368_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody368_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody368_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody368_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody368_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody368_6 : StackLang.HolProg 64 :=
.call none (Sum.inl 367) none

def rawBody368_7 : StackLang.HolProg 64 :=
.seq rawBody368_5 rawBody368_6

def rawBody368_8 : StackLang.HolProg 64 :=
.seq rawBody368_4 rawBody368_7

def rawBody368_9 : StackLang.HolProg 64 :=
.seq rawBody368_3 rawBody368_8

def rawBody368_10 : StackLang.HolProg 64 :=
.seq rawBody368_2 rawBody368_9

def rawBody368_11 : StackLang.HolProg 64 :=
.seq rawBody368_1 rawBody368_10

def rawBody368_12 : StackLang.HolProg 64 :=
.seq rawBody368_0 rawBody368_11

def raw368 : StackLang.HolProg 64 := rawBody368_12
theorem raw368_eq : StackRawCall.compTop RawInfo.rawInfo (function368 (.list [])).1 = raw368 := by
  kernel_rfl
#print axioms raw368_eq
end InitECandidate.Proofs.BackendStages
