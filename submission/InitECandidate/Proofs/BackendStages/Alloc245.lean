import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw245
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody245_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody245_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody245_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody245_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody245_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody245_5 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody245_6 : StackLang.HolProg 64 :=
.seq AllocBody245_4 AllocBody245_5

def AllocBody245_7 : StackLang.HolProg 64 :=
.seq AllocBody245_3 AllocBody245_6

def AllocBody245_8 : StackLang.HolProg 64 :=
.seq AllocBody245_2 AllocBody245_7

def AllocBody245_9 : StackLang.HolProg 64 :=
.seq AllocBody245_1 AllocBody245_8

def AllocBody245_10 : StackLang.HolProg 64 :=
.seq AllocBody245_0 AllocBody245_9

def Alloc245 : Nat × StackLang.HolProg 64 := (245, AllocBody245_10)
theorem Alloc245_eq : StackAlloc.progComp (245, raw245) = Alloc245 := by
  kernel_rfl
#print axioms Alloc245_eq
end InitECandidate.Proofs.BackendStages
