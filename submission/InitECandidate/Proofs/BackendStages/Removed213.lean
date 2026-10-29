import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc213
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody213_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody213_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody213_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def RemovedBody213_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def RemovedBody213_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def RemovedBody213_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)

def RemovedBody213_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody213_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody213_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 210) none

def RemovedBody213_9 : StackLang.HolProg 64 :=
.seq RemovedBody213_7 RemovedBody213_8

def RemovedBody213_10 : StackLang.HolProg 64 :=
.seq RemovedBody213_6 RemovedBody213_9

def RemovedBody213_11 : StackLang.HolProg 64 :=
.seq RemovedBody213_5 RemovedBody213_10

def RemovedBody213_12 : StackLang.HolProg 64 :=
.seq RemovedBody213_4 RemovedBody213_11

def RemovedBody213_13 : StackLang.HolProg 64 :=
.seq RemovedBody213_3 RemovedBody213_12

def RemovedBody213_14 : StackLang.HolProg 64 :=
.seq RemovedBody213_2 RemovedBody213_13

def RemovedBody213_15 : StackLang.HolProg 64 :=
.seq RemovedBody213_1 RemovedBody213_14

def RemovedBody213_16 : StackLang.HolProg 64 :=
.seq RemovedBody213_0 RemovedBody213_15

def Removed213 : Nat × StackLang.HolProg 64 := (213, RemovedBody213_16)
theorem Removed213_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc213 = Removed213 := by
  kernel_rfl
#print axioms Removed213_eq
end InitECandidate.Proofs.BackendStages
