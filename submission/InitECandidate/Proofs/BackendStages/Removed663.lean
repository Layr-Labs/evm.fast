import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc663
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody663_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody663_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody663_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def RemovedBody663_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def RemovedBody663_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody663_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def RemovedBody663_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody663_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody663_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 661) none

def RemovedBody663_9 : StackLang.HolProg 64 :=
.seq RemovedBody663_7 RemovedBody663_8

def RemovedBody663_10 : StackLang.HolProg 64 :=
.seq RemovedBody663_6 RemovedBody663_9

def RemovedBody663_11 : StackLang.HolProg 64 :=
.seq RemovedBody663_5 RemovedBody663_10

def RemovedBody663_12 : StackLang.HolProg 64 :=
.seq RemovedBody663_4 RemovedBody663_11

def RemovedBody663_13 : StackLang.HolProg 64 :=
.seq RemovedBody663_3 RemovedBody663_12

def RemovedBody663_14 : StackLang.HolProg 64 :=
.seq RemovedBody663_2 RemovedBody663_13

def RemovedBody663_15 : StackLang.HolProg 64 :=
.seq RemovedBody663_1 RemovedBody663_14

def RemovedBody663_16 : StackLang.HolProg 64 :=
.seq RemovedBody663_0 RemovedBody663_15

def Removed663 : Nat × StackLang.HolProg 64 := (663, RemovedBody663_16)
theorem Removed663_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc663 = Removed663 := by
  kernel_rfl
#print axioms Removed663_eq
end InitECandidate.Proofs.BackendStages
