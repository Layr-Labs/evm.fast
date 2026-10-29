import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw205
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody205_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody205_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody205_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def AllocBody205_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def AllocBody205_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def AllocBody205_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)

def AllocBody205_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody205_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody205_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody205_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody205_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody205_11 : StackLang.HolProg 64 :=
.seq AllocBody205_9 AllocBody205_10

def AllocBody205_12 : StackLang.HolProg 64 :=
.seq AllocBody205_8 AllocBody205_11

def AllocBody205_13 : StackLang.HolProg 64 :=
.seq AllocBody205_7 AllocBody205_12

def AllocBody205_14 : StackLang.HolProg 64 :=
.seq AllocBody205_6 AllocBody205_13

def AllocBody205_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody205_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 258#64)

def AllocBody205_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody205_18 : StackLang.HolProg 64 :=
.seq AllocBody205_16 AllocBody205_17

def AllocBody205_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody205_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody205_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody205_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 205 3

def AllocBody205_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody205_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody205_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody205_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody205_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody205_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody205_29 : StackLang.HolProg 64 :=
.seq AllocBody205_27 AllocBody205_28

def AllocBody205_30 : StackLang.HolProg 64 :=
.seq AllocBody205_26 AllocBody205_29

def AllocBody205_31 : StackLang.HolProg 64 :=
.seq AllocBody205_25 AllocBody205_30

def AllocBody205_32 : StackLang.HolProg 64 :=
.seq AllocBody205_24 AllocBody205_31

def AllocBody205_33 : StackLang.HolProg 64 :=
.seq AllocBody205_23 AllocBody205_32

def AllocBody205_34 : StackLang.HolProg 64 :=
.seq AllocBody205_22 AllocBody205_33

def AllocBody205_35 : StackLang.HolProg 64 :=
.seq AllocBody205_21 AllocBody205_34

def AllocBody205_36 : StackLang.HolProg 64 :=
.seq AllocBody205_20 AllocBody205_35

def AllocBody205_37 : StackLang.HolProg 64 :=
.seq AllocBody205_19 AllocBody205_36

def AllocBody205_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody205_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody205_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody205_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody205_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody205_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody205_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody205_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody205_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody205_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody205_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody205_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody205_50 : StackLang.HolProg 64 :=
.seq AllocBody205_48 AllocBody205_49

def AllocBody205_51 : StackLang.HolProg 64 :=
.seq AllocBody205_47 AllocBody205_50

def AllocBody205_52 : StackLang.HolProg 64 :=
.seq AllocBody205_46 AllocBody205_51

def AllocBody205_53 : StackLang.HolProg 64 :=
.seq AllocBody205_45 AllocBody205_52

def AllocBody205_54 : StackLang.HolProg 64 :=
.seq AllocBody205_44 AllocBody205_53

def AllocBody205_55 : StackLang.HolProg 64 :=
.seq AllocBody205_43 AllocBody205_54

def AllocBody205_56 : StackLang.HolProg 64 :=
.seq AllocBody205_42 AllocBody205_55

def AllocBody205_57 : StackLang.HolProg 64 :=
.seq AllocBody205_41 AllocBody205_56

def AllocBody205_58 : StackLang.HolProg 64 :=
.seq AllocBody205_40 AllocBody205_57

def AllocBody205_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody205_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody205_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody205_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody205_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody205_64 : StackLang.HolProg 64 :=
.seq AllocBody205_62 AllocBody205_63

def AllocBody205_65 : StackLang.HolProg 64 :=
.seq AllocBody205_61 AllocBody205_64

def AllocBody205_66 : StackLang.HolProg 64 :=
.seq AllocBody205_60 AllocBody205_65

def AllocBody205_67 : StackLang.HolProg 64 :=
.seq AllocBody205_59 AllocBody205_66

def AllocBody205_68 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody205_69 : StackLang.HolProg 64 :=
.seq AllocBody205_67 AllocBody205_68

def AllocBody205_70 : StackLang.HolProg 64 :=
.call (some (AllocBody205_58, 0, 205, 2)) (Sum.inl 106) (some (AllocBody205_69, 205, 3))

def AllocBody205_71 : StackLang.HolProg 64 :=
.seq AllocBody205_39 AllocBody205_70

def AllocBody205_72 : StackLang.HolProg 64 :=
.seq AllocBody205_38 AllocBody205_71

def AllocBody205_73 : StackLang.HolProg 64 :=
.seq AllocBody205_37 AllocBody205_72

def AllocBody205_74 : StackLang.HolProg 64 :=
.seq AllocBody205_18 AllocBody205_73

def AllocBody205_75 : StackLang.HolProg 64 :=
.seq AllocBody205_15 AllocBody205_74

def AllocBody205_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody205_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody205_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody205_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody205_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody205_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def AllocBody205_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def AllocBody205_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def AllocBody205_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)

def AllocBody205_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody205_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody205_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody205_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def AllocBody205_89 : StackLang.HolProg 64 :=
.seq AllocBody205_87 AllocBody205_88

def AllocBody205_90 : StackLang.HolProg 64 :=
.seq AllocBody205_86 AllocBody205_89

def AllocBody205_91 : StackLang.HolProg 64 :=
.seq AllocBody205_85 AllocBody205_90

def AllocBody205_92 : StackLang.HolProg 64 :=
.seq AllocBody205_84 AllocBody205_91

def AllocBody205_93 : StackLang.HolProg 64 :=
.seq AllocBody205_83 AllocBody205_92

def AllocBody205_94 : StackLang.HolProg 64 :=
.seq AllocBody205_82 AllocBody205_93

def AllocBody205_95 : StackLang.HolProg 64 :=
.seq AllocBody205_81 AllocBody205_94

def AllocBody205_96 : StackLang.HolProg 64 :=
.seq AllocBody205_80 AllocBody205_95

def AllocBody205_97 : StackLang.HolProg 64 :=
.seq AllocBody205_79 AllocBody205_96

def AllocBody205_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody205_99 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody205_97 AllocBody205_98

def AllocBody205_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody205_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody205_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody205_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody205_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody205_105 : StackLang.HolProg 64 :=
.seq AllocBody205_103 AllocBody205_104

def AllocBody205_106 : StackLang.HolProg 64 :=
.seq AllocBody205_102 AllocBody205_105

def AllocBody205_107 : StackLang.HolProg 64 :=
.seq AllocBody205_101 AllocBody205_106

def AllocBody205_108 : StackLang.HolProg 64 :=
.seq AllocBody205_100 AllocBody205_107

def AllocBody205_109 : StackLang.HolProg 64 :=
.seq AllocBody205_99 AllocBody205_108

def AllocBody205_110 : StackLang.HolProg 64 :=
.seq AllocBody205_78 AllocBody205_109

def AllocBody205_111 : StackLang.HolProg 64 :=
.seq AllocBody205_77 AllocBody205_110

def AllocBody205_112 : StackLang.HolProg 64 :=
.seq AllocBody205_76 AllocBody205_111

def AllocBody205_113 : StackLang.HolProg 64 :=
.seq AllocBody205_75 AllocBody205_112

def AllocBody205_114 : StackLang.HolProg 64 :=
.seq AllocBody205_14 AllocBody205_113

def AllocBody205_115 : StackLang.HolProg 64 :=
.seq AllocBody205_5 AllocBody205_114

def AllocBody205_116 : StackLang.HolProg 64 :=
.seq AllocBody205_4 AllocBody205_115

def AllocBody205_117 : StackLang.HolProg 64 :=
.seq AllocBody205_3 AllocBody205_116

def AllocBody205_118 : StackLang.HolProg 64 :=
.seq AllocBody205_2 AllocBody205_117

def AllocBody205_119 : StackLang.HolProg 64 :=
.seq AllocBody205_1 AllocBody205_118

def AllocBody205_120 : StackLang.HolProg 64 :=
.seq AllocBody205_0 AllocBody205_119

def Alloc205 : Nat × StackLang.HolProg 64 := (205, AllocBody205_120)
theorem Alloc205_eq : StackAlloc.progComp (205, raw205) = Alloc205 := by
  kernel_rfl
#print axioms Alloc205_eq
end InitECandidate.Proofs.BackendStages
