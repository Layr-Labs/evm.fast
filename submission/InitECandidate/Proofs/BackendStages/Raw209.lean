import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function209
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody209_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody209_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody209_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def rawBody209_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def rawBody209_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def rawBody209_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583341#64)

def rawBody209_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody209_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody209_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 208) none

def rawBody209_9 : StackLang.HolProg 64 :=
.seq rawBody209_7 rawBody209_8

def rawBody209_10 : StackLang.HolProg 64 :=
.seq rawBody209_6 rawBody209_9

def rawBody209_11 : StackLang.HolProg 64 :=
.seq rawBody209_5 rawBody209_10

def rawBody209_12 : StackLang.HolProg 64 :=
.seq rawBody209_4 rawBody209_11

def rawBody209_13 : StackLang.HolProg 64 :=
.seq rawBody209_3 rawBody209_12

def rawBody209_14 : StackLang.HolProg 64 :=
.seq rawBody209_2 rawBody209_13

def rawBody209_15 : StackLang.HolProg 64 :=
.seq rawBody209_1 rawBody209_14

def rawBody209_16 : StackLang.HolProg 64 :=
.seq rawBody209_0 rawBody209_15

def raw209 : StackLang.HolProg 64 := rawBody209_16
theorem raw209_eq : StackRawCall.compTop RawInfo.rawInfo (function209 (.list [])).1 = raw209 := by
  kernel_rfl
#print axioms raw209_eq
end InitECandidate.Proofs.BackendStages
