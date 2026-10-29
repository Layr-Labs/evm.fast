import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw116
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody116_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody116_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody116_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody116_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody116_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 1 1 5 0))

def AllocBody116_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody116_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 2 2 6 0))

def AllocBody116_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody116_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 3 3 7 0))

def AllocBody116_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody116_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 4 4 8 0))

def AllocBody116_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody116_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def AllocBody116_13 : StackLang.HolProg 64 :=
.seq AllocBody116_11 AllocBody116_12

def AllocBody116_14 : StackLang.HolProg 64 :=
.seq AllocBody116_10 AllocBody116_13

def AllocBody116_15 : StackLang.HolProg 64 :=
.seq AllocBody116_9 AllocBody116_14

def AllocBody116_16 : StackLang.HolProg 64 :=
.seq AllocBody116_8 AllocBody116_15

def AllocBody116_17 : StackLang.HolProg 64 :=
.seq AllocBody116_7 AllocBody116_16

def AllocBody116_18 : StackLang.HolProg 64 :=
.seq AllocBody116_6 AllocBody116_17

def AllocBody116_19 : StackLang.HolProg 64 :=
.seq AllocBody116_5 AllocBody116_18

def AllocBody116_20 : StackLang.HolProg 64 :=
.seq AllocBody116_4 AllocBody116_19

def AllocBody116_21 : StackLang.HolProg 64 :=
.seq AllocBody116_3 AllocBody116_20

def AllocBody116_22 : StackLang.HolProg 64 :=
.seq AllocBody116_2 AllocBody116_21

def AllocBody116_23 : StackLang.HolProg 64 :=
.seq AllocBody116_1 AllocBody116_22

def AllocBody116_24 : StackLang.HolProg 64 :=
.seq AllocBody116_0 AllocBody116_23

def Alloc116 : Nat × StackLang.HolProg 64 := (116, AllocBody116_24)
theorem Alloc116_eq : StackAlloc.progComp (116, raw116) = Alloc116 := by
  kernel_rfl
#print axioms Alloc116_eq
end InitECandidate.Proofs.BackendStages
