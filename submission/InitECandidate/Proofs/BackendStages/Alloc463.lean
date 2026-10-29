import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw463
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody463_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody463_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody463_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody463_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody463_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody463_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def AllocBody463_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody463_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody463_8 : StackLang.HolProg 64 :=
.seq AllocBody463_6 AllocBody463_7

def AllocBody463_9 : StackLang.HolProg 64 :=
.seq AllocBody463_5 AllocBody463_8

def AllocBody463_10 : StackLang.HolProg 64 :=
.seq AllocBody463_4 AllocBody463_9

def AllocBody463_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody463_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody463_10 AllocBody463_11

def AllocBody463_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody463_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody463_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody463_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody463_17 : StackLang.HolProg 64 :=
.seq AllocBody463_15 AllocBody463_16

def AllocBody463_18 : StackLang.HolProg 64 :=
.seq AllocBody463_14 AllocBody463_17

def AllocBody463_19 : StackLang.HolProg 64 :=
.seq AllocBody463_13 AllocBody463_18

def AllocBody463_20 : StackLang.HolProg 64 :=
.seq AllocBody463_12 AllocBody463_19

def AllocBody463_21 : StackLang.HolProg 64 :=
.seq AllocBody463_3 AllocBody463_20

def AllocBody463_22 : StackLang.HolProg 64 :=
.seq AllocBody463_2 AllocBody463_21

def AllocBody463_23 : StackLang.HolProg 64 :=
.seq AllocBody463_1 AllocBody463_22

def AllocBody463_24 : StackLang.HolProg 64 :=
.seq AllocBody463_0 AllocBody463_23

def Alloc463 : Nat × StackLang.HolProg 64 := (463, AllocBody463_24)
theorem Alloc463_eq : StackAlloc.progComp (463, raw463) = Alloc463 := by
  kernel_rfl
#print axioms Alloc463_eq
end InitECandidate.Proofs.BackendStages
