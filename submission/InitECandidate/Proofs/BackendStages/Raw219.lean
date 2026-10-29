import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function219
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody219_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody219_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody219_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def rawBody219_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551614#64)

def rawBody219_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 13451932020343611451#64)

def rawBody219_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 13822214165235122497#64)

def rawBody219_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody219_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody219_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 210) none

def rawBody219_9 : StackLang.HolProg 64 :=
.seq rawBody219_7 rawBody219_8

def rawBody219_10 : StackLang.HolProg 64 :=
.seq rawBody219_6 rawBody219_9

def rawBody219_11 : StackLang.HolProg 64 :=
.seq rawBody219_5 rawBody219_10

def rawBody219_12 : StackLang.HolProg 64 :=
.seq rawBody219_4 rawBody219_11

def rawBody219_13 : StackLang.HolProg 64 :=
.seq rawBody219_3 rawBody219_12

def rawBody219_14 : StackLang.HolProg 64 :=
.seq rawBody219_2 rawBody219_13

def rawBody219_15 : StackLang.HolProg 64 :=
.seq rawBody219_1 rawBody219_14

def rawBody219_16 : StackLang.HolProg 64 :=
.seq rawBody219_0 rawBody219_15

def raw219 : StackLang.HolProg 64 := rawBody219_16
theorem raw219_eq : StackRawCall.compTop RawInfo.rawInfo (function219 (.list [])).1 = raw219 := by
  kernel_rfl
#print axioms raw219_eq
end InitECandidate.Proofs.BackendStages
