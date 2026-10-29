import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw658
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody658_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody658_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody658_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody658_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2745#64)

def AllocBody658_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody658_5 : StackLang.HolProg 64 :=
.seq AllocBody658_3 AllocBody658_4

def AllocBody658_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody658_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody658_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody658_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 658 3

def AllocBody658_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody658_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody658_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody658_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody658_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody658_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody658_16 : StackLang.HolProg 64 :=
.seq AllocBody658_14 AllocBody658_15

def AllocBody658_17 : StackLang.HolProg 64 :=
.seq AllocBody658_13 AllocBody658_16

def AllocBody658_18 : StackLang.HolProg 64 :=
.seq AllocBody658_12 AllocBody658_17

def AllocBody658_19 : StackLang.HolProg 64 :=
.seq AllocBody658_11 AllocBody658_18

def AllocBody658_20 : StackLang.HolProg 64 :=
.seq AllocBody658_10 AllocBody658_19

def AllocBody658_21 : StackLang.HolProg 64 :=
.seq AllocBody658_9 AllocBody658_20

def AllocBody658_22 : StackLang.HolProg 64 :=
.seq AllocBody658_8 AllocBody658_21

def AllocBody658_23 : StackLang.HolProg 64 :=
.seq AllocBody658_7 AllocBody658_22

def AllocBody658_24 : StackLang.HolProg 64 :=
.seq AllocBody658_6 AllocBody658_23

def AllocBody658_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody658_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody658_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody658_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody658_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody658_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody658_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody658_32 : StackLang.HolProg 64 :=
.seq AllocBody658_30 AllocBody658_31

def AllocBody658_33 : StackLang.HolProg 64 :=
.seq AllocBody658_29 AllocBody658_32

def AllocBody658_34 : StackLang.HolProg 64 :=
.seq AllocBody658_28 AllocBody658_33

def AllocBody658_35 : StackLang.HolProg 64 :=
.seq AllocBody658_27 AllocBody658_34

def AllocBody658_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody658_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody658_38 : StackLang.HolProg 64 :=
.seq AllocBody658_36 AllocBody658_37

def AllocBody658_39 : StackLang.HolProg 64 :=
.call (some (AllocBody658_35, 0, 658, 2)) (Sum.inl 116) (some (AllocBody658_38, 658, 3))

def AllocBody658_40 : StackLang.HolProg 64 :=
.seq AllocBody658_26 AllocBody658_39

def AllocBody658_41 : StackLang.HolProg 64 :=
.seq AllocBody658_25 AllocBody658_40

def AllocBody658_42 : StackLang.HolProg 64 :=
.seq AllocBody658_24 AllocBody658_41

def AllocBody658_43 : StackLang.HolProg 64 :=
.seq AllocBody658_5 AllocBody658_42

def AllocBody658_44 : StackLang.HolProg 64 :=
.seq AllocBody658_2 AllocBody658_43

def AllocBody658_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody658_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody658_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 3486998266802970665#64)

def AllocBody658_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13281191951274694749#64)

def AllocBody658_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 10917124144477883021#64)

def AllocBody658_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 4332616871279656263#64)

def AllocBody658_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody658_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody658_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody658_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody658_55 : StackLang.HolProg 64 :=
.seq AllocBody658_53 AllocBody658_54

def AllocBody658_56 : StackLang.HolProg 64 :=
.seq AllocBody658_52 AllocBody658_55

def AllocBody658_57 : StackLang.HolProg 64 :=
.seq AllocBody658_51 AllocBody658_56

def AllocBody658_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody658_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2746#64)

def AllocBody658_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody658_61 : StackLang.HolProg 64 :=
.seq AllocBody658_59 AllocBody658_60

def AllocBody658_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody658_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody658_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody658_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 658 5

def AllocBody658_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody658_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody658_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody658_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody658_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody658_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody658_72 : StackLang.HolProg 64 :=
.seq AllocBody658_70 AllocBody658_71

def AllocBody658_73 : StackLang.HolProg 64 :=
.seq AllocBody658_69 AllocBody658_72

def AllocBody658_74 : StackLang.HolProg 64 :=
.seq AllocBody658_68 AllocBody658_73

def AllocBody658_75 : StackLang.HolProg 64 :=
.seq AllocBody658_67 AllocBody658_74

def AllocBody658_76 : StackLang.HolProg 64 :=
.seq AllocBody658_66 AllocBody658_75

def AllocBody658_77 : StackLang.HolProg 64 :=
.seq AllocBody658_65 AllocBody658_76

def AllocBody658_78 : StackLang.HolProg 64 :=
.seq AllocBody658_64 AllocBody658_77

def AllocBody658_79 : StackLang.HolProg 64 :=
.seq AllocBody658_63 AllocBody658_78

def AllocBody658_80 : StackLang.HolProg 64 :=
.seq AllocBody658_62 AllocBody658_79

def AllocBody658_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody658_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody658_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody658_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody658_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody658_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody658_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody658_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody658_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody658_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody658_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody658_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody658_93 : StackLang.HolProg 64 :=
.seq AllocBody658_91 AllocBody658_92

def AllocBody658_94 : StackLang.HolProg 64 :=
.seq AllocBody658_90 AllocBody658_93

def AllocBody658_95 : StackLang.HolProg 64 :=
.seq AllocBody658_89 AllocBody658_94

def AllocBody658_96 : StackLang.HolProg 64 :=
.seq AllocBody658_88 AllocBody658_95

def AllocBody658_97 : StackLang.HolProg 64 :=
.seq AllocBody658_87 AllocBody658_96

def AllocBody658_98 : StackLang.HolProg 64 :=
.seq AllocBody658_86 AllocBody658_97

def AllocBody658_99 : StackLang.HolProg 64 :=
.seq AllocBody658_85 AllocBody658_98

def AllocBody658_100 : StackLang.HolProg 64 :=
.seq AllocBody658_84 AllocBody658_99

def AllocBody658_101 : StackLang.HolProg 64 :=
.seq AllocBody658_83 AllocBody658_100

def AllocBody658_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody658_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody658_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody658_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody658_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody658_107 : StackLang.HolProg 64 :=
.seq AllocBody658_105 AllocBody658_106

def AllocBody658_108 : StackLang.HolProg 64 :=
.seq AllocBody658_104 AllocBody658_107

def AllocBody658_109 : StackLang.HolProg 64 :=
.seq AllocBody658_103 AllocBody658_108

def AllocBody658_110 : StackLang.HolProg 64 :=
.seq AllocBody658_102 AllocBody658_109

def AllocBody658_111 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody658_112 : StackLang.HolProg 64 :=
.seq AllocBody658_110 AllocBody658_111

def AllocBody658_113 : StackLang.HolProg 64 :=
.call (some (AllocBody658_101, 0, 658, 4)) (Sum.inl 106) (some (AllocBody658_112, 658, 5))

def AllocBody658_114 : StackLang.HolProg 64 :=
.seq AllocBody658_82 AllocBody658_113

def AllocBody658_115 : StackLang.HolProg 64 :=
.seq AllocBody658_81 AllocBody658_114

def AllocBody658_116 : StackLang.HolProg 64 :=
.seq AllocBody658_80 AllocBody658_115

def AllocBody658_117 : StackLang.HolProg 64 :=
.seq AllocBody658_61 AllocBody658_116

def AllocBody658_118 : StackLang.HolProg 64 :=
.seq AllocBody658_58 AllocBody658_117

def AllocBody658_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody658_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody658_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody658_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody658_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody658_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 3486998266802970665#64)

def AllocBody658_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13281191951274694749#64)

def AllocBody658_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 10917124144477883021#64)

def AllocBody658_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 4332616871279656263#64)

def AllocBody658_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody658_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody658_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody658_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def AllocBody658_132 : StackLang.HolProg 64 :=
.seq AllocBody658_130 AllocBody658_131

def AllocBody658_133 : StackLang.HolProg 64 :=
.seq AllocBody658_129 AllocBody658_132

def AllocBody658_134 : StackLang.HolProg 64 :=
.seq AllocBody658_128 AllocBody658_133

def AllocBody658_135 : StackLang.HolProg 64 :=
.seq AllocBody658_127 AllocBody658_134

def AllocBody658_136 : StackLang.HolProg 64 :=
.seq AllocBody658_126 AllocBody658_135

def AllocBody658_137 : StackLang.HolProg 64 :=
.seq AllocBody658_125 AllocBody658_136

def AllocBody658_138 : StackLang.HolProg 64 :=
.seq AllocBody658_124 AllocBody658_137

def AllocBody658_139 : StackLang.HolProg 64 :=
.seq AllocBody658_123 AllocBody658_138

def AllocBody658_140 : StackLang.HolProg 64 :=
.seq AllocBody658_122 AllocBody658_139

def AllocBody658_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody658_142 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody658_140 AllocBody658_141

def AllocBody658_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody658_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody658_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody658_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody658_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody658_148 : StackLang.HolProg 64 :=
.seq AllocBody658_146 AllocBody658_147

def AllocBody658_149 : StackLang.HolProg 64 :=
.seq AllocBody658_145 AllocBody658_148

def AllocBody658_150 : StackLang.HolProg 64 :=
.seq AllocBody658_144 AllocBody658_149

def AllocBody658_151 : StackLang.HolProg 64 :=
.seq AllocBody658_143 AllocBody658_150

def AllocBody658_152 : StackLang.HolProg 64 :=
.seq AllocBody658_142 AllocBody658_151

def AllocBody658_153 : StackLang.HolProg 64 :=
.seq AllocBody658_121 AllocBody658_152

def AllocBody658_154 : StackLang.HolProg 64 :=
.seq AllocBody658_120 AllocBody658_153

def AllocBody658_155 : StackLang.HolProg 64 :=
.seq AllocBody658_119 AllocBody658_154

def AllocBody658_156 : StackLang.HolProg 64 :=
.seq AllocBody658_118 AllocBody658_155

def AllocBody658_157 : StackLang.HolProg 64 :=
.seq AllocBody658_57 AllocBody658_156

def AllocBody658_158 : StackLang.HolProg 64 :=
.seq AllocBody658_50 AllocBody658_157

def AllocBody658_159 : StackLang.HolProg 64 :=
.seq AllocBody658_49 AllocBody658_158

def AllocBody658_160 : StackLang.HolProg 64 :=
.seq AllocBody658_48 AllocBody658_159

def AllocBody658_161 : StackLang.HolProg 64 :=
.seq AllocBody658_47 AllocBody658_160

def AllocBody658_162 : StackLang.HolProg 64 :=
.seq AllocBody658_46 AllocBody658_161

def AllocBody658_163 : StackLang.HolProg 64 :=
.seq AllocBody658_45 AllocBody658_162

def AllocBody658_164 : StackLang.HolProg 64 :=
.seq AllocBody658_44 AllocBody658_163

def AllocBody658_165 : StackLang.HolProg 64 :=
.seq AllocBody658_1 AllocBody658_164

def AllocBody658_166 : StackLang.HolProg 64 :=
.seq AllocBody658_0 AllocBody658_165

def Alloc658 : Nat × StackLang.HolProg 64 := (658, AllocBody658_166)
theorem Alloc658_eq : StackAlloc.progComp (658, raw658) = Alloc658 := by
  kernel_rfl
#print axioms Alloc658_eq
end InitECandidate.Proofs.BackendStages
