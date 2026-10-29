import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc214
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody214_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody214_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody214_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 4611686018427387903#64)

def RemovedBody214_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def RemovedBody214_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def RemovedBody214_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744072635809548#64)

def RemovedBody214_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody214_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody214_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 208) none

def RemovedBody214_9 : StackLang.HolProg 64 :=
.seq RemovedBody214_7 RemovedBody214_8

def RemovedBody214_10 : StackLang.HolProg 64 :=
.seq RemovedBody214_6 RemovedBody214_9

def RemovedBody214_11 : StackLang.HolProg 64 :=
.seq RemovedBody214_5 RemovedBody214_10

def RemovedBody214_12 : StackLang.HolProg 64 :=
.seq RemovedBody214_4 RemovedBody214_11

def RemovedBody214_13 : StackLang.HolProg 64 :=
.seq RemovedBody214_3 RemovedBody214_12

def RemovedBody214_14 : StackLang.HolProg 64 :=
.seq RemovedBody214_2 RemovedBody214_13

def RemovedBody214_15 : StackLang.HolProg 64 :=
.seq RemovedBody214_1 RemovedBody214_14

def RemovedBody214_16 : StackLang.HolProg 64 :=
.seq RemovedBody214_0 RemovedBody214_15

def Removed214 : Nat × StackLang.HolProg 64 := (214, RemovedBody214_16)
theorem Removed214_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc214 = Removed214 := by
  kernel_rfl
#print axioms Removed214_eq
end InitECandidate.Proofs.BackendStages
