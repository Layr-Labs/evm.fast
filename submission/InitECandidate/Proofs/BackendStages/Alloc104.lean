import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw104
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody104_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody104_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody104_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 256#64)

def AllocBody104_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody104_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody104_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody104_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody104_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody104_8 : StackLang.HolProg 64 :=
.seq AllocBody104_6 AllocBody104_7

def AllocBody104_9 : StackLang.HolProg 64 :=
.seq AllocBody104_5 AllocBody104_8

def AllocBody104_10 : StackLang.HolProg 64 :=
.seq AllocBody104_4 AllocBody104_9

def AllocBody104_11 : StackLang.HolProg 64 :=
.seq AllocBody104_3 AllocBody104_10

def AllocBody104_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody104_13 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody104_11 AllocBody104_12

def AllocBody104_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody104_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody104_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody104_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody104_18 : StackLang.HolProg 64 :=
.seq AllocBody104_16 AllocBody104_17

def AllocBody104_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody104_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody104_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 1

def AllocBody104_22 : StackLang.HolProg 64 :=
.seq AllocBody104_20 AllocBody104_21

def AllocBody104_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody104_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 44#64)

def AllocBody104_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody104_26 : StackLang.HolProg 64 :=
.seq AllocBody104_24 AllocBody104_25

def AllocBody104_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody104_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody104_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody104_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 104 3

def AllocBody104_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody104_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody104_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody104_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody104_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody104_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody104_37 : StackLang.HolProg 64 :=
.seq AllocBody104_35 AllocBody104_36

def AllocBody104_38 : StackLang.HolProg 64 :=
.seq AllocBody104_34 AllocBody104_37

def AllocBody104_39 : StackLang.HolProg 64 :=
.seq AllocBody104_33 AllocBody104_38

def AllocBody104_40 : StackLang.HolProg 64 :=
.seq AllocBody104_32 AllocBody104_39

def AllocBody104_41 : StackLang.HolProg 64 :=
.seq AllocBody104_31 AllocBody104_40

def AllocBody104_42 : StackLang.HolProg 64 :=
.seq AllocBody104_30 AllocBody104_41

def AllocBody104_43 : StackLang.HolProg 64 :=
.seq AllocBody104_29 AllocBody104_42

def AllocBody104_44 : StackLang.HolProg 64 :=
.seq AllocBody104_28 AllocBody104_43

def AllocBody104_45 : StackLang.HolProg 64 :=
.seq AllocBody104_27 AllocBody104_44

def AllocBody104_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody104_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody104_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody104_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody104_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody104_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody104_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody104_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody104_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody104_55 : StackLang.HolProg 64 :=
.seq AllocBody104_53 AllocBody104_54

def AllocBody104_56 : StackLang.HolProg 64 :=
.seq AllocBody104_52 AllocBody104_55

def AllocBody104_57 : StackLang.HolProg 64 :=
.seq AllocBody104_51 AllocBody104_56

def AllocBody104_58 : StackLang.HolProg 64 :=
.seq AllocBody104_50 AllocBody104_57

def AllocBody104_59 : StackLang.HolProg 64 :=
.seq AllocBody104_49 AllocBody104_58

def AllocBody104_60 : StackLang.HolProg 64 :=
.seq AllocBody104_48 AllocBody104_59

def AllocBody104_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody104_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody104_63 : StackLang.HolProg 64 :=
.seq AllocBody104_61 AllocBody104_62

def AllocBody104_64 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody104_65 : StackLang.HolProg 64 :=
.seq AllocBody104_63 AllocBody104_64

def AllocBody104_66 : StackLang.HolProg 64 :=
.call (some (AllocBody104_60, 0, 104, 2)) (Sum.inl 103) (some (AllocBody104_65, 104, 3))

def AllocBody104_67 : StackLang.HolProg 64 :=
.seq AllocBody104_47 AllocBody104_66

def AllocBody104_68 : StackLang.HolProg 64 :=
.seq AllocBody104_46 AllocBody104_67

def AllocBody104_69 : StackLang.HolProg 64 :=
.seq AllocBody104_45 AllocBody104_68

def AllocBody104_70 : StackLang.HolProg 64 :=
.seq AllocBody104_26 AllocBody104_69

def AllocBody104_71 : StackLang.HolProg 64 :=
.seq AllocBody104_23 AllocBody104_70

def AllocBody104_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody104_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody104_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def AllocBody104_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody104_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody104_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody104_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody104_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody104_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody104_81 : StackLang.HolProg 64 :=
.seq AllocBody104_79 AllocBody104_80

def AllocBody104_82 : StackLang.HolProg 64 :=
.seq AllocBody104_78 AllocBody104_81

def AllocBody104_83 : StackLang.HolProg 64 :=
.seq AllocBody104_77 AllocBody104_82

def AllocBody104_84 : StackLang.HolProg 64 :=
.seq AllocBody104_76 AllocBody104_83

def AllocBody104_85 : StackLang.HolProg 64 :=
.seq AllocBody104_75 AllocBody104_84

def AllocBody104_86 : StackLang.HolProg 64 :=
.seq AllocBody104_74 AllocBody104_85

def AllocBody104_87 : StackLang.HolProg 64 :=
.seq AllocBody104_73 AllocBody104_86

def AllocBody104_88 : StackLang.HolProg 64 :=
.seq AllocBody104_72 AllocBody104_87

def AllocBody104_89 : StackLang.HolProg 64 :=
.seq AllocBody104_71 AllocBody104_88

def AllocBody104_90 : StackLang.HolProg 64 :=
.seq AllocBody104_22 AllocBody104_89

def AllocBody104_91 : StackLang.HolProg 64 :=
.seq AllocBody104_19 AllocBody104_90

def AllocBody104_92 : StackLang.HolProg 64 :=
.seq AllocBody104_18 AllocBody104_91

def AllocBody104_93 : StackLang.HolProg 64 :=
.seq AllocBody104_15 AllocBody104_92

def AllocBody104_94 : StackLang.HolProg 64 :=
.seq AllocBody104_14 AllocBody104_93

def AllocBody104_95 : StackLang.HolProg 64 :=
.seq AllocBody104_13 AllocBody104_94

def AllocBody104_96 : StackLang.HolProg 64 :=
.seq AllocBody104_2 AllocBody104_95

def AllocBody104_97 : StackLang.HolProg 64 :=
.seq AllocBody104_1 AllocBody104_96

def AllocBody104_98 : StackLang.HolProg 64 :=
.seq AllocBody104_0 AllocBody104_97

def Alloc104 : Nat × StackLang.HolProg 64 := (104, AllocBody104_98)
theorem Alloc104_eq : StackAlloc.progComp (104, raw104) = Alloc104 := by
  kernel_rfl
#print axioms Alloc104_eq
end InitECandidate.Proofs.BackendStages
