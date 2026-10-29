import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw93
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody93_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody93_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody93_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody93_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody93_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody93_5 : StackLang.HolProg 64 :=
.seq AllocBody93_3 AllocBody93_4

def AllocBody93_6 : StackLang.HolProg 64 :=
.seq AllocBody93_2 AllocBody93_5

def AllocBody93_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody93_8 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody93_6 AllocBody93_7

def AllocBody93_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody93_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody93_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody93_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody93_13 : StackLang.HolProg 64 :=
.seq AllocBody93_11 AllocBody93_12

def AllocBody93_14 : StackLang.HolProg 64 :=
.seq AllocBody93_10 AllocBody93_13

def AllocBody93_15 : StackLang.HolProg 64 :=
.seq AllocBody93_9 AllocBody93_14

def AllocBody93_16 : StackLang.HolProg 64 :=
.seq AllocBody93_8 AllocBody93_15

def AllocBody93_17 : StackLang.HolProg 64 :=
.seq AllocBody93_1 AllocBody93_16

def AllocBody93_18 : StackLang.HolProg 64 :=
.seq AllocBody93_0 AllocBody93_17

def Alloc93 : Nat × StackLang.HolProg 64 := (93, AllocBody93_18)
theorem Alloc93_eq : StackAlloc.progComp (93, raw93) = Alloc93 := by
  kernel_rfl
#print axioms Alloc93_eq
end InitECandidate.Proofs.BackendStages
