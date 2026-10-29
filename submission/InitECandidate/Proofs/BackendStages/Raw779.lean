import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function779
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody779_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody779_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody779_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def rawBody779_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody779_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody779_5 : StackLang.HolProg 64 :=
.call none (Sum.inl 732) none

def rawBody779_6 : StackLang.HolProg 64 :=
.seq rawBody779_4 rawBody779_5

def rawBody779_7 : StackLang.HolProg 64 :=
.seq rawBody779_3 rawBody779_6

def rawBody779_8 : StackLang.HolProg 64 :=
.seq rawBody779_2 rawBody779_7

def rawBody779_9 : StackLang.HolProg 64 :=
.seq rawBody779_1 rawBody779_8

def rawBody779_10 : StackLang.HolProg 64 :=
.seq rawBody779_0 rawBody779_9

def raw779 : StackLang.HolProg 64 := rawBody779_10
theorem raw779_eq : StackRawCall.compTop RawInfo.rawInfo (function779 (.list [])).1 = raw779 := by
  kernel_rfl
#print axioms raw779_eq
end InitECandidate.Proofs.BackendStages
