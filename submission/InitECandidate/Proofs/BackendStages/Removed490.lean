import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc490
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody490_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody490_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody490_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody490_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody490_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody490_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def RemovedBody490_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody490_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody490_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody490_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody490_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody490_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody490_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody490_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody490_14 : StackLang.HolProg 64 :=
.seq RemovedBody490_12 RemovedBody490_13

def RemovedBody490_15 : StackLang.HolProg 64 :=
.seq RemovedBody490_11 RemovedBody490_14

def RemovedBody490_16 : StackLang.HolProg 64 :=
.seq RemovedBody490_10 RemovedBody490_15

def RemovedBody490_17 : StackLang.HolProg 64 :=
.seq RemovedBody490_9 RemovedBody490_16

def RemovedBody490_18 : StackLang.HolProg 64 :=
.seq RemovedBody490_8 RemovedBody490_17

def RemovedBody490_19 : StackLang.HolProg 64 :=
.seq RemovedBody490_7 RemovedBody490_18

def RemovedBody490_20 : StackLang.HolProg 64 :=
.seq RemovedBody490_6 RemovedBody490_19

def RemovedBody490_21 : StackLang.HolProg 64 :=
.seq RemovedBody490_5 RemovedBody490_20

def RemovedBody490_22 : StackLang.HolProg 64 :=
.seq RemovedBody490_4 RemovedBody490_21

def RemovedBody490_23 : StackLang.HolProg 64 :=
.seq RemovedBody490_3 RemovedBody490_22

def RemovedBody490_24 : StackLang.HolProg 64 :=
.seq RemovedBody490_2 RemovedBody490_23

def RemovedBody490_25 : StackLang.HolProg 64 :=
.seq RemovedBody490_1 RemovedBody490_24

def RemovedBody490_26 : StackLang.HolProg 64 :=
.seq RemovedBody490_0 RemovedBody490_25

def Removed490 : Nat × StackLang.HolProg 64 := (490, RemovedBody490_26)
theorem Removed490_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc490 = Removed490 := by
  kernel_rfl
#print axioms Removed490_eq
end InitECandidate.Proofs.BackendStages
