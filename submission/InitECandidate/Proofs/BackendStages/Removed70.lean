import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc70
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody70_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody70_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody70_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody70_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody70_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody70_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def RemovedBody70_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody70_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody70_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody70_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody70_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody70_11 : StackLang.HolProg 64 :=
.seq RemovedBody70_9 RemovedBody70_10

def RemovedBody70_12 : StackLang.HolProg 64 :=
.seq RemovedBody70_8 RemovedBody70_11

def RemovedBody70_13 : StackLang.HolProg 64 :=
.seq RemovedBody70_7 RemovedBody70_12

def RemovedBody70_14 : StackLang.HolProg 64 :=
.seq RemovedBody70_6 RemovedBody70_13

def RemovedBody70_15 : StackLang.HolProg 64 :=
.seq RemovedBody70_5 RemovedBody70_14

def RemovedBody70_16 : StackLang.HolProg 64 :=
.seq RemovedBody70_4 RemovedBody70_15

def RemovedBody70_17 : StackLang.HolProg 64 :=
.seq RemovedBody70_3 RemovedBody70_16

def RemovedBody70_18 : StackLang.HolProg 64 :=
.seq RemovedBody70_2 RemovedBody70_17

def RemovedBody70_19 : StackLang.HolProg 64 :=
.seq RemovedBody70_1 RemovedBody70_18

def RemovedBody70_20 : StackLang.HolProg 64 :=
.seq RemovedBody70_0 RemovedBody70_19

def Removed70 : Nat × StackLang.HolProg 64 := (70, RemovedBody70_20)
theorem Removed70_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc70 = Removed70 := by
  kernel_rfl
#print axioms Removed70_eq
end InitECandidate.Proofs.BackendStages
