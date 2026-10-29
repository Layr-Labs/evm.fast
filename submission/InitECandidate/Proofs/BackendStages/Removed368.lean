import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc368
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody368_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody368_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody368_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody368_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody368_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody368_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody368_6 : StackLang.HolProg 64 :=
.call none (Sum.inl 367) none

def RemovedBody368_7 : StackLang.HolProg 64 :=
.seq RemovedBody368_5 RemovedBody368_6

def RemovedBody368_8 : StackLang.HolProg 64 :=
.seq RemovedBody368_4 RemovedBody368_7

def RemovedBody368_9 : StackLang.HolProg 64 :=
.seq RemovedBody368_3 RemovedBody368_8

def RemovedBody368_10 : StackLang.HolProg 64 :=
.seq RemovedBody368_2 RemovedBody368_9

def RemovedBody368_11 : StackLang.HolProg 64 :=
.seq RemovedBody368_1 RemovedBody368_10

def RemovedBody368_12 : StackLang.HolProg 64 :=
.seq RemovedBody368_0 RemovedBody368_11

def Removed368 : Nat × StackLang.HolProg 64 := (368, RemovedBody368_12)
theorem Removed368_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc368 = Removed368 := by
  kernel_rfl
#print axioms Removed368_eq
end InitECandidate.Proofs.BackendStages
