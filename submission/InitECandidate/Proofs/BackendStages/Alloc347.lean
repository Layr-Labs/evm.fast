import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw347
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody347_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody347_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody347_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 144#64))

def AllocBody347_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody347_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody347_5 : StackLang.HolProg 64 :=
.seq AllocBody347_3 AllocBody347_4

def AllocBody347_6 : StackLang.HolProg 64 :=
.seq AllocBody347_2 AllocBody347_5

def AllocBody347_7 : StackLang.HolProg 64 :=
.seq AllocBody347_1 AllocBody347_6

def AllocBody347_8 : StackLang.HolProg 64 :=
.seq AllocBody347_0 AllocBody347_7

def Alloc347 : Nat × StackLang.HolProg 64 := (347, AllocBody347_8)
theorem Alloc347_eq : StackAlloc.progComp (347, raw347) = Alloc347 := by
  kernel_rfl
#print axioms Alloc347_eq
end InitECandidate.Proofs.BackendStages
