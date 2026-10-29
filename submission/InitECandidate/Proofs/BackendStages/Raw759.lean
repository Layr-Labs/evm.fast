import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function759
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody759_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody759_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody759_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody759_3 : StackLang.HolProg 64 :=
.call none (Sum.inl 758) none

def rawBody759_4 : StackLang.HolProg 64 :=
.seq rawBody759_2 rawBody759_3

def rawBody759_5 : StackLang.HolProg 64 :=
.seq rawBody759_1 rawBody759_4

def rawBody759_6 : StackLang.HolProg 64 :=
.seq rawBody759_0 rawBody759_5

def raw759 : StackLang.HolProg 64 := rawBody759_6
theorem raw759_eq : StackRawCall.compTop RawInfo.rawInfo (function759 (.list [])).1 = raw759 := by
  kernel_rfl
#print axioms raw759_eq
end InitECandidate.Proofs.BackendStages
