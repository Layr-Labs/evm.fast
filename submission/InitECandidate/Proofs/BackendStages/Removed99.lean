import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc99
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody99_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody99_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody99_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody99_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody99_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody99_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody99_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody99_7 : StackLang.HolProg 64 :=
.seq RemovedBody99_5 RemovedBody99_6

def RemovedBody99_8 : StackLang.HolProg 64 :=
.seq RemovedBody99_4 RemovedBody99_7

def RemovedBody99_9 : StackLang.HolProg 64 :=
.seq RemovedBody99_3 RemovedBody99_8

def RemovedBody99_10 : StackLang.HolProg 64 :=
.seq RemovedBody99_2 RemovedBody99_9

def RemovedBody99_11 : StackLang.HolProg 64 :=
.seq RemovedBody99_1 RemovedBody99_10

def RemovedBody99_12 : StackLang.HolProg 64 :=
.seq RemovedBody99_0 RemovedBody99_11

def Removed99 : Nat × StackLang.HolProg 64 := (99, RemovedBody99_12)
theorem Removed99_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc99 = Removed99 := by
  kernel_rfl
#print axioms Removed99_eq
end InitECandidate.Proofs.BackendStages
