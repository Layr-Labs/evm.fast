import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function375
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody375_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody375_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody375_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody375_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def rawBody375_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody375_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody375_6 : StackLang.HolProg 64 :=
.call none (Sum.inl 370) none

def rawBody375_7 : StackLang.HolProg 64 :=
.seq rawBody375_5 rawBody375_6

def rawBody375_8 : StackLang.HolProg 64 :=
.seq rawBody375_4 rawBody375_7

def rawBody375_9 : StackLang.HolProg 64 :=
.seq rawBody375_3 rawBody375_8

def rawBody375_10 : StackLang.HolProg 64 :=
.seq rawBody375_2 rawBody375_9

def rawBody375_11 : StackLang.HolProg 64 :=
.seq rawBody375_1 rawBody375_10

def rawBody375_12 : StackLang.HolProg 64 :=
.seq rawBody375_0 rawBody375_11

def raw375 : StackLang.HolProg 64 := rawBody375_12
theorem raw375_eq : StackRawCall.compTop RawInfo.rawInfo (function375 (.list [])).1 = raw375 := by
  kernel_rfl
#print axioms raw375_eq
end InitECandidate.Proofs.BackendStages
