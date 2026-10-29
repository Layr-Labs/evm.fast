import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function737
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody737_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody737_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody737_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody737_3 : StackLang.HolProg 64 :=
.call none (Sum.inl 734) none

def rawBody737_4 : StackLang.HolProg 64 :=
.seq rawBody737_2 rawBody737_3

def rawBody737_5 : StackLang.HolProg 64 :=
.seq rawBody737_1 rawBody737_4

def rawBody737_6 : StackLang.HolProg 64 :=
.seq rawBody737_0 rawBody737_5

def raw737 : StackLang.HolProg 64 := rawBody737_6
theorem raw737_eq : StackRawCall.compTop RawInfo.rawInfo (function737 (.list [])).1 = raw737 := by
  kernel_rfl
#print axioms raw737_eq
end InitECandidate.Proofs.BackendStages
