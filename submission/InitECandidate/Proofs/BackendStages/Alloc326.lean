import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw326
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody326_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody326_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody326_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody326_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody326_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody326_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody326_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody326_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody326_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody326_9 : StackLang.HolProg 64 :=
.seq AllocBody326_7 AllocBody326_8

def AllocBody326_10 : StackLang.HolProg 64 :=
.seq AllocBody326_6 AllocBody326_9

def AllocBody326_11 : StackLang.HolProg 64 :=
.seq AllocBody326_5 AllocBody326_10

def AllocBody326_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody326_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody326_14 : StackLang.HolProg 64 :=
.seq AllocBody326_12 AllocBody326_13

def AllocBody326_15 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody326_11 AllocBody326_14

def AllocBody326_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody326_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody326_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody326_19 : StackLang.HolProg 64 :=
.call none (Sum.inl 179) none

def AllocBody326_20 : StackLang.HolProg 64 :=
.seq AllocBody326_18 AllocBody326_19

def AllocBody326_21 : StackLang.HolProg 64 :=
.seq AllocBody326_17 AllocBody326_20

def AllocBody326_22 : StackLang.HolProg 64 :=
.seq AllocBody326_16 AllocBody326_21

def AllocBody326_23 : StackLang.HolProg 64 :=
.seq AllocBody326_15 AllocBody326_22

def AllocBody326_24 : StackLang.HolProg 64 :=
.seq AllocBody326_4 AllocBody326_23

def AllocBody326_25 : StackLang.HolProg 64 :=
.seq AllocBody326_3 AllocBody326_24

def AllocBody326_26 : StackLang.HolProg 64 :=
.seq AllocBody326_2 AllocBody326_25

def AllocBody326_27 : StackLang.HolProg 64 :=
.seq AllocBody326_1 AllocBody326_26

def AllocBody326_28 : StackLang.HolProg 64 :=
.seq AllocBody326_0 AllocBody326_27

def Alloc326 : Nat × StackLang.HolProg 64 := (326, AllocBody326_28)
theorem Alloc326_eq : StackAlloc.progComp (326, raw326) = Alloc326 := by
  kernel_rfl
#print axioms Alloc326_eq
end InitECandidate.Proofs.BackendStages
