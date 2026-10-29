import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function677
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody677_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody677_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody677_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody677_3 : StackLang.HolProg 64 :=
.seq rawBody677_1 rawBody677_2

def rawBody677_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody677_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody677_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody677_7 : StackLang.HolProg 64 :=
.call none (Sum.inl 79) none

def rawBody677_8 : StackLang.HolProg 64 :=
.seq rawBody677_6 rawBody677_7

def rawBody677_9 : StackLang.HolProg 64 :=
.seq rawBody677_5 rawBody677_8

def rawBody677_10 : StackLang.HolProg 64 :=
.seq rawBody677_4 rawBody677_9

def rawBody677_11 : StackLang.HolProg 64 :=
.seq rawBody677_3 rawBody677_10

def rawBody677_12 : StackLang.HolProg 64 :=
.seq rawBody677_0 rawBody677_11

def raw677 : StackLang.HolProg 64 := rawBody677_12
theorem raw677_eq : StackRawCall.compTop RawInfo.rawInfo (function677 (.list [])).1 = raw677 := by
  kernel_rfl
#print axioms raw677_eq
end InitECandidate.Proofs.BackendStages
