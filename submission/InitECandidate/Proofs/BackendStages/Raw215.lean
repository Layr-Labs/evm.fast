import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function215
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody215_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody215_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody215_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 18446744073709551615#64)

def rawBody215_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 18446744073709551614#64)

def rawBody215_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 13451932020343611451#64)

def rawBody215_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 13822214165235122497#64)

def rawBody215_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody215_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody215_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 136) none

def rawBody215_9 : StackLang.HolProg 64 :=
.seq rawBody215_7 rawBody215_8

def rawBody215_10 : StackLang.HolProg 64 :=
.seq rawBody215_6 rawBody215_9

def rawBody215_11 : StackLang.HolProg 64 :=
.seq rawBody215_5 rawBody215_10

def rawBody215_12 : StackLang.HolProg 64 :=
.seq rawBody215_4 rawBody215_11

def rawBody215_13 : StackLang.HolProg 64 :=
.seq rawBody215_3 rawBody215_12

def rawBody215_14 : StackLang.HolProg 64 :=
.seq rawBody215_2 rawBody215_13

def rawBody215_15 : StackLang.HolProg 64 :=
.seq rawBody215_1 rawBody215_14

def rawBody215_16 : StackLang.HolProg 64 :=
.seq rawBody215_0 rawBody215_15

def raw215 : StackLang.HolProg 64 := rawBody215_16
theorem raw215_eq : StackRawCall.compTop RawInfo.rawInfo (function215 (.list [])).1 = raw215 := by
  kernel_rfl
#print axioms raw215_eq
end InitECandidate.Proofs.BackendStages
