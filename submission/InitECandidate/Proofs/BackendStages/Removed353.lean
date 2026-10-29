import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc353
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody353_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody353_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody353_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 352#64))

def RemovedBody353_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody353_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 360#64))

def RemovedBody353_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody353_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 368#64))

def RemovedBody353_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody353_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 376#64))

def RemovedBody353_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody353_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody353_11 : StackLang.HolProg 64 :=
.seq RemovedBody353_9 RemovedBody353_10

def RemovedBody353_12 : StackLang.HolProg 64 :=
.seq RemovedBody353_8 RemovedBody353_11

def RemovedBody353_13 : StackLang.HolProg 64 :=
.seq RemovedBody353_7 RemovedBody353_12

def RemovedBody353_14 : StackLang.HolProg 64 :=
.seq RemovedBody353_6 RemovedBody353_13

def RemovedBody353_15 : StackLang.HolProg 64 :=
.seq RemovedBody353_5 RemovedBody353_14

def RemovedBody353_16 : StackLang.HolProg 64 :=
.seq RemovedBody353_4 RemovedBody353_15

def RemovedBody353_17 : StackLang.HolProg 64 :=
.seq RemovedBody353_3 RemovedBody353_16

def RemovedBody353_18 : StackLang.HolProg 64 :=
.seq RemovedBody353_2 RemovedBody353_17

def RemovedBody353_19 : StackLang.HolProg 64 :=
.seq RemovedBody353_1 RemovedBody353_18

def RemovedBody353_20 : StackLang.HolProg 64 :=
.seq RemovedBody353_0 RemovedBody353_19

def Removed353 : Nat × StackLang.HolProg 64 := (353, RemovedBody353_20)
theorem Removed353_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc353 = Removed353 := by
  kernel_rfl
#print axioms Removed353_eq
end InitECandidate.Proofs.BackendStages
