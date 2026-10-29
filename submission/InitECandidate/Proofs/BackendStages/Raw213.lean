import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function213
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody213_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody213_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody213_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def rawBody213_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def rawBody213_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def rawBody213_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)

def rawBody213_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody213_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody213_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 210) none

def rawBody213_9 : StackLang.HolProg 64 :=
.seq rawBody213_7 rawBody213_8

def rawBody213_10 : StackLang.HolProg 64 :=
.seq rawBody213_6 rawBody213_9

def rawBody213_11 : StackLang.HolProg 64 :=
.seq rawBody213_5 rawBody213_10

def rawBody213_12 : StackLang.HolProg 64 :=
.seq rawBody213_4 rawBody213_11

def rawBody213_13 : StackLang.HolProg 64 :=
.seq rawBody213_3 rawBody213_12

def rawBody213_14 : StackLang.HolProg 64 :=
.seq rawBody213_2 rawBody213_13

def rawBody213_15 : StackLang.HolProg 64 :=
.seq rawBody213_1 rawBody213_14

def rawBody213_16 : StackLang.HolProg 64 :=
.seq rawBody213_0 rawBody213_15

def raw213 : StackLang.HolProg 64 := rawBody213_16
theorem raw213_eq : StackRawCall.compTop RawInfo.rawInfo (function213 (.list [])).1 = raw213 := by
  kernel_rfl
#print axioms raw213_eq
end InitECandidate.Proofs.BackendStages
