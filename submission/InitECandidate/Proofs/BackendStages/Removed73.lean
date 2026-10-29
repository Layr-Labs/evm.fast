import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc73
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody73_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody73_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody73_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody73_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody73_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody73_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551584#64)))

def RemovedBody73_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody73_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody73_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody73_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody73_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody73_11 : StackLang.HolProg 64 :=
.seq RemovedBody73_9 RemovedBody73_10

def RemovedBody73_12 : StackLang.HolProg 64 :=
.seq RemovedBody73_8 RemovedBody73_11

def RemovedBody73_13 : StackLang.HolProg 64 :=
.seq RemovedBody73_7 RemovedBody73_12

def RemovedBody73_14 : StackLang.HolProg 64 :=
.seq RemovedBody73_6 RemovedBody73_13

def RemovedBody73_15 : StackLang.HolProg 64 :=
.seq RemovedBody73_5 RemovedBody73_14

def RemovedBody73_16 : StackLang.HolProg 64 :=
.seq RemovedBody73_4 RemovedBody73_15

def RemovedBody73_17 : StackLang.HolProg 64 :=
.seq RemovedBody73_3 RemovedBody73_16

def RemovedBody73_18 : StackLang.HolProg 64 :=
.seq RemovedBody73_2 RemovedBody73_17

def RemovedBody73_19 : StackLang.HolProg 64 :=
.seq RemovedBody73_1 RemovedBody73_18

def RemovedBody73_20 : StackLang.HolProg 64 :=
.seq RemovedBody73_0 RemovedBody73_19

def Removed73 : Nat × StackLang.HolProg 64 := (73, RemovedBody73_20)
theorem Removed73_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc73 = Removed73 := by
  kernel_rfl
#print axioms Removed73_eq
end InitECandidate.Proofs.BackendStages
