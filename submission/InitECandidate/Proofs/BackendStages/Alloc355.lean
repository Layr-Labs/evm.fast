import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw355
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody355_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody355_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody355_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 264#64))

def AllocBody355_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody355_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody355_5 : StackLang.HolProg 64 :=
.seq AllocBody355_3 AllocBody355_4

def AllocBody355_6 : StackLang.HolProg 64 :=
.seq AllocBody355_2 AllocBody355_5

def AllocBody355_7 : StackLang.HolProg 64 :=
.seq AllocBody355_1 AllocBody355_6

def AllocBody355_8 : StackLang.HolProg 64 :=
.seq AllocBody355_0 AllocBody355_7

def Alloc355 : Nat × StackLang.HolProg 64 := (355, AllocBody355_8)
theorem Alloc355_eq : StackAlloc.progComp (355, raw355) = Alloc355 := by
  kernel_rfl
#print axioms Alloc355_eq
end InitECandidate.Proofs.BackendStages
