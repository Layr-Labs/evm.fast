import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function715
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody715_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody715_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody715_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody715_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody715_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody715_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody715_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody715_7 : StackLang.HolProg 64 :=
.seq rawBody715_5 rawBody715_6

def rawBody715_8 : StackLang.HolProg 64 :=
.seq rawBody715_4 rawBody715_7

def rawBody715_9 : StackLang.HolProg 64 :=
.seq rawBody715_3 rawBody715_8

def rawBody715_10 : StackLang.HolProg 64 :=
.seq rawBody715_2 rawBody715_9

def rawBody715_11 : StackLang.HolProg 64 :=
.seq rawBody715_1 rawBody715_10

def rawBody715_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody715_13 : StackLang.HolProg 64 :=
.call none (Sum.inl 714) none

def rawBody715_14 : StackLang.HolProg 64 :=
.seq rawBody715_12 rawBody715_13

def rawBody715_15 : StackLang.HolProg 64 :=
.seq rawBody715_11 rawBody715_14

def rawBody715_16 : StackLang.HolProg 64 :=
.seq rawBody715_0 rawBody715_15

def raw715 : StackLang.HolProg 64 := rawBody715_16
theorem raw715_eq : StackRawCall.compTop RawInfo.rawInfo (function715 (.list [])).1 = raw715 := by
  kernel_rfl
#print axioms raw715_eq
end InitECandidate.Proofs.BackendStages
