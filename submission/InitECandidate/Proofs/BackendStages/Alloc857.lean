import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw857
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody857_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody857_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody857_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody857_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody857_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody857_5 : StackLang.HolProg 64 :=
.seq AllocBody857_3 AllocBody857_4

def AllocBody857_6 : StackLang.HolProg 64 :=
.seq AllocBody857_2 AllocBody857_5

def AllocBody857_7 : StackLang.HolProg 64 :=
.seq AllocBody857_1 AllocBody857_6

def AllocBody857_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody857_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody857_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody857_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody857_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody857_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4360#64)

def AllocBody857_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody857_15 : StackLang.HolProg 64 :=
.seq AllocBody857_13 AllocBody857_14

def AllocBody857_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody857_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody857_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody857_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 857 3

def AllocBody857_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody857_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody857_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody857_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody857_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody857_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody857_26 : StackLang.HolProg 64 :=
.seq AllocBody857_24 AllocBody857_25

def AllocBody857_27 : StackLang.HolProg 64 :=
.seq AllocBody857_23 AllocBody857_26

def AllocBody857_28 : StackLang.HolProg 64 :=
.seq AllocBody857_22 AllocBody857_27

def AllocBody857_29 : StackLang.HolProg 64 :=
.seq AllocBody857_21 AllocBody857_28

def AllocBody857_30 : StackLang.HolProg 64 :=
.seq AllocBody857_20 AllocBody857_29

def AllocBody857_31 : StackLang.HolProg 64 :=
.seq AllocBody857_19 AllocBody857_30

def AllocBody857_32 : StackLang.HolProg 64 :=
.seq AllocBody857_18 AllocBody857_31

def AllocBody857_33 : StackLang.HolProg 64 :=
.seq AllocBody857_17 AllocBody857_32

def AllocBody857_34 : StackLang.HolProg 64 :=
.seq AllocBody857_16 AllocBody857_33

def AllocBody857_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody857_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody857_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody857_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody857_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody857_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody857_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody857_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 1

def AllocBody857_43 : StackLang.HolProg 64 :=
.seq AllocBody857_41 AllocBody857_42

def AllocBody857_44 : StackLang.HolProg 64 :=
.seq AllocBody857_40 AllocBody857_43

def AllocBody857_45 : StackLang.HolProg 64 :=
.seq AllocBody857_39 AllocBody857_44

def AllocBody857_46 : StackLang.HolProg 64 :=
.seq AllocBody857_38 AllocBody857_45

def AllocBody857_47 : StackLang.HolProg 64 :=
.seq AllocBody857_37 AllocBody857_46

def AllocBody857_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 1

def AllocBody857_49 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody857_50 : StackLang.HolProg 64 :=
.seq AllocBody857_48 AllocBody857_49

def AllocBody857_51 : StackLang.HolProg 64 :=
.call (some (AllocBody857_47, 0, 857, 2)) (Sum.inl 121) (some (AllocBody857_50, 857, 3))

def AllocBody857_52 : StackLang.HolProg 64 :=
.seq AllocBody857_36 AllocBody857_51

def AllocBody857_53 : StackLang.HolProg 64 :=
.seq AllocBody857_35 AllocBody857_52

def AllocBody857_54 : StackLang.HolProg 64 :=
.seq AllocBody857_34 AllocBody857_53

def AllocBody857_55 : StackLang.HolProg 64 :=
.seq AllocBody857_15 AllocBody857_54

def AllocBody857_56 : StackLang.HolProg 64 :=
.seq AllocBody857_12 AllocBody857_55

def AllocBody857_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody857_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody857_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody857_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody857_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody857_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody857_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody857_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody857_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody857_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody857_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody857_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody857_69 : StackLang.HolProg 64 :=
.seq AllocBody857_67 AllocBody857_68

def AllocBody857_70 : StackLang.HolProg 64 :=
.seq AllocBody857_66 AllocBody857_69

def AllocBody857_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody857_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody857_73 : StackLang.HolProg 64 :=
.seq AllocBody857_71 AllocBody857_72

def AllocBody857_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody857_70 AllocBody857_73

def AllocBody857_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody857_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody857_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody857_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody857_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody857_80 : StackLang.HolProg 64 :=
.seq AllocBody857_78 AllocBody857_79

def AllocBody857_81 : StackLang.HolProg 64 :=
.seq AllocBody857_77 AllocBody857_80

def AllocBody857_82 : StackLang.HolProg 64 :=
.seq AllocBody857_76 AllocBody857_81

def AllocBody857_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody857_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def AllocBody857_85 : StackLang.HolProg 64 :=
.seq AllocBody857_83 AllocBody857_84

def AllocBody857_86 : StackLang.HolProg 64 :=
.seq AllocBody857_82 AllocBody857_85

def AllocBody857_87 : StackLang.HolProg 64 :=
.seq AllocBody857_75 AllocBody857_86

def AllocBody857_88 : StackLang.HolProg 64 :=
.seq AllocBody857_74 AllocBody857_87

def AllocBody857_89 : StackLang.HolProg 64 :=
.seq AllocBody857_65 AllocBody857_88

def AllocBody857_90 : StackLang.HolProg 64 :=
.seq AllocBody857_64 AllocBody857_89

def AllocBody857_91 : StackLang.HolProg 64 :=
.seq AllocBody857_63 AllocBody857_90

def AllocBody857_92 : StackLang.HolProg 64 :=
.seq AllocBody857_62 AllocBody857_91

def AllocBody857_93 : StackLang.HolProg 64 :=
.seq AllocBody857_61 AllocBody857_92

def AllocBody857_94 : StackLang.HolProg 64 :=
.seq AllocBody857_60 AllocBody857_93

def AllocBody857_95 : StackLang.HolProg 64 :=
.seq AllocBody857_59 AllocBody857_94

def AllocBody857_96 : StackLang.HolProg 64 :=
.seq AllocBody857_58 AllocBody857_95

def AllocBody857_97 : StackLang.HolProg 64 :=
.seq AllocBody857_57 AllocBody857_96

def AllocBody857_98 : StackLang.HolProg 64 :=
.seq AllocBody857_56 AllocBody857_97

def AllocBody857_99 : StackLang.HolProg 64 :=
.seq AllocBody857_11 AllocBody857_98

def AllocBody857_100 : StackLang.HolProg 64 :=
.seq AllocBody857_10 AllocBody857_99

def AllocBody857_101 : StackLang.HolProg 64 :=
.seq AllocBody857_9 AllocBody857_100

def AllocBody857_102 : StackLang.HolProg 64 :=
.seq AllocBody857_8 AllocBody857_101

def AllocBody857_103 : StackLang.HolProg 64 :=
.seq AllocBody857_7 AllocBody857_102

def AllocBody857_104 : StackLang.HolProg 64 :=
.seq AllocBody857_0 AllocBody857_103

def Alloc857 : Nat × StackLang.HolProg 64 := (857, AllocBody857_104)
theorem Alloc857_eq : StackAlloc.progComp (857, raw857) = Alloc857 := by
  kernel_rfl
#print axioms Alloc857_eq
end InitECandidate.Proofs.BackendStages
