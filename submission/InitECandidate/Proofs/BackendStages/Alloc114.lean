import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw114
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody114_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody114_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody114_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody114_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody114_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody114_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody114_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody114_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody114_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody114_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody114_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody114_11 : StackLang.HolProg 64 :=
.seq AllocBody114_9 AllocBody114_10

def AllocBody114_12 : StackLang.HolProg 64 :=
.seq AllocBody114_8 AllocBody114_11

def AllocBody114_13 : StackLang.HolProg 64 :=
.seq AllocBody114_7 AllocBody114_12

def AllocBody114_14 : StackLang.HolProg 64 :=
.seq AllocBody114_6 AllocBody114_13

def AllocBody114_15 : StackLang.HolProg 64 :=
.seq AllocBody114_5 AllocBody114_14

def AllocBody114_16 : StackLang.HolProg 64 :=
.seq AllocBody114_4 AllocBody114_15

def AllocBody114_17 : StackLang.HolProg 64 :=
.seq AllocBody114_3 AllocBody114_16

def AllocBody114_18 : StackLang.HolProg 64 :=
.seq AllocBody114_2 AllocBody114_17

def AllocBody114_19 : StackLang.HolProg 64 :=
.seq AllocBody114_1 AllocBody114_18

def AllocBody114_20 : StackLang.HolProg 64 :=
.seq AllocBody114_0 AllocBody114_19

def Alloc114 : Nat × StackLang.HolProg 64 := (114, AllocBody114_20)
theorem Alloc114_eq : StackAlloc.progComp (114, raw114) = Alloc114 := by
  kernel_rfl
#print axioms Alloc114_eq
end InitECandidate.Proofs.BackendStages
