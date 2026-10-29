import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw145
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody145_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody145_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody145_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody145_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody145_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody145_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody145_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody145_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody145_8 : StackLang.HolProg 64 :=
.seq AllocBody145_6 AllocBody145_7

def AllocBody145_9 : StackLang.HolProg 64 :=
.seq AllocBody145_5 AllocBody145_8

def AllocBody145_10 : StackLang.HolProg 64 :=
.seq AllocBody145_4 AllocBody145_9

def AllocBody145_11 : StackLang.HolProg 64 :=
.seq AllocBody145_3 AllocBody145_10

def AllocBody145_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody145_13 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody145_11 AllocBody145_12

def AllocBody145_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody145_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody145_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 31#64)

def AllocBody145_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody145_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody145_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody145_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody145_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody145_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody145_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody145_24 : StackLang.HolProg 64 :=
.seq AllocBody145_22 AllocBody145_23

def AllocBody145_25 : StackLang.HolProg 64 :=
.seq AllocBody145_21 AllocBody145_24

def AllocBody145_26 : StackLang.HolProg 64 :=
.seq AllocBody145_20 AllocBody145_25

def AllocBody145_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody145_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody145_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 1

def AllocBody145_30 : StackLang.HolProg 64 :=
.seq AllocBody145_28 AllocBody145_29

def AllocBody145_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody145_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 111#64)

def AllocBody145_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody145_34 : StackLang.HolProg 64 :=
.seq AllocBody145_32 AllocBody145_33

def AllocBody145_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody145_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody145_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody145_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 145 3

def AllocBody145_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody145_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody145_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody145_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody145_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody145_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody145_45 : StackLang.HolProg 64 :=
.seq AllocBody145_43 AllocBody145_44

def AllocBody145_46 : StackLang.HolProg 64 :=
.seq AllocBody145_42 AllocBody145_45

def AllocBody145_47 : StackLang.HolProg 64 :=
.seq AllocBody145_41 AllocBody145_46

def AllocBody145_48 : StackLang.HolProg 64 :=
.seq AllocBody145_40 AllocBody145_47

def AllocBody145_49 : StackLang.HolProg 64 :=
.seq AllocBody145_39 AllocBody145_48

def AllocBody145_50 : StackLang.HolProg 64 :=
.seq AllocBody145_38 AllocBody145_49

def AllocBody145_51 : StackLang.HolProg 64 :=
.seq AllocBody145_37 AllocBody145_50

def AllocBody145_52 : StackLang.HolProg 64 :=
.seq AllocBody145_36 AllocBody145_51

def AllocBody145_53 : StackLang.HolProg 64 :=
.seq AllocBody145_35 AllocBody145_52

def AllocBody145_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody145_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody145_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody145_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody145_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody145_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody145_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody145_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody145_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody145_63 : StackLang.HolProg 64 :=
.seq AllocBody145_61 AllocBody145_62

def AllocBody145_64 : StackLang.HolProg 64 :=
.seq AllocBody145_60 AllocBody145_63

def AllocBody145_65 : StackLang.HolProg 64 :=
.seq AllocBody145_59 AllocBody145_64

def AllocBody145_66 : StackLang.HolProg 64 :=
.seq AllocBody145_58 AllocBody145_65

def AllocBody145_67 : StackLang.HolProg 64 :=
.seq AllocBody145_57 AllocBody145_66

def AllocBody145_68 : StackLang.HolProg 64 :=
.seq AllocBody145_56 AllocBody145_67

def AllocBody145_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody145_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody145_71 : StackLang.HolProg 64 :=
.seq AllocBody145_69 AllocBody145_70

def AllocBody145_72 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody145_73 : StackLang.HolProg 64 :=
.seq AllocBody145_71 AllocBody145_72

def AllocBody145_74 : StackLang.HolProg 64 :=
.call (some (AllocBody145_68, 0, 145, 2)) (Sum.inl 103) (some (AllocBody145_73, 145, 3))

def AllocBody145_75 : StackLang.HolProg 64 :=
.seq AllocBody145_55 AllocBody145_74

def AllocBody145_76 : StackLang.HolProg 64 :=
.seq AllocBody145_54 AllocBody145_75

def AllocBody145_77 : StackLang.HolProg 64 :=
.seq AllocBody145_53 AllocBody145_76

def AllocBody145_78 : StackLang.HolProg 64 :=
.seq AllocBody145_34 AllocBody145_77

def AllocBody145_79 : StackLang.HolProg 64 :=
.seq AllocBody145_31 AllocBody145_78

def AllocBody145_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody145_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody145_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def AllocBody145_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody145_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody145_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 255#64)))

def AllocBody145_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody145_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody145_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody145_89 : StackLang.HolProg 64 :=
.seq AllocBody145_87 AllocBody145_88

def AllocBody145_90 : StackLang.HolProg 64 :=
.seq AllocBody145_86 AllocBody145_89

def AllocBody145_91 : StackLang.HolProg 64 :=
.seq AllocBody145_85 AllocBody145_90

def AllocBody145_92 : StackLang.HolProg 64 :=
.seq AllocBody145_84 AllocBody145_91

def AllocBody145_93 : StackLang.HolProg 64 :=
.seq AllocBody145_83 AllocBody145_92

def AllocBody145_94 : StackLang.HolProg 64 :=
.seq AllocBody145_82 AllocBody145_93

def AllocBody145_95 : StackLang.HolProg 64 :=
.seq AllocBody145_81 AllocBody145_94

def AllocBody145_96 : StackLang.HolProg 64 :=
.seq AllocBody145_80 AllocBody145_95

def AllocBody145_97 : StackLang.HolProg 64 :=
.seq AllocBody145_79 AllocBody145_96

def AllocBody145_98 : StackLang.HolProg 64 :=
.seq AllocBody145_30 AllocBody145_97

def AllocBody145_99 : StackLang.HolProg 64 :=
.seq AllocBody145_27 AllocBody145_98

def AllocBody145_100 : StackLang.HolProg 64 :=
.seq AllocBody145_26 AllocBody145_99

def AllocBody145_101 : StackLang.HolProg 64 :=
.seq AllocBody145_19 AllocBody145_100

def AllocBody145_102 : StackLang.HolProg 64 :=
.seq AllocBody145_18 AllocBody145_101

def AllocBody145_103 : StackLang.HolProg 64 :=
.seq AllocBody145_17 AllocBody145_102

def AllocBody145_104 : StackLang.HolProg 64 :=
.seq AllocBody145_16 AllocBody145_103

def AllocBody145_105 : StackLang.HolProg 64 :=
.seq AllocBody145_15 AllocBody145_104

def AllocBody145_106 : StackLang.HolProg 64 :=
.seq AllocBody145_14 AllocBody145_105

def AllocBody145_107 : StackLang.HolProg 64 :=
.seq AllocBody145_13 AllocBody145_106

def AllocBody145_108 : StackLang.HolProg 64 :=
.seq AllocBody145_2 AllocBody145_107

def AllocBody145_109 : StackLang.HolProg 64 :=
.seq AllocBody145_1 AllocBody145_108

def AllocBody145_110 : StackLang.HolProg 64 :=
.seq AllocBody145_0 AllocBody145_109

def Alloc145 : Nat × StackLang.HolProg 64 := (145, AllocBody145_110)
theorem Alloc145_eq : StackAlloc.progComp (145, raw145) = Alloc145 := by
  kernel_rfl
#print axioms Alloc145_eq
end InitECandidate.Proofs.BackendStages
