import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc112
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody112_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody112_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody112_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody112_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody112_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody112_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody112_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody112_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody112_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody112_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody112_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody112_11 : StackLang.HolProg 64 :=
.seq RemovedBody112_9 RemovedBody112_10

def RemovedBody112_12 : StackLang.HolProg 64 :=
.seq RemovedBody112_8 RemovedBody112_11

def RemovedBody112_13 : StackLang.HolProg 64 :=
.seq RemovedBody112_7 RemovedBody112_12

def RemovedBody112_14 : StackLang.HolProg 64 :=
.seq RemovedBody112_6 RemovedBody112_13

def RemovedBody112_15 : StackLang.HolProg 64 :=
.seq RemovedBody112_5 RemovedBody112_14

def RemovedBody112_16 : StackLang.HolProg 64 :=
.seq RemovedBody112_4 RemovedBody112_15

def RemovedBody112_17 : StackLang.HolProg 64 :=
.seq RemovedBody112_3 RemovedBody112_16

def RemovedBody112_18 : StackLang.HolProg 64 :=
.seq RemovedBody112_2 RemovedBody112_17

def RemovedBody112_19 : StackLang.HolProg 64 :=
.seq RemovedBody112_1 RemovedBody112_18

def RemovedBody112_20 : StackLang.HolProg 64 :=
.seq RemovedBody112_0 RemovedBody112_19

def Removed112 : Nat × StackLang.HolProg 64 := (112, RemovedBody112_20)
theorem Removed112_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc112 = Removed112 := by
  kernel_rfl
#print axioms Removed112_eq
end InitECandidate.Proofs.BackendStages
