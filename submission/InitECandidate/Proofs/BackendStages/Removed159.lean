import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc159
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody159_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody159_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody159_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody159_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody159_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody159_5 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody159_6 : StackLang.HolProg 64 :=
.seq RemovedBody159_4 RemovedBody159_5

def RemovedBody159_7 : StackLang.HolProg 64 :=
.seq RemovedBody159_3 RemovedBody159_6

def RemovedBody159_8 : StackLang.HolProg 64 :=
.seq RemovedBody159_2 RemovedBody159_7

def RemovedBody159_9 : StackLang.HolProg 64 :=
.seq RemovedBody159_1 RemovedBody159_8

def RemovedBody159_10 : StackLang.HolProg 64 :=
.seq RemovedBody159_0 RemovedBody159_9

def Removed159 : Nat × StackLang.HolProg 64 := (159, RemovedBody159_10)
theorem Removed159_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc159 = Removed159 := by
  kernel_rfl
#print axioms Removed159_eq
end InitECandidate.Proofs.BackendStages
