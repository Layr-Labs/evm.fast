import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc222
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody222_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody222_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody222_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 64#64))

def RemovedBody222_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody222_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 72#64))

def RemovedBody222_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody222_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 80#64))

def RemovedBody222_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody222_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 88#64))

def RemovedBody222_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody222_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody222_11 : StackLang.HolProg 64 :=
.call none (Sum.inl 102) none

def RemovedBody222_12 : StackLang.HolProg 64 :=
.seq RemovedBody222_10 RemovedBody222_11

def RemovedBody222_13 : StackLang.HolProg 64 :=
.seq RemovedBody222_9 RemovedBody222_12

def RemovedBody222_14 : StackLang.HolProg 64 :=
.seq RemovedBody222_8 RemovedBody222_13

def RemovedBody222_15 : StackLang.HolProg 64 :=
.seq RemovedBody222_7 RemovedBody222_14

def RemovedBody222_16 : StackLang.HolProg 64 :=
.seq RemovedBody222_6 RemovedBody222_15

def RemovedBody222_17 : StackLang.HolProg 64 :=
.seq RemovedBody222_5 RemovedBody222_16

def RemovedBody222_18 : StackLang.HolProg 64 :=
.seq RemovedBody222_4 RemovedBody222_17

def RemovedBody222_19 : StackLang.HolProg 64 :=
.seq RemovedBody222_3 RemovedBody222_18

def RemovedBody222_20 : StackLang.HolProg 64 :=
.seq RemovedBody222_2 RemovedBody222_19

def RemovedBody222_21 : StackLang.HolProg 64 :=
.seq RemovedBody222_1 RemovedBody222_20

def RemovedBody222_22 : StackLang.HolProg 64 :=
.seq RemovedBody222_0 RemovedBody222_21

def Removed222 : Nat × StackLang.HolProg 64 := (222, RemovedBody222_22)
theorem Removed222_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc222 = Removed222 := by
  kernel_rfl
#print axioms Removed222_eq
end InitECandidate.Proofs.BackendStages
