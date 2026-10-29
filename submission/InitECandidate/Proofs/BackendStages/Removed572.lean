import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc572
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody572_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody572_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody572_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody572_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody572_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody572_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody572_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def RemovedBody572_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody572_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody572_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody572_10 : StackLang.HolProg 64 :=
.seq RemovedBody572_8 RemovedBody572_9

def RemovedBody572_11 : StackLang.HolProg 64 :=
.seq RemovedBody572_7 RemovedBody572_10

def RemovedBody572_12 : StackLang.HolProg 64 :=
.seq RemovedBody572_6 RemovedBody572_11

def RemovedBody572_13 : StackLang.HolProg 64 :=
.seq RemovedBody572_5 RemovedBody572_12

def RemovedBody572_14 : StackLang.HolProg 64 :=
.seq RemovedBody572_4 RemovedBody572_13

def RemovedBody572_15 : StackLang.HolProg 64 :=
.seq RemovedBody572_3 RemovedBody572_14

def RemovedBody572_16 : StackLang.HolProg 64 :=
.seq RemovedBody572_2 RemovedBody572_15

def RemovedBody572_17 : StackLang.HolProg 64 :=
.seq RemovedBody572_1 RemovedBody572_16

def RemovedBody572_18 : StackLang.HolProg 64 :=
.seq RemovedBody572_0 RemovedBody572_17

def Removed572 : Nat × StackLang.HolProg 64 := (572, RemovedBody572_18)
theorem Removed572_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc572 = Removed572 := by
  kernel_rfl
#print axioms Removed572_eq
end InitECandidate.Proofs.BackendStages
