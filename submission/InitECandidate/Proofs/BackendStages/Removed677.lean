import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc677
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody677_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody677_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody677_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody677_3 : StackLang.HolProg 64 :=
.seq RemovedBody677_1 RemovedBody677_2

def RemovedBody677_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody677_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody677_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody677_7 : StackLang.HolProg 64 :=
.call none (Sum.inl 79) none

def RemovedBody677_8 : StackLang.HolProg 64 :=
.seq RemovedBody677_6 RemovedBody677_7

def RemovedBody677_9 : StackLang.HolProg 64 :=
.seq RemovedBody677_5 RemovedBody677_8

def RemovedBody677_10 : StackLang.HolProg 64 :=
.seq RemovedBody677_4 RemovedBody677_9

def RemovedBody677_11 : StackLang.HolProg 64 :=
.seq RemovedBody677_3 RemovedBody677_10

def RemovedBody677_12 : StackLang.HolProg 64 :=
.seq RemovedBody677_0 RemovedBody677_11

def Removed677 : Nat × StackLang.HolProg 64 := (677, RemovedBody677_12)
theorem Removed677_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc677 = Removed677 := by
  kernel_rfl
#print axioms Removed677_eq
end InitECandidate.Proofs.BackendStages
