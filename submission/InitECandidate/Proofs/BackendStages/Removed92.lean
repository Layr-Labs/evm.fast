import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc92
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody92_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody92_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody92_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody92_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody92_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody92_5 : StackLang.HolProg 64 :=
.seq RemovedBody92_3 RemovedBody92_4

def RemovedBody92_6 : StackLang.HolProg 64 :=
.seq RemovedBody92_2 RemovedBody92_5

def RemovedBody92_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody92_8 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody92_6 RemovedBody92_7

def RemovedBody92_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody92_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody92_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody92_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody92_13 : StackLang.HolProg 64 :=
.seq RemovedBody92_11 RemovedBody92_12

def RemovedBody92_14 : StackLang.HolProg 64 :=
.seq RemovedBody92_10 RemovedBody92_13

def RemovedBody92_15 : StackLang.HolProg 64 :=
.seq RemovedBody92_9 RemovedBody92_14

def RemovedBody92_16 : StackLang.HolProg 64 :=
.seq RemovedBody92_8 RemovedBody92_15

def RemovedBody92_17 : StackLang.HolProg 64 :=
.seq RemovedBody92_1 RemovedBody92_16

def RemovedBody92_18 : StackLang.HolProg 64 :=
.seq RemovedBody92_0 RemovedBody92_17

def Removed92 : Nat × StackLang.HolProg 64 := (92, RemovedBody92_18)
theorem Removed92_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc92 = Removed92 := by
  kernel_rfl
#print axioms Removed92_eq
end InitECandidate.Proofs.BackendStages
