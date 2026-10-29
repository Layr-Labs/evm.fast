import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function676
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody676_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody676_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody676_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody676_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody676_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody676_5 : StackLang.HolProg 64 :=
.call none (Sum.inl 80) none

def rawBody676_6 : StackLang.HolProg 64 :=
.seq rawBody676_4 rawBody676_5

def rawBody676_7 : StackLang.HolProg 64 :=
.seq rawBody676_3 rawBody676_6

def rawBody676_8 : StackLang.HolProg 64 :=
.seq rawBody676_2 rawBody676_7

def rawBody676_9 : StackLang.HolProg 64 :=
.seq rawBody676_1 rawBody676_8

def rawBody676_10 : StackLang.HolProg 64 :=
.seq rawBody676_0 rawBody676_9

def raw676 : StackLang.HolProg 64 := rawBody676_10
theorem raw676_eq : StackRawCall.compTop RawInfo.rawInfo (function676 (.list [])).1 = raw676 := by
  kernel_rfl
#print axioms raw676_eq
end InitECandidate.Proofs.BackendStages
