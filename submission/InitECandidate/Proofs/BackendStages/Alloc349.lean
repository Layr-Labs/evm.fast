import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw349
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody349_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody349_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody349_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 152#64))

def AllocBody349_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody349_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody349_5 : StackLang.HolProg 64 :=
.seq AllocBody349_3 AllocBody349_4

def AllocBody349_6 : StackLang.HolProg 64 :=
.seq AllocBody349_2 AllocBody349_5

def AllocBody349_7 : StackLang.HolProg 64 :=
.seq AllocBody349_1 AllocBody349_6

def AllocBody349_8 : StackLang.HolProg 64 :=
.seq AllocBody349_0 AllocBody349_7

def Alloc349 : Nat × StackLang.HolProg 64 := (349, AllocBody349_8)
theorem Alloc349_eq : StackAlloc.progComp (349, raw349) = Alloc349 := by
  kernel_rfl
#print axioms Alloc349_eq
end InitECandidate.Proofs.BackendStages
