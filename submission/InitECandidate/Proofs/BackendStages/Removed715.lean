import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc715
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody715_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody715_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody715_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody715_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody715_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody715_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody715_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody715_7 : StackLang.HolProg 64 :=
.seq RemovedBody715_5 RemovedBody715_6

def RemovedBody715_8 : StackLang.HolProg 64 :=
.seq RemovedBody715_4 RemovedBody715_7

def RemovedBody715_9 : StackLang.HolProg 64 :=
.seq RemovedBody715_3 RemovedBody715_8

def RemovedBody715_10 : StackLang.HolProg 64 :=
.seq RemovedBody715_2 RemovedBody715_9

def RemovedBody715_11 : StackLang.HolProg 64 :=
.seq RemovedBody715_1 RemovedBody715_10

def RemovedBody715_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody715_13 : StackLang.HolProg 64 :=
.call none (Sum.inl 714) none

def RemovedBody715_14 : StackLang.HolProg 64 :=
.seq RemovedBody715_12 RemovedBody715_13

def RemovedBody715_15 : StackLang.HolProg 64 :=
.seq RemovedBody715_11 RemovedBody715_14

def RemovedBody715_16 : StackLang.HolProg 64 :=
.seq RemovedBody715_0 RemovedBody715_15

def Removed715 : Nat × StackLang.HolProg 64 := (715, RemovedBody715_16)
theorem Removed715_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc715 = Removed715 := by
  kernel_rfl
#print axioms Removed715_eq
end InitECandidate.Proofs.BackendStages
