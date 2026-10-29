import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw195
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody195_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody195_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody195_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody195_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody195_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody195_5 : StackLang.HolProg 64 :=
.seq AllocBody195_3 AllocBody195_4

def AllocBody195_6 : StackLang.HolProg 64 :=
.seq AllocBody195_2 AllocBody195_5

def AllocBody195_7 : StackLang.HolProg 64 :=
.seq AllocBody195_1 AllocBody195_6

def AllocBody195_8 : StackLang.HolProg 64 :=
.seq AllocBody195_0 AllocBody195_7

def Alloc195 : Nat × StackLang.HolProg 64 := (195, AllocBody195_8)
theorem Alloc195_eq : StackAlloc.progComp (195, raw195) = Alloc195 := by
  kernel_rfl
#print axioms Alloc195_eq
end InitECandidate.Proofs.BackendStages
