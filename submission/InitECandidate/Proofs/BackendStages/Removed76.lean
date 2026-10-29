import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc76
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody76_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody76_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody76_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody76_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody76_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody76_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551592#64)))

def RemovedBody76_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody76_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody76_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody76_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody76_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody76_11 : StackLang.HolProg 64 :=
.seq RemovedBody76_9 RemovedBody76_10

def RemovedBody76_12 : StackLang.HolProg 64 :=
.seq RemovedBody76_8 RemovedBody76_11

def RemovedBody76_13 : StackLang.HolProg 64 :=
.seq RemovedBody76_7 RemovedBody76_12

def RemovedBody76_14 : StackLang.HolProg 64 :=
.seq RemovedBody76_6 RemovedBody76_13

def RemovedBody76_15 : StackLang.HolProg 64 :=
.seq RemovedBody76_5 RemovedBody76_14

def RemovedBody76_16 : StackLang.HolProg 64 :=
.seq RemovedBody76_4 RemovedBody76_15

def RemovedBody76_17 : StackLang.HolProg 64 :=
.seq RemovedBody76_3 RemovedBody76_16

def RemovedBody76_18 : StackLang.HolProg 64 :=
.seq RemovedBody76_2 RemovedBody76_17

def RemovedBody76_19 : StackLang.HolProg 64 :=
.seq RemovedBody76_1 RemovedBody76_18

def RemovedBody76_20 : StackLang.HolProg 64 :=
.seq RemovedBody76_0 RemovedBody76_19

def Removed76 : Nat × StackLang.HolProg 64 := (76, RemovedBody76_20)
theorem Removed76_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc76 = Removed76 := by
  kernel_rfl
#print axioms Removed76_eq
end InitECandidate.Proofs.BackendStages
