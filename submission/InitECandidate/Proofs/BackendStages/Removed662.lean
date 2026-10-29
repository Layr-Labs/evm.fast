import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc662
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody662_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody662_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody662_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 493319470278259999#64)

def RemovedBody662_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 5164255478447964150#64)

def RemovedBody662_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 13107472804851548667#64)

def RemovedBody662_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 17522657719365597833#64)

def RemovedBody662_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody662_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody662_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 661) none

def RemovedBody662_9 : StackLang.HolProg 64 :=
.seq RemovedBody662_7 RemovedBody662_8

def RemovedBody662_10 : StackLang.HolProg 64 :=
.seq RemovedBody662_6 RemovedBody662_9

def RemovedBody662_11 : StackLang.HolProg 64 :=
.seq RemovedBody662_5 RemovedBody662_10

def RemovedBody662_12 : StackLang.HolProg 64 :=
.seq RemovedBody662_4 RemovedBody662_11

def RemovedBody662_13 : StackLang.HolProg 64 :=
.seq RemovedBody662_3 RemovedBody662_12

def RemovedBody662_14 : StackLang.HolProg 64 :=
.seq RemovedBody662_2 RemovedBody662_13

def RemovedBody662_15 : StackLang.HolProg 64 :=
.seq RemovedBody662_1 RemovedBody662_14

def RemovedBody662_16 : StackLang.HolProg 64 :=
.seq RemovedBody662_0 RemovedBody662_15

def Removed662 : Nat × StackLang.HolProg 64 := (662, RemovedBody662_16)
theorem Removed662_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc662 = Removed662 := by
  kernel_rfl
#print axioms Removed662_eq
end InitECandidate.Proofs.BackendStages
