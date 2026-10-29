import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw644
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody644_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody644_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody644_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)

def AllocBody644_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody644_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def AllocBody644_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)

def AllocBody644_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody644_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody644_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody644_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody644_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody644_11 : StackLang.HolProg 64 :=
.seq AllocBody644_9 AllocBody644_10

def AllocBody644_12 : StackLang.HolProg 64 :=
.seq AllocBody644_8 AllocBody644_11

def AllocBody644_13 : StackLang.HolProg 64 :=
.seq AllocBody644_7 AllocBody644_12

def AllocBody644_14 : StackLang.HolProg 64 :=
.seq AllocBody644_6 AllocBody644_13

def AllocBody644_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody644_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2624#64)

def AllocBody644_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody644_18 : StackLang.HolProg 64 :=
.seq AllocBody644_16 AllocBody644_17

def AllocBody644_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody644_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody644_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody644_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 644 3

def AllocBody644_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody644_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody644_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody644_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody644_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody644_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody644_29 : StackLang.HolProg 64 :=
.seq AllocBody644_27 AllocBody644_28

def AllocBody644_30 : StackLang.HolProg 64 :=
.seq AllocBody644_26 AllocBody644_29

def AllocBody644_31 : StackLang.HolProg 64 :=
.seq AllocBody644_25 AllocBody644_30

def AllocBody644_32 : StackLang.HolProg 64 :=
.seq AllocBody644_24 AllocBody644_31

def AllocBody644_33 : StackLang.HolProg 64 :=
.seq AllocBody644_23 AllocBody644_32

def AllocBody644_34 : StackLang.HolProg 64 :=
.seq AllocBody644_22 AllocBody644_33

def AllocBody644_35 : StackLang.HolProg 64 :=
.seq AllocBody644_21 AllocBody644_34

def AllocBody644_36 : StackLang.HolProg 64 :=
.seq AllocBody644_20 AllocBody644_35

def AllocBody644_37 : StackLang.HolProg 64 :=
.seq AllocBody644_19 AllocBody644_36

def AllocBody644_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody644_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody644_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody644_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody644_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody644_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody644_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody644_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody644_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody644_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody644_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody644_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody644_50 : StackLang.HolProg 64 :=
.seq AllocBody644_48 AllocBody644_49

def AllocBody644_51 : StackLang.HolProg 64 :=
.seq AllocBody644_47 AllocBody644_50

def AllocBody644_52 : StackLang.HolProg 64 :=
.seq AllocBody644_46 AllocBody644_51

def AllocBody644_53 : StackLang.HolProg 64 :=
.seq AllocBody644_45 AllocBody644_52

def AllocBody644_54 : StackLang.HolProg 64 :=
.seq AllocBody644_44 AllocBody644_53

def AllocBody644_55 : StackLang.HolProg 64 :=
.seq AllocBody644_43 AllocBody644_54

def AllocBody644_56 : StackLang.HolProg 64 :=
.seq AllocBody644_42 AllocBody644_55

def AllocBody644_57 : StackLang.HolProg 64 :=
.seq AllocBody644_41 AllocBody644_56

def AllocBody644_58 : StackLang.HolProg 64 :=
.seq AllocBody644_40 AllocBody644_57

def AllocBody644_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody644_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody644_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody644_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody644_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody644_64 : StackLang.HolProg 64 :=
.seq AllocBody644_62 AllocBody644_63

def AllocBody644_65 : StackLang.HolProg 64 :=
.seq AllocBody644_61 AllocBody644_64

def AllocBody644_66 : StackLang.HolProg 64 :=
.seq AllocBody644_60 AllocBody644_65

def AllocBody644_67 : StackLang.HolProg 64 :=
.seq AllocBody644_59 AllocBody644_66

def AllocBody644_68 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody644_69 : StackLang.HolProg 64 :=
.seq AllocBody644_67 AllocBody644_68

def AllocBody644_70 : StackLang.HolProg 64 :=
.call (some (AllocBody644_58, 0, 644, 2)) (Sum.inl 106) (some (AllocBody644_69, 644, 3))

def AllocBody644_71 : StackLang.HolProg 64 :=
.seq AllocBody644_39 AllocBody644_70

def AllocBody644_72 : StackLang.HolProg 64 :=
.seq AllocBody644_38 AllocBody644_71

def AllocBody644_73 : StackLang.HolProg 64 :=
.seq AllocBody644_37 AllocBody644_72

def AllocBody644_74 : StackLang.HolProg 64 :=
.seq AllocBody644_18 AllocBody644_73

def AllocBody644_75 : StackLang.HolProg 64 :=
.seq AllocBody644_15 AllocBody644_74

def AllocBody644_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody644_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody644_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody644_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody644_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody644_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)

def AllocBody644_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody644_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def AllocBody644_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)

def AllocBody644_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody644_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody644_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody644_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def AllocBody644_89 : StackLang.HolProg 64 :=
.seq AllocBody644_87 AllocBody644_88

def AllocBody644_90 : StackLang.HolProg 64 :=
.seq AllocBody644_86 AllocBody644_89

def AllocBody644_91 : StackLang.HolProg 64 :=
.seq AllocBody644_85 AllocBody644_90

def AllocBody644_92 : StackLang.HolProg 64 :=
.seq AllocBody644_84 AllocBody644_91

def AllocBody644_93 : StackLang.HolProg 64 :=
.seq AllocBody644_83 AllocBody644_92

def AllocBody644_94 : StackLang.HolProg 64 :=
.seq AllocBody644_82 AllocBody644_93

def AllocBody644_95 : StackLang.HolProg 64 :=
.seq AllocBody644_81 AllocBody644_94

def AllocBody644_96 : StackLang.HolProg 64 :=
.seq AllocBody644_80 AllocBody644_95

def AllocBody644_97 : StackLang.HolProg 64 :=
.seq AllocBody644_79 AllocBody644_96

def AllocBody644_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody644_99 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody644_97 AllocBody644_98

def AllocBody644_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody644_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody644_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody644_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody644_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody644_105 : StackLang.HolProg 64 :=
.seq AllocBody644_103 AllocBody644_104

def AllocBody644_106 : StackLang.HolProg 64 :=
.seq AllocBody644_102 AllocBody644_105

def AllocBody644_107 : StackLang.HolProg 64 :=
.seq AllocBody644_101 AllocBody644_106

def AllocBody644_108 : StackLang.HolProg 64 :=
.seq AllocBody644_100 AllocBody644_107

def AllocBody644_109 : StackLang.HolProg 64 :=
.seq AllocBody644_99 AllocBody644_108

def AllocBody644_110 : StackLang.HolProg 64 :=
.seq AllocBody644_78 AllocBody644_109

def AllocBody644_111 : StackLang.HolProg 64 :=
.seq AllocBody644_77 AllocBody644_110

def AllocBody644_112 : StackLang.HolProg 64 :=
.seq AllocBody644_76 AllocBody644_111

def AllocBody644_113 : StackLang.HolProg 64 :=
.seq AllocBody644_75 AllocBody644_112

def AllocBody644_114 : StackLang.HolProg 64 :=
.seq AllocBody644_14 AllocBody644_113

def AllocBody644_115 : StackLang.HolProg 64 :=
.seq AllocBody644_5 AllocBody644_114

def AllocBody644_116 : StackLang.HolProg 64 :=
.seq AllocBody644_4 AllocBody644_115

def AllocBody644_117 : StackLang.HolProg 64 :=
.seq AllocBody644_3 AllocBody644_116

def AllocBody644_118 : StackLang.HolProg 64 :=
.seq AllocBody644_2 AllocBody644_117

def AllocBody644_119 : StackLang.HolProg 64 :=
.seq AllocBody644_1 AllocBody644_118

def AllocBody644_120 : StackLang.HolProg 64 :=
.seq AllocBody644_0 AllocBody644_119

def Alloc644 : Nat × StackLang.HolProg 64 := (644, AllocBody644_120)
theorem Alloc644_eq : StackAlloc.progComp (644, raw644) = Alloc644 := by
  kernel_rfl
#print axioms Alloc644_eq
end InitECandidate.Proofs.BackendStages
