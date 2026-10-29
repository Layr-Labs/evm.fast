import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw681
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody681_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody681_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody681_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody681_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody681_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody681_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody681_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody681_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody681_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 676) none

def AllocBody681_9 : StackLang.HolProg 64 :=
.seq AllocBody681_7 AllocBody681_8

def AllocBody681_10 : StackLang.HolProg 64 :=
.seq AllocBody681_6 AllocBody681_9

def AllocBody681_11 : StackLang.HolProg 64 :=
.seq AllocBody681_5 AllocBody681_10

def AllocBody681_12 : StackLang.HolProg 64 :=
.seq AllocBody681_4 AllocBody681_11

def AllocBody681_13 : StackLang.HolProg 64 :=
.seq AllocBody681_3 AllocBody681_12

def AllocBody681_14 : StackLang.HolProg 64 :=
.seq AllocBody681_2 AllocBody681_13

def AllocBody681_15 : StackLang.HolProg 64 :=
.seq AllocBody681_1 AllocBody681_14

def AllocBody681_16 : StackLang.HolProg 64 :=
.seq AllocBody681_0 AllocBody681_15

def Alloc681 : Nat × StackLang.HolProg 64 := (681, AllocBody681_16)
theorem Alloc681_eq : StackAlloc.progComp (681, raw681) = Alloc681 := by
  kernel_rfl
#print axioms Alloc681_eq
end InitECandidate.Proofs.BackendStages
