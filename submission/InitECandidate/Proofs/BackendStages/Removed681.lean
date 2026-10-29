import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc681
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody681_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody681_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody681_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody681_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody681_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody681_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody681_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody681_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody681_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 676) none

def RemovedBody681_9 : StackLang.HolProg 64 :=
.seq RemovedBody681_7 RemovedBody681_8

def RemovedBody681_10 : StackLang.HolProg 64 :=
.seq RemovedBody681_6 RemovedBody681_9

def RemovedBody681_11 : StackLang.HolProg 64 :=
.seq RemovedBody681_5 RemovedBody681_10

def RemovedBody681_12 : StackLang.HolProg 64 :=
.seq RemovedBody681_4 RemovedBody681_11

def RemovedBody681_13 : StackLang.HolProg 64 :=
.seq RemovedBody681_3 RemovedBody681_12

def RemovedBody681_14 : StackLang.HolProg 64 :=
.seq RemovedBody681_2 RemovedBody681_13

def RemovedBody681_15 : StackLang.HolProg 64 :=
.seq RemovedBody681_1 RemovedBody681_14

def RemovedBody681_16 : StackLang.HolProg 64 :=
.seq RemovedBody681_0 RemovedBody681_15

def Removed681 : Nat × StackLang.HolProg 64 := (681, RemovedBody681_16)
theorem Removed681_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc681 = Removed681 := by
  kernel_rfl
#print axioms Removed681_eq
end InitECandidate.Proofs.BackendStages
