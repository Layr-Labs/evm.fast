import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc390
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody390_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody390_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody390_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody390_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody390_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody390_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551600#64))

def RemovedBody390_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody390_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody390_8 : StackLang.HolProg 64 :=
.seq RemovedBody390_6 RemovedBody390_7

def RemovedBody390_9 : StackLang.HolProg 64 :=
.seq RemovedBody390_5 RemovedBody390_8

def RemovedBody390_10 : StackLang.HolProg 64 :=
.seq RemovedBody390_4 RemovedBody390_9

def RemovedBody390_11 : StackLang.HolProg 64 :=
.seq RemovedBody390_3 RemovedBody390_10

def RemovedBody390_12 : StackLang.HolProg 64 :=
.seq RemovedBody390_2 RemovedBody390_11

def RemovedBody390_13 : StackLang.HolProg 64 :=
.seq RemovedBody390_1 RemovedBody390_12

def RemovedBody390_14 : StackLang.HolProg 64 :=
.seq RemovedBody390_0 RemovedBody390_13

def Removed390 : Nat × StackLang.HolProg 64 := (390, RemovedBody390_14)
theorem Removed390_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc390 = Removed390 := by
  kernel_rfl
#print axioms Removed390_eq
end InitECandidate.Proofs.BackendStages
