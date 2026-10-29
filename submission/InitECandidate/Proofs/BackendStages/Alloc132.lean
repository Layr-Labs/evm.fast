import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw132
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody132_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody132_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody132_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def AllocBody132_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1#64)

def AllocBody132_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody132_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody132_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody132_7 : StackLang.HolProg 64 :=
.call none (Sum.inl 118) none

def AllocBody132_8 : StackLang.HolProg 64 :=
.seq AllocBody132_6 AllocBody132_7

def AllocBody132_9 : StackLang.HolProg 64 :=
.seq AllocBody132_5 AllocBody132_8

def AllocBody132_10 : StackLang.HolProg 64 :=
.seq AllocBody132_4 AllocBody132_9

def AllocBody132_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody132_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody132_10 AllocBody132_11

def AllocBody132_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody132_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody132_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody132_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody132_17 : StackLang.HolProg 64 :=
.seq AllocBody132_15 AllocBody132_16

def AllocBody132_18 : StackLang.HolProg 64 :=
.seq AllocBody132_14 AllocBody132_17

def AllocBody132_19 : StackLang.HolProg 64 :=
.seq AllocBody132_13 AllocBody132_18

def AllocBody132_20 : StackLang.HolProg 64 :=
.seq AllocBody132_12 AllocBody132_19

def AllocBody132_21 : StackLang.HolProg 64 :=
.seq AllocBody132_3 AllocBody132_20

def AllocBody132_22 : StackLang.HolProg 64 :=
.seq AllocBody132_2 AllocBody132_21

def AllocBody132_23 : StackLang.HolProg 64 :=
.seq AllocBody132_1 AllocBody132_22

def AllocBody132_24 : StackLang.HolProg 64 :=
.seq AllocBody132_0 AllocBody132_23

def Alloc132 : Nat × StackLang.HolProg 64 := (132, AllocBody132_24)
theorem Alloc132_eq : StackAlloc.progComp (132, raw132) = Alloc132 := by
  kernel_rfl
#print axioms Alloc132_eq
end InitECandidate.Proofs.BackendStages
