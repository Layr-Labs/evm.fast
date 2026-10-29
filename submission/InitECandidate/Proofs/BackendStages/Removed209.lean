import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc209
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody209_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody209_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody209_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def RemovedBody209_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def RemovedBody209_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def RemovedBody209_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583341#64)

def RemovedBody209_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody209_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody209_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 208) none

def RemovedBody209_9 : StackLang.HolProg 64 :=
.seq RemovedBody209_7 RemovedBody209_8

def RemovedBody209_10 : StackLang.HolProg 64 :=
.seq RemovedBody209_6 RemovedBody209_9

def RemovedBody209_11 : StackLang.HolProg 64 :=
.seq RemovedBody209_5 RemovedBody209_10

def RemovedBody209_12 : StackLang.HolProg 64 :=
.seq RemovedBody209_4 RemovedBody209_11

def RemovedBody209_13 : StackLang.HolProg 64 :=
.seq RemovedBody209_3 RemovedBody209_12

def RemovedBody209_14 : StackLang.HolProg 64 :=
.seq RemovedBody209_2 RemovedBody209_13

def RemovedBody209_15 : StackLang.HolProg 64 :=
.seq RemovedBody209_1 RemovedBody209_14

def RemovedBody209_16 : StackLang.HolProg 64 :=
.seq RemovedBody209_0 RemovedBody209_15

def Removed209 : Nat × StackLang.HolProg 64 := (209, RemovedBody209_16)
theorem Removed209_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc209 = Removed209 := by
  kernel_rfl
#print axioms Removed209_eq
end InitECandidate.Proofs.BackendStages
