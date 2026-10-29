import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw204
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody204_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody204_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody204_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody204_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody204_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody204_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody204_6 : StackLang.HolProg 64 :=
.seq AllocBody204_4 AllocBody204_5

def AllocBody204_7 : StackLang.HolProg 64 :=
.seq AllocBody204_3 AllocBody204_6

def AllocBody204_8 : StackLang.HolProg 64 :=
.seq AllocBody204_2 AllocBody204_7

def AllocBody204_9 : StackLang.HolProg 64 :=
.seq AllocBody204_1 AllocBody204_8

def AllocBody204_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody204_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 257#64)

def AllocBody204_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody204_13 : StackLang.HolProg 64 :=
.seq AllocBody204_11 AllocBody204_12

def AllocBody204_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody204_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody204_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody204_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 204 3

def AllocBody204_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody204_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody204_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody204_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody204_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody204_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody204_24 : StackLang.HolProg 64 :=
.seq AllocBody204_22 AllocBody204_23

def AllocBody204_25 : StackLang.HolProg 64 :=
.seq AllocBody204_21 AllocBody204_24

def AllocBody204_26 : StackLang.HolProg 64 :=
.seq AllocBody204_20 AllocBody204_25

def AllocBody204_27 : StackLang.HolProg 64 :=
.seq AllocBody204_19 AllocBody204_26

def AllocBody204_28 : StackLang.HolProg 64 :=
.seq AllocBody204_18 AllocBody204_27

def AllocBody204_29 : StackLang.HolProg 64 :=
.seq AllocBody204_17 AllocBody204_28

def AllocBody204_30 : StackLang.HolProg 64 :=
.seq AllocBody204_16 AllocBody204_29

def AllocBody204_31 : StackLang.HolProg 64 :=
.seq AllocBody204_15 AllocBody204_30

def AllocBody204_32 : StackLang.HolProg 64 :=
.seq AllocBody204_14 AllocBody204_31

def AllocBody204_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody204_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody204_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody204_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody204_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody204_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody204_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody204_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody204_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 4

def AllocBody204_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody204_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody204_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody204_45 : StackLang.HolProg 64 :=
.seq AllocBody204_43 AllocBody204_44

def AllocBody204_46 : StackLang.HolProg 64 :=
.seq AllocBody204_42 AllocBody204_45

def AllocBody204_47 : StackLang.HolProg 64 :=
.seq AllocBody204_41 AllocBody204_46

def AllocBody204_48 : StackLang.HolProg 64 :=
.seq AllocBody204_40 AllocBody204_47

def AllocBody204_49 : StackLang.HolProg 64 :=
.seq AllocBody204_39 AllocBody204_48

def AllocBody204_50 : StackLang.HolProg 64 :=
.seq AllocBody204_38 AllocBody204_49

def AllocBody204_51 : StackLang.HolProg 64 :=
.seq AllocBody204_37 AllocBody204_50

def AllocBody204_52 : StackLang.HolProg 64 :=
.seq AllocBody204_36 AllocBody204_51

def AllocBody204_53 : StackLang.HolProg 64 :=
.seq AllocBody204_35 AllocBody204_52

def AllocBody204_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody204_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 4

def AllocBody204_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody204_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody204_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody204_59 : StackLang.HolProg 64 :=
.seq AllocBody204_57 AllocBody204_58

def AllocBody204_60 : StackLang.HolProg 64 :=
.seq AllocBody204_56 AllocBody204_59

def AllocBody204_61 : StackLang.HolProg 64 :=
.seq AllocBody204_55 AllocBody204_60

def AllocBody204_62 : StackLang.HolProg 64 :=
.seq AllocBody204_54 AllocBody204_61

def AllocBody204_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody204_64 : StackLang.HolProg 64 :=
.seq AllocBody204_62 AllocBody204_63

def AllocBody204_65 : StackLang.HolProg 64 :=
.call (some (AllocBody204_53, 0, 204, 2)) (Sum.inl 102) (some (AllocBody204_64, 204, 3))

def AllocBody204_66 : StackLang.HolProg 64 :=
.seq AllocBody204_34 AllocBody204_65

def AllocBody204_67 : StackLang.HolProg 64 :=
.seq AllocBody204_33 AllocBody204_66

def AllocBody204_68 : StackLang.HolProg 64 :=
.seq AllocBody204_32 AllocBody204_67

def AllocBody204_69 : StackLang.HolProg 64 :=
.seq AllocBody204_13 AllocBody204_68

def AllocBody204_70 : StackLang.HolProg 64 :=
.seq AllocBody204_10 AllocBody204_69

def AllocBody204_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody204_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody204_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody204_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody204_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody204_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody204_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody204_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody204_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody204_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody204_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody204_82 : StackLang.HolProg 64 :=
.seq AllocBody204_80 AllocBody204_81

def AllocBody204_83 : StackLang.HolProg 64 :=
.seq AllocBody204_79 AllocBody204_82

def AllocBody204_84 : StackLang.HolProg 64 :=
.seq AllocBody204_78 AllocBody204_83

def AllocBody204_85 : StackLang.HolProg 64 :=
.seq AllocBody204_77 AllocBody204_84

def AllocBody204_86 : StackLang.HolProg 64 :=
.seq AllocBody204_76 AllocBody204_85

def AllocBody204_87 : StackLang.HolProg 64 :=
.seq AllocBody204_75 AllocBody204_86

def AllocBody204_88 : StackLang.HolProg 64 :=
.seq AllocBody204_74 AllocBody204_87

def AllocBody204_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody204_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody204_88 AllocBody204_89

def AllocBody204_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody204_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody204_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody204_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 18446744073709551615#64)

def AllocBody204_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 18446744073709551615#64)

def AllocBody204_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 18446744073709551615#64)

def AllocBody204_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744069414583343#64)

def AllocBody204_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody204_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody204_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody204_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def AllocBody204_102 : StackLang.HolProg 64 :=
.seq AllocBody204_100 AllocBody204_101

def AllocBody204_103 : StackLang.HolProg 64 :=
.seq AllocBody204_99 AllocBody204_102

def AllocBody204_104 : StackLang.HolProg 64 :=
.seq AllocBody204_98 AllocBody204_103

def AllocBody204_105 : StackLang.HolProg 64 :=
.seq AllocBody204_97 AllocBody204_104

def AllocBody204_106 : StackLang.HolProg 64 :=
.seq AllocBody204_96 AllocBody204_105

def AllocBody204_107 : StackLang.HolProg 64 :=
.seq AllocBody204_95 AllocBody204_106

def AllocBody204_108 : StackLang.HolProg 64 :=
.seq AllocBody204_94 AllocBody204_107

def AllocBody204_109 : StackLang.HolProg 64 :=
.seq AllocBody204_93 AllocBody204_108

def AllocBody204_110 : StackLang.HolProg 64 :=
.seq AllocBody204_92 AllocBody204_109

def AllocBody204_111 : StackLang.HolProg 64 :=
.seq AllocBody204_91 AllocBody204_110

def AllocBody204_112 : StackLang.HolProg 64 :=
.seq AllocBody204_90 AllocBody204_111

def AllocBody204_113 : StackLang.HolProg 64 :=
.seq AllocBody204_73 AllocBody204_112

def AllocBody204_114 : StackLang.HolProg 64 :=
.seq AllocBody204_72 AllocBody204_113

def AllocBody204_115 : StackLang.HolProg 64 :=
.seq AllocBody204_71 AllocBody204_114

def AllocBody204_116 : StackLang.HolProg 64 :=
.seq AllocBody204_70 AllocBody204_115

def AllocBody204_117 : StackLang.HolProg 64 :=
.seq AllocBody204_9 AllocBody204_116

def AllocBody204_118 : StackLang.HolProg 64 :=
.seq AllocBody204_0 AllocBody204_117

def Alloc204 : Nat × StackLang.HolProg 64 := (204, AllocBody204_118)
theorem Alloc204_eq : StackAlloc.progComp (204, raw204) = Alloc204 := by
  kernel_rfl
#print axioms Alloc204_eq
end InitECandidate.Proofs.BackendStages
