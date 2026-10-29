import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw462
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody462_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody462_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody462_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody462_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody462_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody462_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody462_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody462_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def AllocBody462_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody462_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody462_10 : StackLang.HolProg 64 :=
.seq AllocBody462_8 AllocBody462_9

def AllocBody462_11 : StackLang.HolProg 64 :=
.seq AllocBody462_7 AllocBody462_10

def AllocBody462_12 : StackLang.HolProg 64 :=
.seq AllocBody462_6 AllocBody462_11

def AllocBody462_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody462_14 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody462_12 AllocBody462_13

def AllocBody462_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody462_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody462_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody462_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody462_19 : StackLang.HolProg 64 :=
.seq AllocBody462_17 AllocBody462_18

def AllocBody462_20 : StackLang.HolProg 64 :=
.seq AllocBody462_16 AllocBody462_19

def AllocBody462_21 : StackLang.HolProg 64 :=
.seq AllocBody462_15 AllocBody462_20

def AllocBody462_22 : StackLang.HolProg 64 :=
.seq AllocBody462_14 AllocBody462_21

def AllocBody462_23 : StackLang.HolProg 64 :=
.seq AllocBody462_5 AllocBody462_22

def AllocBody462_24 : StackLang.HolProg 64 :=
.seq AllocBody462_4 AllocBody462_23

def AllocBody462_25 : StackLang.HolProg 64 :=
.seq AllocBody462_3 AllocBody462_24

def AllocBody462_26 : StackLang.HolProg 64 :=
.seq AllocBody462_2 AllocBody462_25

def AllocBody462_27 : StackLang.HolProg 64 :=
.seq AllocBody462_1 AllocBody462_26

def AllocBody462_28 : StackLang.HolProg 64 :=
.seq AllocBody462_0 AllocBody462_27

def Alloc462 : Nat × StackLang.HolProg 64 := (462, AllocBody462_28)
theorem Alloc462_eq : StackAlloc.progComp (462, raw462) = Alloc462 := by
  kernel_rfl
#print axioms Alloc462_eq
end InitECandidate.Proofs.BackendStages
