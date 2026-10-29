import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw162
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody162_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody162_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody162_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody162_3 : StackLang.HolProg 64 :=
.seq AllocBody162_1 AllocBody162_2

def AllocBody162_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody162_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 162#64)

def AllocBody162_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody162_7 : StackLang.HolProg 64 :=
.seq AllocBody162_5 AllocBody162_6

def AllocBody162_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody162_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody162_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody162_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 162 3

def AllocBody162_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody162_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody162_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody162_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody162_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody162_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody162_18 : StackLang.HolProg 64 :=
.seq AllocBody162_16 AllocBody162_17

def AllocBody162_19 : StackLang.HolProg 64 :=
.seq AllocBody162_15 AllocBody162_18

def AllocBody162_20 : StackLang.HolProg 64 :=
.seq AllocBody162_14 AllocBody162_19

def AllocBody162_21 : StackLang.HolProg 64 :=
.seq AllocBody162_13 AllocBody162_20

def AllocBody162_22 : StackLang.HolProg 64 :=
.seq AllocBody162_12 AllocBody162_21

def AllocBody162_23 : StackLang.HolProg 64 :=
.seq AllocBody162_11 AllocBody162_22

def AllocBody162_24 : StackLang.HolProg 64 :=
.seq AllocBody162_10 AllocBody162_23

def AllocBody162_25 : StackLang.HolProg 64 :=
.seq AllocBody162_9 AllocBody162_24

def AllocBody162_26 : StackLang.HolProg 64 :=
.seq AllocBody162_8 AllocBody162_25

def AllocBody162_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody162_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody162_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody162_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody162_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody162_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody162_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody162_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody162_35 : StackLang.HolProg 64 :=
.seq AllocBody162_33 AllocBody162_34

def AllocBody162_36 : StackLang.HolProg 64 :=
.seq AllocBody162_32 AllocBody162_35

def AllocBody162_37 : StackLang.HolProg 64 :=
.seq AllocBody162_31 AllocBody162_36

def AllocBody162_38 : StackLang.HolProg 64 :=
.seq AllocBody162_30 AllocBody162_37

def AllocBody162_39 : StackLang.HolProg 64 :=
.seq AllocBody162_29 AllocBody162_38

def AllocBody162_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody162_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody162_42 : StackLang.HolProg 64 :=
.seq AllocBody162_40 AllocBody162_41

def AllocBody162_43 : StackLang.HolProg 64 :=
.call (some (AllocBody162_39, 0, 162, 2)) (Sum.inl 161) (some (AllocBody162_42, 162, 3))

def AllocBody162_44 : StackLang.HolProg 64 :=
.seq AllocBody162_28 AllocBody162_43

def AllocBody162_45 : StackLang.HolProg 64 :=
.seq AllocBody162_27 AllocBody162_44

def AllocBody162_46 : StackLang.HolProg 64 :=
.seq AllocBody162_26 AllocBody162_45

def AllocBody162_47 : StackLang.HolProg 64 :=
.seq AllocBody162_7 AllocBody162_46

def AllocBody162_48 : StackLang.HolProg 64 :=
.seq AllocBody162_4 AllocBody162_47

def AllocBody162_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody162_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody162_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody162_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def AllocBody162_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def AllocBody162_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody162_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody162_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 1

def AllocBody162_57 : StackLang.HolProg 64 :=
.seq AllocBody162_55 AllocBody162_56

def AllocBody162_58 : StackLang.HolProg 64 :=
.seq AllocBody162_54 AllocBody162_57

def AllocBody162_59 : StackLang.HolProg 64 :=
.seq AllocBody162_53 AllocBody162_58

def AllocBody162_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody162_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 163#64)

def AllocBody162_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody162_63 : StackLang.HolProg 64 :=
.seq AllocBody162_61 AllocBody162_62

def AllocBody162_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody162_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody162_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody162_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 162 5

def AllocBody162_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody162_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody162_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody162_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody162_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody162_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody162_74 : StackLang.HolProg 64 :=
.seq AllocBody162_72 AllocBody162_73

def AllocBody162_75 : StackLang.HolProg 64 :=
.seq AllocBody162_71 AllocBody162_74

def AllocBody162_76 : StackLang.HolProg 64 :=
.seq AllocBody162_70 AllocBody162_75

def AllocBody162_77 : StackLang.HolProg 64 :=
.seq AllocBody162_69 AllocBody162_76

def AllocBody162_78 : StackLang.HolProg 64 :=
.seq AllocBody162_68 AllocBody162_77

def AllocBody162_79 : StackLang.HolProg 64 :=
.seq AllocBody162_67 AllocBody162_78

def AllocBody162_80 : StackLang.HolProg 64 :=
.seq AllocBody162_66 AllocBody162_79

def AllocBody162_81 : StackLang.HolProg 64 :=
.seq AllocBody162_65 AllocBody162_80

def AllocBody162_82 : StackLang.HolProg 64 :=
.seq AllocBody162_64 AllocBody162_81

def AllocBody162_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody162_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody162_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody162_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody162_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody162_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody162_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody162_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody162_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody162_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody162_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody162_94 : StackLang.HolProg 64 :=
.seq AllocBody162_92 AllocBody162_93

def AllocBody162_95 : StackLang.HolProg 64 :=
.seq AllocBody162_91 AllocBody162_94

def AllocBody162_96 : StackLang.HolProg 64 :=
.seq AllocBody162_90 AllocBody162_95

def AllocBody162_97 : StackLang.HolProg 64 :=
.seq AllocBody162_89 AllocBody162_96

def AllocBody162_98 : StackLang.HolProg 64 :=
.seq AllocBody162_88 AllocBody162_97

def AllocBody162_99 : StackLang.HolProg 64 :=
.seq AllocBody162_87 AllocBody162_98

def AllocBody162_100 : StackLang.HolProg 64 :=
.seq AllocBody162_86 AllocBody162_99

def AllocBody162_101 : StackLang.HolProg 64 :=
.seq AllocBody162_85 AllocBody162_100

def AllocBody162_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody162_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody162_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody162_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody162_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody162_107 : StackLang.HolProg 64 :=
.seq AllocBody162_105 AllocBody162_106

def AllocBody162_108 : StackLang.HolProg 64 :=
.seq AllocBody162_104 AllocBody162_107

def AllocBody162_109 : StackLang.HolProg 64 :=
.seq AllocBody162_103 AllocBody162_108

def AllocBody162_110 : StackLang.HolProg 64 :=
.seq AllocBody162_102 AllocBody162_109

def AllocBody162_111 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody162_112 : StackLang.HolProg 64 :=
.seq AllocBody162_110 AllocBody162_111

def AllocBody162_113 : StackLang.HolProg 64 :=
.call (some (AllocBody162_101, 0, 162, 4)) (Sum.inl 159) (some (AllocBody162_112, 162, 5))

def AllocBody162_114 : StackLang.HolProg 64 :=
.seq AllocBody162_84 AllocBody162_113

def AllocBody162_115 : StackLang.HolProg 64 :=
.seq AllocBody162_83 AllocBody162_114

def AllocBody162_116 : StackLang.HolProg 64 :=
.seq AllocBody162_82 AllocBody162_115

def AllocBody162_117 : StackLang.HolProg 64 :=
.seq AllocBody162_63 AllocBody162_116

def AllocBody162_118 : StackLang.HolProg 64 :=
.seq AllocBody162_60 AllocBody162_117

def AllocBody162_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody162_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody162_121 : StackLang.HolProg 64 :=
.seq AllocBody162_119 AllocBody162_120

def AllocBody162_122 : StackLang.HolProg 64 :=
.seq AllocBody162_118 AllocBody162_121

def AllocBody162_123 : StackLang.HolProg 64 :=
.seq AllocBody162_59 AllocBody162_122

def AllocBody162_124 : StackLang.HolProg 64 :=
.seq AllocBody162_52 AllocBody162_123

def AllocBody162_125 : StackLang.HolProg 64 :=
.seq AllocBody162_51 AllocBody162_124

def AllocBody162_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody162_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody162_128 : StackLang.HolProg 64 :=
.seq AllocBody162_126 AllocBody162_127

def AllocBody162_129 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody162_125 AllocBody162_128

def AllocBody162_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody162_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody162_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody162_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody162_134 : StackLang.HolProg 64 :=
.seq AllocBody162_132 AllocBody162_133

def AllocBody162_135 : StackLang.HolProg 64 :=
.seq AllocBody162_131 AllocBody162_134

def AllocBody162_136 : StackLang.HolProg 64 :=
.seq AllocBody162_130 AllocBody162_135

def AllocBody162_137 : StackLang.HolProg 64 :=
.seq AllocBody162_129 AllocBody162_136

def AllocBody162_138 : StackLang.HolProg 64 :=
.seq AllocBody162_50 AllocBody162_137

def AllocBody162_139 : StackLang.HolProg 64 :=
.seq AllocBody162_49 AllocBody162_138

def AllocBody162_140 : StackLang.HolProg 64 :=
.seq AllocBody162_48 AllocBody162_139

def AllocBody162_141 : StackLang.HolProg 64 :=
.seq AllocBody162_3 AllocBody162_140

def AllocBody162_142 : StackLang.HolProg 64 :=
.seq AllocBody162_0 AllocBody162_141

def Alloc162 : Nat × StackLang.HolProg 64 := (162, AllocBody162_142)
theorem Alloc162_eq : StackAlloc.progComp (162, raw162) = Alloc162 := by
  kernel_rfl
#print axioms Alloc162_eq
end InitECandidate.Proofs.BackendStages
