import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function662
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody662_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody662_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody662_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 493319470278259999#64)

def rawBody662_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 5164255478447964150#64)

def rawBody662_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 13107472804851548667#64)

def rawBody662_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 17522657719365597833#64)

def rawBody662_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody662_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody662_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 661) none

def rawBody662_9 : StackLang.HolProg 64 :=
.seq rawBody662_7 rawBody662_8

def rawBody662_10 : StackLang.HolProg 64 :=
.seq rawBody662_6 rawBody662_9

def rawBody662_11 : StackLang.HolProg 64 :=
.seq rawBody662_5 rawBody662_10

def rawBody662_12 : StackLang.HolProg 64 :=
.seq rawBody662_4 rawBody662_11

def rawBody662_13 : StackLang.HolProg 64 :=
.seq rawBody662_3 rawBody662_12

def rawBody662_14 : StackLang.HolProg 64 :=
.seq rawBody662_2 rawBody662_13

def rawBody662_15 : StackLang.HolProg 64 :=
.seq rawBody662_1 rawBody662_14

def rawBody662_16 : StackLang.HolProg 64 :=
.seq rawBody662_0 rawBody662_15

def raw662 : StackLang.HolProg 64 := rawBody662_16
theorem raw662_eq : StackRawCall.compTop RawInfo.rawInfo (function662 (.list [])).1 = raw662 := by
  kernel_rfl
#print axioms raw662_eq
end InitECandidate.Proofs.BackendStages
