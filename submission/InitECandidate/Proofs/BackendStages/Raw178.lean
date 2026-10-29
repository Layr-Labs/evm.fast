import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function178
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody178_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody178_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody178_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 192#64)

def rawBody178_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody178_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody178_5 : StackLang.HolProg 64 :=
.call none (Sum.inl 174) none

def rawBody178_6 : StackLang.HolProg 64 :=
.seq rawBody178_4 rawBody178_5

def rawBody178_7 : StackLang.HolProg 64 :=
.seq rawBody178_3 rawBody178_6

def rawBody178_8 : StackLang.HolProg 64 :=
.seq rawBody178_2 rawBody178_7

def rawBody178_9 : StackLang.HolProg 64 :=
.seq rawBody178_1 rawBody178_8

def rawBody178_10 : StackLang.HolProg 64 :=
.seq rawBody178_0 rawBody178_9

def raw178 : StackLang.HolProg 64 := rawBody178_10
theorem raw178_eq : StackRawCall.compTop RawInfo.rawInfo (function178 (.list [])).1 = raw178 := by
  kernel_rfl
#print axioms raw178_eq
end InitECandidate.Proofs.BackendStages
