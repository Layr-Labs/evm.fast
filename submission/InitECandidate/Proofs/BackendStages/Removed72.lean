import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc72
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody72_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody72_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody72_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody72_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody72_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody72_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551584#64))

def RemovedBody72_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody72_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody72_8 : StackLang.HolProg 64 :=
.seq RemovedBody72_6 RemovedBody72_7

def RemovedBody72_9 : StackLang.HolProg 64 :=
.seq RemovedBody72_5 RemovedBody72_8

def RemovedBody72_10 : StackLang.HolProg 64 :=
.seq RemovedBody72_4 RemovedBody72_9

def RemovedBody72_11 : StackLang.HolProg 64 :=
.seq RemovedBody72_3 RemovedBody72_10

def RemovedBody72_12 : StackLang.HolProg 64 :=
.seq RemovedBody72_2 RemovedBody72_11

def RemovedBody72_13 : StackLang.HolProg 64 :=
.seq RemovedBody72_1 RemovedBody72_12

def RemovedBody72_14 : StackLang.HolProg 64 :=
.seq RemovedBody72_0 RemovedBody72_13

def Removed72 : Nat × StackLang.HolProg 64 := (72, RemovedBody72_14)
theorem Removed72_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc72 = Removed72 := by
  kernel_rfl
#print axioms Removed72_eq
end InitECandidate.Proofs.BackendStages
