import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc647
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody647_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody647_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody647_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)

def RemovedBody647_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def RemovedBody647_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def RemovedBody647_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)

def RemovedBody647_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody647_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody647_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 210) none

def RemovedBody647_9 : StackLang.HolProg 64 :=
.seq RemovedBody647_7 RemovedBody647_8

def RemovedBody647_10 : StackLang.HolProg 64 :=
.seq RemovedBody647_6 RemovedBody647_9

def RemovedBody647_11 : StackLang.HolProg 64 :=
.seq RemovedBody647_5 RemovedBody647_10

def RemovedBody647_12 : StackLang.HolProg 64 :=
.seq RemovedBody647_4 RemovedBody647_11

def RemovedBody647_13 : StackLang.HolProg 64 :=
.seq RemovedBody647_3 RemovedBody647_12

def RemovedBody647_14 : StackLang.HolProg 64 :=
.seq RemovedBody647_2 RemovedBody647_13

def RemovedBody647_15 : StackLang.HolProg 64 :=
.seq RemovedBody647_1 RemovedBody647_14

def RemovedBody647_16 : StackLang.HolProg 64 :=
.seq RemovedBody647_0 RemovedBody647_15

def Removed647 : Nat × StackLang.HolProg 64 := (647, RemovedBody647_16)
theorem Removed647_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc647 = Removed647 := by
  kernel_rfl
#print axioms Removed647_eq
end InitECandidate.Proofs.BackendStages
