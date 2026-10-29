import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc69
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody69_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody69_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody69_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody69_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody69_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody69_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551608#64))

def RemovedBody69_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody69_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody69_8 : StackLang.HolProg 64 :=
.seq RemovedBody69_6 RemovedBody69_7

def RemovedBody69_9 : StackLang.HolProg 64 :=
.seq RemovedBody69_5 RemovedBody69_8

def RemovedBody69_10 : StackLang.HolProg 64 :=
.seq RemovedBody69_4 RemovedBody69_9

def RemovedBody69_11 : StackLang.HolProg 64 :=
.seq RemovedBody69_3 RemovedBody69_10

def RemovedBody69_12 : StackLang.HolProg 64 :=
.seq RemovedBody69_2 RemovedBody69_11

def RemovedBody69_13 : StackLang.HolProg 64 :=
.seq RemovedBody69_1 RemovedBody69_12

def RemovedBody69_14 : StackLang.HolProg 64 :=
.seq RemovedBody69_0 RemovedBody69_13

def Removed69 : Nat × StackLang.HolProg 64 := (69, RemovedBody69_14)
theorem Removed69_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc69 = Removed69 := by
  kernel_rfl
#print axioms Removed69_eq
end InitECandidate.Proofs.BackendStages
