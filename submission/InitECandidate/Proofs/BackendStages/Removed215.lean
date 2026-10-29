import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc215
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody215_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody215_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody215_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 18446744073709551615#64)

def RemovedBody215_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 18446744073709551614#64)

def RemovedBody215_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 13451932020343611451#64)

def RemovedBody215_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 13822214165235122497#64)

def RemovedBody215_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody215_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody215_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 136) none

def RemovedBody215_9 : StackLang.HolProg 64 :=
.seq RemovedBody215_7 RemovedBody215_8

def RemovedBody215_10 : StackLang.HolProg 64 :=
.seq RemovedBody215_6 RemovedBody215_9

def RemovedBody215_11 : StackLang.HolProg 64 :=
.seq RemovedBody215_5 RemovedBody215_10

def RemovedBody215_12 : StackLang.HolProg 64 :=
.seq RemovedBody215_4 RemovedBody215_11

def RemovedBody215_13 : StackLang.HolProg 64 :=
.seq RemovedBody215_3 RemovedBody215_12

def RemovedBody215_14 : StackLang.HolProg 64 :=
.seq RemovedBody215_2 RemovedBody215_13

def RemovedBody215_15 : StackLang.HolProg 64 :=
.seq RemovedBody215_1 RemovedBody215_14

def RemovedBody215_16 : StackLang.HolProg 64 :=
.seq RemovedBody215_0 RemovedBody215_15

def Removed215 : Nat × StackLang.HolProg 64 := (215, RemovedBody215_16)
theorem Removed215_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc215 = Removed215 := by
  kernel_rfl
#print axioms Removed215_eq
end InitECandidate.Proofs.BackendStages
