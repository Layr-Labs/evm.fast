import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function713
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody713_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody713_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody713_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody713_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody713_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody713_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody713_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody713_7 : StackLang.HolProg 64 :=
.seq rawBody713_5 rawBody713_6

def rawBody713_8 : StackLang.HolProg 64 :=
.seq rawBody713_4 rawBody713_7

def rawBody713_9 : StackLang.HolProg 64 :=
.seq rawBody713_3 rawBody713_8

def rawBody713_10 : StackLang.HolProg 64 :=
.seq rawBody713_2 rawBody713_9

def rawBody713_11 : StackLang.HolProg 64 :=
.seq rawBody713_1 rawBody713_10

def rawBody713_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody713_13 : StackLang.HolProg 64 :=
.call none (Sum.inl 710) none

def rawBody713_14 : StackLang.HolProg 64 :=
.seq rawBody713_12 rawBody713_13

def rawBody713_15 : StackLang.HolProg 64 :=
.seq rawBody713_11 rawBody713_14

def rawBody713_16 : StackLang.HolProg 64 :=
.seq rawBody713_0 rawBody713_15

def raw713 : StackLang.HolProg 64 := rawBody713_16
theorem raw713_eq : StackRawCall.compTop RawInfo.rawInfo (function713 (.list [])).1 = raw713 := by
  kernel_rfl
#print axioms raw713_eq
end InitECandidate.Proofs.BackendStages
