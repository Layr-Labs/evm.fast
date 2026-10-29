import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function214
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody214_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody214_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody214_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 4611686018427387903#64)

def rawBody214_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def rawBody214_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def rawBody214_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744072635809548#64)

def rawBody214_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody214_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody214_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 208) none

def rawBody214_9 : StackLang.HolProg 64 :=
.seq rawBody214_7 rawBody214_8

def rawBody214_10 : StackLang.HolProg 64 :=
.seq rawBody214_6 rawBody214_9

def rawBody214_11 : StackLang.HolProg 64 :=
.seq rawBody214_5 rawBody214_10

def rawBody214_12 : StackLang.HolProg 64 :=
.seq rawBody214_4 rawBody214_11

def rawBody214_13 : StackLang.HolProg 64 :=
.seq rawBody214_3 rawBody214_12

def rawBody214_14 : StackLang.HolProg 64 :=
.seq rawBody214_2 rawBody214_13

def rawBody214_15 : StackLang.HolProg 64 :=
.seq rawBody214_1 rawBody214_14

def rawBody214_16 : StackLang.HolProg 64 :=
.seq rawBody214_0 rawBody214_15

def raw214 : StackLang.HolProg 64 := rawBody214_16
theorem raw214_eq : StackRawCall.compTop RawInfo.rawInfo (function214 (.list [])).1 = raw214 := by
  kernel_rfl
#print axioms raw214_eq
end InitECandidate.Proofs.BackendStages
