import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function372
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody372_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody372_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody372_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody372_3 : StackLang.HolProg 64 :=
.seq rawBody372_1 rawBody372_2

def rawBody372_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 2#64)

def rawBody372_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody372_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody372_7 : StackLang.HolProg 64 :=
.call none (Sum.inl 370) none

def rawBody372_8 : StackLang.HolProg 64 :=
.seq rawBody372_6 rawBody372_7

def rawBody372_9 : StackLang.HolProg 64 :=
.seq rawBody372_5 rawBody372_8

def rawBody372_10 : StackLang.HolProg 64 :=
.seq rawBody372_4 rawBody372_9

def rawBody372_11 : StackLang.HolProg 64 :=
.seq rawBody372_3 rawBody372_10

def rawBody372_12 : StackLang.HolProg 64 :=
.seq rawBody372_0 rawBody372_11

def raw372 : StackLang.HolProg 64 := rawBody372_12
theorem raw372_eq : StackRawCall.compTop RawInfo.rawInfo (function372 (.list [])).1 = raw372 := by
  kernel_rfl
#print axioms raw372_eq
end InitECandidate.Proofs.BackendStages
