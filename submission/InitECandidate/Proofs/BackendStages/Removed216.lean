import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc216
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody216_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody216_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody216_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 18446744073709551615#64)

def RemovedBody216_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 18446744073709551614#64)

def RemovedBody216_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 13451932020343611451#64)

def RemovedBody216_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 13822214165235122497#64)

def RemovedBody216_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody216_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody216_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 135) none

def RemovedBody216_9 : StackLang.HolProg 64 :=
.seq RemovedBody216_7 RemovedBody216_8

def RemovedBody216_10 : StackLang.HolProg 64 :=
.seq RemovedBody216_6 RemovedBody216_9

def RemovedBody216_11 : StackLang.HolProg 64 :=
.seq RemovedBody216_5 RemovedBody216_10

def RemovedBody216_12 : StackLang.HolProg 64 :=
.seq RemovedBody216_4 RemovedBody216_11

def RemovedBody216_13 : StackLang.HolProg 64 :=
.seq RemovedBody216_3 RemovedBody216_12

def RemovedBody216_14 : StackLang.HolProg 64 :=
.seq RemovedBody216_2 RemovedBody216_13

def RemovedBody216_15 : StackLang.HolProg 64 :=
.seq RemovedBody216_1 RemovedBody216_14

def RemovedBody216_16 : StackLang.HolProg 64 :=
.seq RemovedBody216_0 RemovedBody216_15

def Removed216 : Nat × StackLang.HolProg 64 := (216, RemovedBody216_16)
theorem Removed216_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc216 = Removed216 := by
  kernel_rfl
#print axioms Removed216_eq
end InitECandidate.Proofs.BackendStages
