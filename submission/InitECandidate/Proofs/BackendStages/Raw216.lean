import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function216
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody216_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody216_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody216_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 18446744073709551615#64)

def rawBody216_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 18446744073709551614#64)

def rawBody216_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 13451932020343611451#64)

def rawBody216_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 13822214165235122497#64)

def rawBody216_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody216_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody216_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 135) none

def rawBody216_9 : StackLang.HolProg 64 :=
.seq rawBody216_7 rawBody216_8

def rawBody216_10 : StackLang.HolProg 64 :=
.seq rawBody216_6 rawBody216_9

def rawBody216_11 : StackLang.HolProg 64 :=
.seq rawBody216_5 rawBody216_10

def rawBody216_12 : StackLang.HolProg 64 :=
.seq rawBody216_4 rawBody216_11

def rawBody216_13 : StackLang.HolProg 64 :=
.seq rawBody216_3 rawBody216_12

def rawBody216_14 : StackLang.HolProg 64 :=
.seq rawBody216_2 rawBody216_13

def rawBody216_15 : StackLang.HolProg 64 :=
.seq rawBody216_1 rawBody216_14

def rawBody216_16 : StackLang.HolProg 64 :=
.seq rawBody216_0 rawBody216_15

def raw216 : StackLang.HolProg 64 := rawBody216_16
theorem raw216_eq : StackRawCall.compTop RawInfo.rawInfo (function216 (.list [])).1 = raw216 := by
  kernel_rfl
#print axioms raw216_eq
end InitECandidate.Proofs.BackendStages
