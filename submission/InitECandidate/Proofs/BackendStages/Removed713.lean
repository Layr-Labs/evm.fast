import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc713
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody713_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody713_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody713_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody713_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody713_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody713_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody713_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody713_7 : StackLang.HolProg 64 :=
.seq RemovedBody713_5 RemovedBody713_6

def RemovedBody713_8 : StackLang.HolProg 64 :=
.seq RemovedBody713_4 RemovedBody713_7

def RemovedBody713_9 : StackLang.HolProg 64 :=
.seq RemovedBody713_3 RemovedBody713_8

def RemovedBody713_10 : StackLang.HolProg 64 :=
.seq RemovedBody713_2 RemovedBody713_9

def RemovedBody713_11 : StackLang.HolProg 64 :=
.seq RemovedBody713_1 RemovedBody713_10

def RemovedBody713_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody713_13 : StackLang.HolProg 64 :=
.call none (Sum.inl 710) none

def RemovedBody713_14 : StackLang.HolProg 64 :=
.seq RemovedBody713_12 RemovedBody713_13

def RemovedBody713_15 : StackLang.HolProg 64 :=
.seq RemovedBody713_11 RemovedBody713_14

def RemovedBody713_16 : StackLang.HolProg 64 :=
.seq RemovedBody713_0 RemovedBody713_15

def Removed713 : Nat × StackLang.HolProg 64 := (713, RemovedBody713_16)
theorem Removed713_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc713 = Removed713 := by
  kernel_rfl
#print axioms Removed713_eq
end InitECandidate.Proofs.BackendStages
