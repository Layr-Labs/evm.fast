import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc717
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody717_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody717_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody717_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def RemovedBody717_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def RemovedBody717_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def RemovedBody717_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def RemovedBody717_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def RemovedBody717_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 1#64)

def RemovedBody717_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody717_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody717_10 : StackLang.HolProg 64 :=
.call none (Sum.inl 714) none

def RemovedBody717_11 : StackLang.HolProg 64 :=
.seq RemovedBody717_9 RemovedBody717_10

def RemovedBody717_12 : StackLang.HolProg 64 :=
.seq RemovedBody717_8 RemovedBody717_11

def RemovedBody717_13 : StackLang.HolProg 64 :=
.seq RemovedBody717_7 RemovedBody717_12

def RemovedBody717_14 : StackLang.HolProg 64 :=
.seq RemovedBody717_6 RemovedBody717_13

def RemovedBody717_15 : StackLang.HolProg 64 :=
.seq RemovedBody717_5 RemovedBody717_14

def RemovedBody717_16 : StackLang.HolProg 64 :=
.seq RemovedBody717_4 RemovedBody717_15

def RemovedBody717_17 : StackLang.HolProg 64 :=
.seq RemovedBody717_3 RemovedBody717_16

def RemovedBody717_18 : StackLang.HolProg 64 :=
.seq RemovedBody717_2 RemovedBody717_17

def RemovedBody717_19 : StackLang.HolProg 64 :=
.seq RemovedBody717_1 RemovedBody717_18

def RemovedBody717_20 : StackLang.HolProg 64 :=
.seq RemovedBody717_0 RemovedBody717_19

def Removed717 : Nat × StackLang.HolProg 64 := (717, RemovedBody717_20)
theorem Removed717_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc717 = Removed717 := by
  kernel_rfl
#print axioms Removed717_eq
end InitECandidate.Proofs.BackendStages
