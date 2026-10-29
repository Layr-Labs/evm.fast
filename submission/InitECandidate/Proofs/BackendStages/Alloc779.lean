import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw779
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody779_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody779_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody779_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def AllocBody779_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody779_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody779_5 : StackLang.HolProg 64 :=
.call none (Sum.inl 732) none

def AllocBody779_6 : StackLang.HolProg 64 :=
.seq AllocBody779_4 AllocBody779_5

def AllocBody779_7 : StackLang.HolProg 64 :=
.seq AllocBody779_3 AllocBody779_6

def AllocBody779_8 : StackLang.HolProg 64 :=
.seq AllocBody779_2 AllocBody779_7

def AllocBody779_9 : StackLang.HolProg 64 :=
.seq AllocBody779_1 AllocBody779_8

def AllocBody779_10 : StackLang.HolProg 64 :=
.seq AllocBody779_0 AllocBody779_9

def Alloc779 : Nat × StackLang.HolProg 64 := (779, AllocBody779_10)
theorem Alloc779_eq : StackAlloc.progComp (779, raw779) = Alloc779 := by
  kernel_rfl
#print axioms Alloc779_eq
end InitECandidate.Proofs.BackendStages
