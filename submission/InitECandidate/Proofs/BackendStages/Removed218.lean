import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc218
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody218_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody218_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody218_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def RemovedBody218_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551614#64)

def RemovedBody218_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 13451932020343611451#64)

def RemovedBody218_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 13822214165235122495#64)

def RemovedBody218_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody218_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody218_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 217) none

def RemovedBody218_9 : StackLang.HolProg 64 :=
.seq RemovedBody218_7 RemovedBody218_8

def RemovedBody218_10 : StackLang.HolProg 64 :=
.seq RemovedBody218_6 RemovedBody218_9

def RemovedBody218_11 : StackLang.HolProg 64 :=
.seq RemovedBody218_5 RemovedBody218_10

def RemovedBody218_12 : StackLang.HolProg 64 :=
.seq RemovedBody218_4 RemovedBody218_11

def RemovedBody218_13 : StackLang.HolProg 64 :=
.seq RemovedBody218_3 RemovedBody218_12

def RemovedBody218_14 : StackLang.HolProg 64 :=
.seq RemovedBody218_2 RemovedBody218_13

def RemovedBody218_15 : StackLang.HolProg 64 :=
.seq RemovedBody218_1 RemovedBody218_14

def RemovedBody218_16 : StackLang.HolProg 64 :=
.seq RemovedBody218_0 RemovedBody218_15

def Removed218 : Nat × StackLang.HolProg 64 := (218, RemovedBody218_16)
theorem Removed218_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc218 = Removed218 := by
  kernel_rfl
#print axioms Removed218_eq
end InitECandidate.Proofs.BackendStages
