import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw115
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody115_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody115_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody115_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody115_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody115_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 1 1 5 0))

def AllocBody115_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody115_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 2 2 6 0))

def AllocBody115_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody115_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 3 3 7 0))

def AllocBody115_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody115_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 4 4 8 0))

def AllocBody115_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody115_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def AllocBody115_13 : StackLang.HolProg 64 :=
.seq AllocBody115_11 AllocBody115_12

def AllocBody115_14 : StackLang.HolProg 64 :=
.seq AllocBody115_10 AllocBody115_13

def AllocBody115_15 : StackLang.HolProg 64 :=
.seq AllocBody115_9 AllocBody115_14

def AllocBody115_16 : StackLang.HolProg 64 :=
.seq AllocBody115_8 AllocBody115_15

def AllocBody115_17 : StackLang.HolProg 64 :=
.seq AllocBody115_7 AllocBody115_16

def AllocBody115_18 : StackLang.HolProg 64 :=
.seq AllocBody115_6 AllocBody115_17

def AllocBody115_19 : StackLang.HolProg 64 :=
.seq AllocBody115_5 AllocBody115_18

def AllocBody115_20 : StackLang.HolProg 64 :=
.seq AllocBody115_4 AllocBody115_19

def AllocBody115_21 : StackLang.HolProg 64 :=
.seq AllocBody115_3 AllocBody115_20

def AllocBody115_22 : StackLang.HolProg 64 :=
.seq AllocBody115_2 AllocBody115_21

def AllocBody115_23 : StackLang.HolProg 64 :=
.seq AllocBody115_1 AllocBody115_22

def AllocBody115_24 : StackLang.HolProg 64 :=
.seq AllocBody115_0 AllocBody115_23

def Alloc115 : Nat × StackLang.HolProg 64 := (115, AllocBody115_24)
theorem Alloc115_eq : StackAlloc.progComp (115, raw115) = Alloc115 := by
  kernel_rfl
#print axioms Alloc115_eq
end InitECandidate.Proofs.BackendStages
