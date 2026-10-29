import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc348
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody348_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody348_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody348_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody348_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody348_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody348_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody348_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def RemovedBody348_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody348_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def RemovedBody348_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody348_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody348_11 : StackLang.HolProg 64 :=
.seq RemovedBody348_9 RemovedBody348_10

def RemovedBody348_12 : StackLang.HolProg 64 :=
.seq RemovedBody348_8 RemovedBody348_11

def RemovedBody348_13 : StackLang.HolProg 64 :=
.seq RemovedBody348_7 RemovedBody348_12

def RemovedBody348_14 : StackLang.HolProg 64 :=
.seq RemovedBody348_6 RemovedBody348_13

def RemovedBody348_15 : StackLang.HolProg 64 :=
.seq RemovedBody348_5 RemovedBody348_14

def RemovedBody348_16 : StackLang.HolProg 64 :=
.seq RemovedBody348_4 RemovedBody348_15

def RemovedBody348_17 : StackLang.HolProg 64 :=
.seq RemovedBody348_3 RemovedBody348_16

def RemovedBody348_18 : StackLang.HolProg 64 :=
.seq RemovedBody348_2 RemovedBody348_17

def RemovedBody348_19 : StackLang.HolProg 64 :=
.seq RemovedBody348_1 RemovedBody348_18

def RemovedBody348_20 : StackLang.HolProg 64 :=
.seq RemovedBody348_0 RemovedBody348_19

def Removed348 : Nat × StackLang.HolProg 64 := (348, RemovedBody348_20)
theorem Removed348_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc348 = Removed348 := by
  kernel_rfl
#print axioms Removed348_eq
end InitECandidate.Proofs.BackendStages
