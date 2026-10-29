import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw359
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody359_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody359_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody359_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody359_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody359_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody359_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 128#64)

def AllocBody359_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody359_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody359_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody359_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody359_10 : StackLang.HolProg 64 :=
.seq AllocBody359_8 AllocBody359_9

def AllocBody359_11 : StackLang.HolProg 64 :=
.seq AllocBody359_7 AllocBody359_10

def AllocBody359_12 : StackLang.HolProg 64 :=
.seq AllocBody359_6 AllocBody359_11

def AllocBody359_13 : StackLang.HolProg 64 :=
.seq AllocBody359_5 AllocBody359_12

def AllocBody359_14 : StackLang.HolProg 64 :=
.seq AllocBody359_4 AllocBody359_13

def AllocBody359_15 : StackLang.HolProg 64 :=
.seq AllocBody359_3 AllocBody359_14

def AllocBody359_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody359_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody359_15 AllocBody359_16

def AllocBody359_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody359_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody359_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody359_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 20#64)

def AllocBody359_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody359_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody359_24 : StackLang.HolProg 64 :=
.call none (Sum.inl 176) none

def AllocBody359_25 : StackLang.HolProg 64 :=
.seq AllocBody359_23 AllocBody359_24

def AllocBody359_26 : StackLang.HolProg 64 :=
.seq AllocBody359_22 AllocBody359_25

def AllocBody359_27 : StackLang.HolProg 64 :=
.seq AllocBody359_21 AllocBody359_26

def AllocBody359_28 : StackLang.HolProg 64 :=
.seq AllocBody359_20 AllocBody359_27

def AllocBody359_29 : StackLang.HolProg 64 :=
.seq AllocBody359_19 AllocBody359_28

def AllocBody359_30 : StackLang.HolProg 64 :=
.seq AllocBody359_18 AllocBody359_29

def AllocBody359_31 : StackLang.HolProg 64 :=
.seq AllocBody359_17 AllocBody359_30

def AllocBody359_32 : StackLang.HolProg 64 :=
.seq AllocBody359_2 AllocBody359_31

def AllocBody359_33 : StackLang.HolProg 64 :=
.seq AllocBody359_1 AllocBody359_32

def AllocBody359_34 : StackLang.HolProg 64 :=
.seq AllocBody359_0 AllocBody359_33

def Alloc359 : Nat × StackLang.HolProg 64 := (359, AllocBody359_34)
theorem Alloc359_eq : StackAlloc.progComp (359, raw359) = Alloc359 := by
  kernel_rfl
#print axioms Alloc359_eq
end InitECandidate.Proofs.BackendStages
