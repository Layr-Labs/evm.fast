import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc716
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody716_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody716_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody716_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1267921511277847466#64)

def RemovedBody716_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 11130996698012816685#64)

def RemovedBody716_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 7488229067341005760#64)

def RemovedBody716_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 10224657059481499349#64)

def RemovedBody716_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 754043588434789617#64)

def RemovedBody716_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 17644856173732828998#64)

def RemovedBody716_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody716_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody716_10 : StackLang.HolProg 64 :=
.call none (Sum.inl 714) none

def RemovedBody716_11 : StackLang.HolProg 64 :=
.seq RemovedBody716_9 RemovedBody716_10

def RemovedBody716_12 : StackLang.HolProg 64 :=
.seq RemovedBody716_8 RemovedBody716_11

def RemovedBody716_13 : StackLang.HolProg 64 :=
.seq RemovedBody716_7 RemovedBody716_12

def RemovedBody716_14 : StackLang.HolProg 64 :=
.seq RemovedBody716_6 RemovedBody716_13

def RemovedBody716_15 : StackLang.HolProg 64 :=
.seq RemovedBody716_5 RemovedBody716_14

def RemovedBody716_16 : StackLang.HolProg 64 :=
.seq RemovedBody716_4 RemovedBody716_15

def RemovedBody716_17 : StackLang.HolProg 64 :=
.seq RemovedBody716_3 RemovedBody716_16

def RemovedBody716_18 : StackLang.HolProg 64 :=
.seq RemovedBody716_2 RemovedBody716_17

def RemovedBody716_19 : StackLang.HolProg 64 :=
.seq RemovedBody716_1 RemovedBody716_18

def RemovedBody716_20 : StackLang.HolProg 64 :=
.seq RemovedBody716_0 RemovedBody716_19

def Removed716 : Nat × StackLang.HolProg 64 := (716, RemovedBody716_20)
theorem Removed716_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc716 = Removed716 := by
  kernel_rfl
#print axioms Removed716_eq
end InitECandidate.Proofs.BackendStages
