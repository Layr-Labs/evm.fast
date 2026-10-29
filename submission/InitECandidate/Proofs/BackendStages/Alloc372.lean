import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw372
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody372_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody372_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody372_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody372_3 : StackLang.HolProg 64 :=
.seq AllocBody372_1 AllocBody372_2

def AllocBody372_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 2#64)

def AllocBody372_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody372_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody372_7 : StackLang.HolProg 64 :=
.call none (Sum.inl 370) none

def AllocBody372_8 : StackLang.HolProg 64 :=
.seq AllocBody372_6 AllocBody372_7

def AllocBody372_9 : StackLang.HolProg 64 :=
.seq AllocBody372_5 AllocBody372_8

def AllocBody372_10 : StackLang.HolProg 64 :=
.seq AllocBody372_4 AllocBody372_9

def AllocBody372_11 : StackLang.HolProg 64 :=
.seq AllocBody372_3 AllocBody372_10

def AllocBody372_12 : StackLang.HolProg 64 :=
.seq AllocBody372_0 AllocBody372_11

def Alloc372 : Nat × StackLang.HolProg 64 := (372, AllocBody372_12)
theorem Alloc372_eq : StackAlloc.progComp (372, raw372) = Alloc372 := by
  kernel_rfl
#print axioms Alloc372_eq
end InitECandidate.Proofs.BackendStages
