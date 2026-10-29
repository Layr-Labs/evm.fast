import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc115
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody115_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody115_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody115_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody115_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody115_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 1 1 5 0))

def RemovedBody115_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody115_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 2 2 6 0))

def RemovedBody115_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody115_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 3 3 7 0))

def RemovedBody115_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody115_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 4 4 8 0))

def RemovedBody115_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody115_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def RemovedBody115_13 : StackLang.HolProg 64 :=
.seq RemovedBody115_11 RemovedBody115_12

def RemovedBody115_14 : StackLang.HolProg 64 :=
.seq RemovedBody115_10 RemovedBody115_13

def RemovedBody115_15 : StackLang.HolProg 64 :=
.seq RemovedBody115_9 RemovedBody115_14

def RemovedBody115_16 : StackLang.HolProg 64 :=
.seq RemovedBody115_8 RemovedBody115_15

def RemovedBody115_17 : StackLang.HolProg 64 :=
.seq RemovedBody115_7 RemovedBody115_16

def RemovedBody115_18 : StackLang.HolProg 64 :=
.seq RemovedBody115_6 RemovedBody115_17

def RemovedBody115_19 : StackLang.HolProg 64 :=
.seq RemovedBody115_5 RemovedBody115_18

def RemovedBody115_20 : StackLang.HolProg 64 :=
.seq RemovedBody115_4 RemovedBody115_19

def RemovedBody115_21 : StackLang.HolProg 64 :=
.seq RemovedBody115_3 RemovedBody115_20

def RemovedBody115_22 : StackLang.HolProg 64 :=
.seq RemovedBody115_2 RemovedBody115_21

def RemovedBody115_23 : StackLang.HolProg 64 :=
.seq RemovedBody115_1 RemovedBody115_22

def RemovedBody115_24 : StackLang.HolProg 64 :=
.seq RemovedBody115_0 RemovedBody115_23

def Removed115 : Nat × StackLang.HolProg 64 := (115, RemovedBody115_24)
theorem Removed115_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc115 = Removed115 := by
  kernel_rfl
#print axioms Removed115_eq
end InitECandidate.Proofs.BackendStages
