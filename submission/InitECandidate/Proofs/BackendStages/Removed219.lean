import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc219
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody219_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody219_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody219_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def RemovedBody219_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551614#64)

def RemovedBody219_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 13451932020343611451#64)

def RemovedBody219_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 13822214165235122497#64)

def RemovedBody219_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody219_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody219_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 210) none

def RemovedBody219_9 : StackLang.HolProg 64 :=
.seq RemovedBody219_7 RemovedBody219_8

def RemovedBody219_10 : StackLang.HolProg 64 :=
.seq RemovedBody219_6 RemovedBody219_9

def RemovedBody219_11 : StackLang.HolProg 64 :=
.seq RemovedBody219_5 RemovedBody219_10

def RemovedBody219_12 : StackLang.HolProg 64 :=
.seq RemovedBody219_4 RemovedBody219_11

def RemovedBody219_13 : StackLang.HolProg 64 :=
.seq RemovedBody219_3 RemovedBody219_12

def RemovedBody219_14 : StackLang.HolProg 64 :=
.seq RemovedBody219_2 RemovedBody219_13

def RemovedBody219_15 : StackLang.HolProg 64 :=
.seq RemovedBody219_1 RemovedBody219_14

def RemovedBody219_16 : StackLang.HolProg 64 :=
.seq RemovedBody219_0 RemovedBody219_15

def Removed219 : Nat × StackLang.HolProg 64 := (219, RemovedBody219_16)
theorem Removed219_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc219 = Removed219 := by
  kernel_rfl
#print axioms Removed219_eq
end InitECandidate.Proofs.BackendStages
