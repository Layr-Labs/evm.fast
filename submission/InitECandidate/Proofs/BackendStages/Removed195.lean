import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc195
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody195_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody195_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody195_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody195_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody195_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody195_5 : StackLang.HolProg 64 :=
.seq RemovedBody195_3 RemovedBody195_4

def RemovedBody195_6 : StackLang.HolProg 64 :=
.seq RemovedBody195_2 RemovedBody195_5

def RemovedBody195_7 : StackLang.HolProg 64 :=
.seq RemovedBody195_1 RemovedBody195_6

def RemovedBody195_8 : StackLang.HolProg 64 :=
.seq RemovedBody195_0 RemovedBody195_7

def Removed195 : Nat × StackLang.HolProg 64 := (195, RemovedBody195_8)
theorem Removed195_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc195 = Removed195 := by
  kernel_rfl
#print axioms Removed195_eq
end InitECandidate.Proofs.BackendStages
