import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc113
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody113_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody113_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody113_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody113_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody113_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody113_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody113_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody113_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody113_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody113_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody113_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody113_11 : StackLang.HolProg 64 :=
.seq RemovedBody113_9 RemovedBody113_10

def RemovedBody113_12 : StackLang.HolProg 64 :=
.seq RemovedBody113_8 RemovedBody113_11

def RemovedBody113_13 : StackLang.HolProg 64 :=
.seq RemovedBody113_7 RemovedBody113_12

def RemovedBody113_14 : StackLang.HolProg 64 :=
.seq RemovedBody113_6 RemovedBody113_13

def RemovedBody113_15 : StackLang.HolProg 64 :=
.seq RemovedBody113_5 RemovedBody113_14

def RemovedBody113_16 : StackLang.HolProg 64 :=
.seq RemovedBody113_4 RemovedBody113_15

def RemovedBody113_17 : StackLang.HolProg 64 :=
.seq RemovedBody113_3 RemovedBody113_16

def RemovedBody113_18 : StackLang.HolProg 64 :=
.seq RemovedBody113_2 RemovedBody113_17

def RemovedBody113_19 : StackLang.HolProg 64 :=
.seq RemovedBody113_1 RemovedBody113_18

def RemovedBody113_20 : StackLang.HolProg 64 :=
.seq RemovedBody113_0 RemovedBody113_19

def Removed113 : Nat × StackLang.HolProg 64 := (113, RemovedBody113_20)
theorem Removed113_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc113 = Removed113 := by
  kernel_rfl
#print axioms Removed113_eq
end InitECandidate.Proofs.BackendStages
