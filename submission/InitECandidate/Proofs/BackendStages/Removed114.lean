import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc114
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody114_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody114_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody114_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody114_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody114_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody114_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody114_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody114_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody114_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody114_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody114_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody114_11 : StackLang.HolProg 64 :=
.seq RemovedBody114_9 RemovedBody114_10

def RemovedBody114_12 : StackLang.HolProg 64 :=
.seq RemovedBody114_8 RemovedBody114_11

def RemovedBody114_13 : StackLang.HolProg 64 :=
.seq RemovedBody114_7 RemovedBody114_12

def RemovedBody114_14 : StackLang.HolProg 64 :=
.seq RemovedBody114_6 RemovedBody114_13

def RemovedBody114_15 : StackLang.HolProg 64 :=
.seq RemovedBody114_5 RemovedBody114_14

def RemovedBody114_16 : StackLang.HolProg 64 :=
.seq RemovedBody114_4 RemovedBody114_15

def RemovedBody114_17 : StackLang.HolProg 64 :=
.seq RemovedBody114_3 RemovedBody114_16

def RemovedBody114_18 : StackLang.HolProg 64 :=
.seq RemovedBody114_2 RemovedBody114_17

def RemovedBody114_19 : StackLang.HolProg 64 :=
.seq RemovedBody114_1 RemovedBody114_18

def RemovedBody114_20 : StackLang.HolProg 64 :=
.seq RemovedBody114_0 RemovedBody114_19

def Removed114 : Nat × StackLang.HolProg 64 := (114, RemovedBody114_20)
theorem Removed114_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc114 = Removed114 := by
  kernel_rfl
#print axioms Removed114_eq
end InitECandidate.Proofs.BackendStages
