import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw97
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody97_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody97_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody97_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody97_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody97_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody97_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def AllocBody97_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody97_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody97_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody97_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody97_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody97_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody97_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody97_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody97_14 : StackLang.HolProg 64 :=
.seq AllocBody97_12 AllocBody97_13

def AllocBody97_15 : StackLang.HolProg 64 :=
.seq AllocBody97_11 AllocBody97_14

def AllocBody97_16 : StackLang.HolProg 64 :=
.seq AllocBody97_10 AllocBody97_15

def AllocBody97_17 : StackLang.HolProg 64 :=
.seq AllocBody97_9 AllocBody97_16

def AllocBody97_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody97_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody97_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody97_21 : StackLang.HolProg 64 :=
.seq AllocBody97_19 AllocBody97_20

def AllocBody97_22 : StackLang.HolProg 64 :=
.seq AllocBody97_18 AllocBody97_21

def AllocBody97_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody97_17 AllocBody97_22

def AllocBody97_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody97_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody97_26 : StackLang.HolProg 64 :=
.seq AllocBody97_24 AllocBody97_25

def AllocBody97_27 : StackLang.HolProg 64 :=
.seq AllocBody97_23 AllocBody97_26

def AllocBody97_28 : StackLang.HolProg 64 :=
.seq AllocBody97_8 AllocBody97_27

def AllocBody97_29 : StackLang.HolProg 64 :=
.seq AllocBody97_7 AllocBody97_28

def AllocBody97_30 : StackLang.HolProg 64 :=
.seq AllocBody97_6 AllocBody97_29

def AllocBody97_31 : StackLang.HolProg 64 :=
.seq AllocBody97_5 AllocBody97_30

def AllocBody97_32 : StackLang.HolProg 64 :=
.loop AllocBody97_31

def AllocBody97_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody97_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody97_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody97_36 : StackLang.HolProg 64 :=
.seq AllocBody97_34 AllocBody97_35

def AllocBody97_37 : StackLang.HolProg 64 :=
.seq AllocBody97_33 AllocBody97_36

def AllocBody97_38 : StackLang.HolProg 64 :=
.seq AllocBody97_32 AllocBody97_37

def AllocBody97_39 : StackLang.HolProg 64 :=
.seq AllocBody97_4 AllocBody97_38

def AllocBody97_40 : StackLang.HolProg 64 :=
.seq AllocBody97_3 AllocBody97_39

def AllocBody97_41 : StackLang.HolProg 64 :=
.seq AllocBody97_2 AllocBody97_40

def AllocBody97_42 : StackLang.HolProg 64 :=
.seq AllocBody97_1 AllocBody97_41

def AllocBody97_43 : StackLang.HolProg 64 :=
.seq AllocBody97_0 AllocBody97_42

def Alloc97 : Nat × StackLang.HolProg 64 := (97, AllocBody97_43)
theorem Alloc97_eq : StackAlloc.progComp (97, raw97) = Alloc97 := by
  kernel_rfl
#print axioms Alloc97_eq
end InitECandidate.Proofs.BackendStages
