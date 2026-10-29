import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc491
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody491_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody491_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody491_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody491_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody491_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody491_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody491_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def RemovedBody491_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody491_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody491_9 : StackLang.HolProg 64 :=
.seq RemovedBody491_7 RemovedBody491_8

def RemovedBody491_10 : StackLang.HolProg 64 :=
.seq RemovedBody491_6 RemovedBody491_9

def RemovedBody491_11 : StackLang.HolProg 64 :=
.seq RemovedBody491_5 RemovedBody491_10

def RemovedBody491_12 : StackLang.HolProg 64 :=
.seq RemovedBody491_4 RemovedBody491_11

def RemovedBody491_13 : StackLang.HolProg 64 :=
.seq RemovedBody491_3 RemovedBody491_12

def RemovedBody491_14 : StackLang.HolProg 64 :=
.seq RemovedBody491_2 RemovedBody491_13

def RemovedBody491_15 : StackLang.HolProg 64 :=
.seq RemovedBody491_1 RemovedBody491_14

def RemovedBody491_16 : StackLang.HolProg 64 :=
.seq RemovedBody491_0 RemovedBody491_15

def Removed491 : Nat × StackLang.HolProg 64 := (491, RemovedBody491_16)
theorem Removed491_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc491 = Removed491 := by
  kernel_rfl
#print axioms Removed491_eq
end InitECandidate.Proofs.BackendStages
