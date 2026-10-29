import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc75
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody75_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody75_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody75_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody75_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody75_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody75_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551592#64))

def RemovedBody75_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody75_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody75_8 : StackLang.HolProg 64 :=
.seq RemovedBody75_6 RemovedBody75_7

def RemovedBody75_9 : StackLang.HolProg 64 :=
.seq RemovedBody75_5 RemovedBody75_8

def RemovedBody75_10 : StackLang.HolProg 64 :=
.seq RemovedBody75_4 RemovedBody75_9

def RemovedBody75_11 : StackLang.HolProg 64 :=
.seq RemovedBody75_3 RemovedBody75_10

def RemovedBody75_12 : StackLang.HolProg 64 :=
.seq RemovedBody75_2 RemovedBody75_11

def RemovedBody75_13 : StackLang.HolProg 64 :=
.seq RemovedBody75_1 RemovedBody75_12

def RemovedBody75_14 : StackLang.HolProg 64 :=
.seq RemovedBody75_0 RemovedBody75_13

def Removed75 : Nat × StackLang.HolProg 64 := (75, RemovedBody75_14)
theorem Removed75_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc75 = Removed75 := by
  kernel_rfl
#print axioms Removed75_eq
end InitECandidate.Proofs.BackendStages
