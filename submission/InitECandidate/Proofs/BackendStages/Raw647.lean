import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function647
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody647_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody647_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody647_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)

def rawBody647_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def rawBody647_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def rawBody647_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)

def rawBody647_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody647_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody647_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 210) none

def rawBody647_9 : StackLang.HolProg 64 :=
.seq rawBody647_7 rawBody647_8

def rawBody647_10 : StackLang.HolProg 64 :=
.seq rawBody647_6 rawBody647_9

def rawBody647_11 : StackLang.HolProg 64 :=
.seq rawBody647_5 rawBody647_10

def rawBody647_12 : StackLang.HolProg 64 :=
.seq rawBody647_4 rawBody647_11

def rawBody647_13 : StackLang.HolProg 64 :=
.seq rawBody647_3 rawBody647_12

def rawBody647_14 : StackLang.HolProg 64 :=
.seq rawBody647_2 rawBody647_13

def rawBody647_15 : StackLang.HolProg 64 :=
.seq rawBody647_1 rawBody647_14

def rawBody647_16 : StackLang.HolProg 64 :=
.seq rawBody647_0 rawBody647_15

def raw647 : StackLang.HolProg 64 := rawBody647_16
theorem raw647_eq : StackRawCall.compTop RawInfo.rawInfo (function647 (.list [])).1 = raw647 := by
  kernel_rfl
#print axioms raw647_eq
end InitECandidate.Proofs.BackendStages
