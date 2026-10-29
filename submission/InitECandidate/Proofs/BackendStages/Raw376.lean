import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function376
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody376_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody376_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody376_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody376_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def rawBody376_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody376_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody376_6 : StackLang.HolProg 64 :=
.call none (Sum.inl 370) none

def rawBody376_7 : StackLang.HolProg 64 :=
.seq rawBody376_5 rawBody376_6

def rawBody376_8 : StackLang.HolProg 64 :=
.seq rawBody376_4 rawBody376_7

def rawBody376_9 : StackLang.HolProg 64 :=
.seq rawBody376_3 rawBody376_8

def rawBody376_10 : StackLang.HolProg 64 :=
.seq rawBody376_2 rawBody376_9

def rawBody376_11 : StackLang.HolProg 64 :=
.seq rawBody376_1 rawBody376_10

def rawBody376_12 : StackLang.HolProg 64 :=
.seq rawBody376_0 rawBody376_11

def raw376 : StackLang.HolProg 64 := rawBody376_12
theorem raw376_eq : StackRawCall.compTop RawInfo.rawInfo (function376 (.list [])).1 = raw376 := by
  kernel_rfl
#print axioms raw376_eq
end InitECandidate.Proofs.BackendStages
