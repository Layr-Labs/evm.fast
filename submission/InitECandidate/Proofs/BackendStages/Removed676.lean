import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc676
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody676_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody676_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody676_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody676_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody676_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody676_5 : StackLang.HolProg 64 :=
.call none (Sum.inl 80) none

def RemovedBody676_6 : StackLang.HolProg 64 :=
.seq RemovedBody676_4 RemovedBody676_5

def RemovedBody676_7 : StackLang.HolProg 64 :=
.seq RemovedBody676_3 RemovedBody676_6

def RemovedBody676_8 : StackLang.HolProg 64 :=
.seq RemovedBody676_2 RemovedBody676_7

def RemovedBody676_9 : StackLang.HolProg 64 :=
.seq RemovedBody676_1 RemovedBody676_8

def RemovedBody676_10 : StackLang.HolProg 64 :=
.seq RemovedBody676_0 RemovedBody676_9

def Removed676 : Nat × StackLang.HolProg 64 := (676, RemovedBody676_10)
theorem Removed676_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc676 = Removed676 := by
  kernel_rfl
#print axioms Removed676_eq
end InitECandidate.Proofs.BackendStages
