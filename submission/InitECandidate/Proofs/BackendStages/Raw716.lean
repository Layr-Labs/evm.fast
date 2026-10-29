import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function716
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody716_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody716_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody716_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1267921511277847466#64)

def rawBody716_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 11130996698012816685#64)

def rawBody716_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 7488229067341005760#64)

def rawBody716_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 10224657059481499349#64)

def rawBody716_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 754043588434789617#64)

def rawBody716_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 17644856173732828998#64)

def rawBody716_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody716_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody716_10 : StackLang.HolProg 64 :=
.call none (Sum.inl 714) none

def rawBody716_11 : StackLang.HolProg 64 :=
.seq rawBody716_9 rawBody716_10

def rawBody716_12 : StackLang.HolProg 64 :=
.seq rawBody716_8 rawBody716_11

def rawBody716_13 : StackLang.HolProg 64 :=
.seq rawBody716_7 rawBody716_12

def rawBody716_14 : StackLang.HolProg 64 :=
.seq rawBody716_6 rawBody716_13

def rawBody716_15 : StackLang.HolProg 64 :=
.seq rawBody716_5 rawBody716_14

def rawBody716_16 : StackLang.HolProg 64 :=
.seq rawBody716_4 rawBody716_15

def rawBody716_17 : StackLang.HolProg 64 :=
.seq rawBody716_3 rawBody716_16

def rawBody716_18 : StackLang.HolProg 64 :=
.seq rawBody716_2 rawBody716_17

def rawBody716_19 : StackLang.HolProg 64 :=
.seq rawBody716_1 rawBody716_18

def rawBody716_20 : StackLang.HolProg 64 :=
.seq rawBody716_0 rawBody716_19

def raw716 : StackLang.HolProg 64 := rawBody716_20
theorem raw716_eq : StackRawCall.compTop RawInfo.rawInfo (function716 (.list [])).1 = raw716 := by
  kernel_rfl
#print axioms raw716_eq
end InitECandidate.Proofs.BackendStages
