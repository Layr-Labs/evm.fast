import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function218
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody218_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody218_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody218_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def rawBody218_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551614#64)

def rawBody218_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 13451932020343611451#64)

def rawBody218_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 13822214165235122495#64)

def rawBody218_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody218_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody218_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 217) none

def rawBody218_9 : StackLang.HolProg 64 :=
.seq rawBody218_7 rawBody218_8

def rawBody218_10 : StackLang.HolProg 64 :=
.seq rawBody218_6 rawBody218_9

def rawBody218_11 : StackLang.HolProg 64 :=
.seq rawBody218_5 rawBody218_10

def rawBody218_12 : StackLang.HolProg 64 :=
.seq rawBody218_4 rawBody218_11

def rawBody218_13 : StackLang.HolProg 64 :=
.seq rawBody218_3 rawBody218_12

def rawBody218_14 : StackLang.HolProg 64 :=
.seq rawBody218_2 rawBody218_13

def rawBody218_15 : StackLang.HolProg 64 :=
.seq rawBody218_1 rawBody218_14

def rawBody218_16 : StackLang.HolProg 64 :=
.seq rawBody218_0 rawBody218_15

def raw218 : StackLang.HolProg 64 := rawBody218_16
theorem raw218_eq : StackRawCall.compTop RawInfo.rawInfo (function218 (.list [])).1 = raw218 := by
  kernel_rfl
#print axioms raw218_eq
end InitECandidate.Proofs.BackendStages
