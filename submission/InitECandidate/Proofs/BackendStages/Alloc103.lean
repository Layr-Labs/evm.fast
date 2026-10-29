import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw103
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody103_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody103_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody103_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody103_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody103_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody103_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody103_6 : StackLang.HolProg 64 :=
.seq AllocBody103_4 AllocBody103_5

def AllocBody103_7 : StackLang.HolProg 64 :=
.seq AllocBody103_3 AllocBody103_6

def AllocBody103_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody103_9 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody103_7 AllocBody103_8

def AllocBody103_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody103_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody103_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody103_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody103_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody103_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody103_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody103_17 : StackLang.HolProg 64 :=
.seq AllocBody103_15 AllocBody103_16

def AllocBody103_18 : StackLang.HolProg 64 :=
.seq AllocBody103_14 AllocBody103_17

def AllocBody103_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody103_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody103_18 AllocBody103_19

def AllocBody103_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody103_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody103_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody103_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody103_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody103_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody103_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody103_28 : StackLang.HolProg 64 :=
.seq AllocBody103_26 AllocBody103_27

def AllocBody103_29 : StackLang.HolProg 64 :=
.seq AllocBody103_25 AllocBody103_28

def AllocBody103_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody103_31 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody103_29 AllocBody103_30

def AllocBody103_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody103_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody103_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody103_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody103_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody103_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody103_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody103_39 : StackLang.HolProg 64 :=
.seq AllocBody103_37 AllocBody103_38

def AllocBody103_40 : StackLang.HolProg 64 :=
.seq AllocBody103_36 AllocBody103_39

def AllocBody103_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody103_42 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody103_40 AllocBody103_41

def AllocBody103_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody103_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody103_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody103_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody103_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody103_48 : StackLang.HolProg 64 :=
.seq AllocBody103_46 AllocBody103_47

def AllocBody103_49 : StackLang.HolProg 64 :=
.seq AllocBody103_45 AllocBody103_48

def AllocBody103_50 : StackLang.HolProg 64 :=
.seq AllocBody103_44 AllocBody103_49

def AllocBody103_51 : StackLang.HolProg 64 :=
.seq AllocBody103_43 AllocBody103_50

def AllocBody103_52 : StackLang.HolProg 64 :=
.seq AllocBody103_42 AllocBody103_51

def AllocBody103_53 : StackLang.HolProg 64 :=
.seq AllocBody103_35 AllocBody103_52

def AllocBody103_54 : StackLang.HolProg 64 :=
.seq AllocBody103_34 AllocBody103_53

def AllocBody103_55 : StackLang.HolProg 64 :=
.seq AllocBody103_33 AllocBody103_54

def AllocBody103_56 : StackLang.HolProg 64 :=
.seq AllocBody103_32 AllocBody103_55

def AllocBody103_57 : StackLang.HolProg 64 :=
.seq AllocBody103_31 AllocBody103_56

def AllocBody103_58 : StackLang.HolProg 64 :=
.seq AllocBody103_24 AllocBody103_57

def AllocBody103_59 : StackLang.HolProg 64 :=
.seq AllocBody103_23 AllocBody103_58

def AllocBody103_60 : StackLang.HolProg 64 :=
.seq AllocBody103_22 AllocBody103_59

def AllocBody103_61 : StackLang.HolProg 64 :=
.seq AllocBody103_21 AllocBody103_60

def AllocBody103_62 : StackLang.HolProg 64 :=
.seq AllocBody103_20 AllocBody103_61

def AllocBody103_63 : StackLang.HolProg 64 :=
.seq AllocBody103_13 AllocBody103_62

def AllocBody103_64 : StackLang.HolProg 64 :=
.seq AllocBody103_12 AllocBody103_63

def AllocBody103_65 : StackLang.HolProg 64 :=
.seq AllocBody103_11 AllocBody103_64

def AllocBody103_66 : StackLang.HolProg 64 :=
.seq AllocBody103_10 AllocBody103_65

def AllocBody103_67 : StackLang.HolProg 64 :=
.seq AllocBody103_9 AllocBody103_66

def AllocBody103_68 : StackLang.HolProg 64 :=
.seq AllocBody103_2 AllocBody103_67

def AllocBody103_69 : StackLang.HolProg 64 :=
.seq AllocBody103_1 AllocBody103_68

def AllocBody103_70 : StackLang.HolProg 64 :=
.seq AllocBody103_0 AllocBody103_69

def Alloc103 : Nat × StackLang.HolProg 64 := (103, AllocBody103_70)
theorem Alloc103_eq : StackAlloc.progComp (103, raw103) = Alloc103 := by
  kernel_rfl
#print axioms Alloc103_eq
end InitECandidate.Proofs.BackendStages
