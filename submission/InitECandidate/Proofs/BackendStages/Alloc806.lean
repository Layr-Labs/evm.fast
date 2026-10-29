import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw806
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody806_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody806_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody806_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody806_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 192#64)

def AllocBody806_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody806_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody806_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 47#64)

def AllocBody806_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody806_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody806_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody806_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody806_13 : StackLang.HolProg 64 :=
.seq AllocBody806_11 AllocBody806_12

def AllocBody806_14 : StackLang.HolProg 64 :=
.seq AllocBody806_10 AllocBody806_13

def AllocBody806_15 : StackLang.HolProg 64 :=
.seq AllocBody806_9 AllocBody806_14

def AllocBody806_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3950#64)

def AllocBody806_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody806_19 : StackLang.HolProg 64 :=
.seq AllocBody806_17 AllocBody806_18

def AllocBody806_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody806_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody806_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody806_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 806 3

def AllocBody806_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody806_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody806_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody806_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody806_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody806_30 : StackLang.HolProg 64 :=
.seq AllocBody806_28 AllocBody806_29

def AllocBody806_31 : StackLang.HolProg 64 :=
.seq AllocBody806_27 AllocBody806_30

def AllocBody806_32 : StackLang.HolProg 64 :=
.seq AllocBody806_26 AllocBody806_31

def AllocBody806_33 : StackLang.HolProg 64 :=
.seq AllocBody806_25 AllocBody806_32

def AllocBody806_34 : StackLang.HolProg 64 :=
.seq AllocBody806_24 AllocBody806_33

def AllocBody806_35 : StackLang.HolProg 64 :=
.seq AllocBody806_23 AllocBody806_34

def AllocBody806_36 : StackLang.HolProg 64 :=
.seq AllocBody806_22 AllocBody806_35

def AllocBody806_37 : StackLang.HolProg 64 :=
.seq AllocBody806_21 AllocBody806_36

def AllocBody806_38 : StackLang.HolProg 64 :=
.seq AllocBody806_20 AllocBody806_37

def AllocBody806_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody806_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody806_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody806_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody806_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody806_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody806_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody806_48 : StackLang.HolProg 64 :=
.seq AllocBody806_46 AllocBody806_47

def AllocBody806_49 : StackLang.HolProg 64 :=
.seq AllocBody806_45 AllocBody806_48

def AllocBody806_50 : StackLang.HolProg 64 :=
.seq AllocBody806_44 AllocBody806_49

def AllocBody806_51 : StackLang.HolProg 64 :=
.seq AllocBody806_43 AllocBody806_50

def AllocBody806_52 : StackLang.HolProg 64 :=
.seq AllocBody806_42 AllocBody806_51

def AllocBody806_53 : StackLang.HolProg 64 :=
.seq AllocBody806_41 AllocBody806_52

def AllocBody806_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody806_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody806_56 : StackLang.HolProg 64 :=
.seq AllocBody806_54 AllocBody806_55

def AllocBody806_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody806_58 : StackLang.HolProg 64 :=
.seq AllocBody806_56 AllocBody806_57

def AllocBody806_59 : StackLang.HolProg 64 :=
.call (some (AllocBody806_53, 0, 806, 2)) (Sum.inl 80) (some (AllocBody806_58, 806, 3))

def AllocBody806_60 : StackLang.HolProg 64 :=
.seq AllocBody806_40 AllocBody806_59

def AllocBody806_61 : StackLang.HolProg 64 :=
.seq AllocBody806_39 AllocBody806_60

def AllocBody806_62 : StackLang.HolProg 64 :=
.seq AllocBody806_38 AllocBody806_61

def AllocBody806_63 : StackLang.HolProg 64 :=
.seq AllocBody806_19 AllocBody806_62

def AllocBody806_64 : StackLang.HolProg 64 :=
.seq AllocBody806_16 AllocBody806_63

def AllocBody806_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody806_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody806_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody806_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody806_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody806_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody806_72 : StackLang.HolProg 64 :=
.seq AllocBody806_70 AllocBody806_71

def AllocBody806_73 : StackLang.HolProg 64 :=
.seq AllocBody806_69 AllocBody806_72

def AllocBody806_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3951#64)

def AllocBody806_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody806_77 : StackLang.HolProg 64 :=
.seq AllocBody806_75 AllocBody806_76

def AllocBody806_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody806_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody806_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody806_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 806 5

def AllocBody806_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody806_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody806_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody806_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody806_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody806_88 : StackLang.HolProg 64 :=
.seq AllocBody806_86 AllocBody806_87

def AllocBody806_89 : StackLang.HolProg 64 :=
.seq AllocBody806_85 AllocBody806_88

def AllocBody806_90 : StackLang.HolProg 64 :=
.seq AllocBody806_84 AllocBody806_89

def AllocBody806_91 : StackLang.HolProg 64 :=
.seq AllocBody806_83 AllocBody806_90

def AllocBody806_92 : StackLang.HolProg 64 :=
.seq AllocBody806_82 AllocBody806_91

def AllocBody806_93 : StackLang.HolProg 64 :=
.seq AllocBody806_81 AllocBody806_92

def AllocBody806_94 : StackLang.HolProg 64 :=
.seq AllocBody806_80 AllocBody806_93

def AllocBody806_95 : StackLang.HolProg 64 :=
.seq AllocBody806_79 AllocBody806_94

def AllocBody806_96 : StackLang.HolProg 64 :=
.seq AllocBody806_78 AllocBody806_95

def AllocBody806_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody806_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody806_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody806_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody806_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody806_104 : StackLang.HolProg 64 :=
.seq AllocBody806_102 AllocBody806_103

def AllocBody806_105 : StackLang.HolProg 64 :=
.seq AllocBody806_101 AllocBody806_104

def AllocBody806_106 : StackLang.HolProg 64 :=
.seq AllocBody806_100 AllocBody806_105

def AllocBody806_107 : StackLang.HolProg 64 :=
.seq AllocBody806_99 AllocBody806_106

def AllocBody806_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody806_109 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody806_110 : StackLang.HolProg 64 :=
.seq AllocBody806_108 AllocBody806_109

def AllocBody806_111 : StackLang.HolProg 64 :=
.call (some (AllocBody806_107, 0, 806, 4)) (Sum.inl 766) (some (AllocBody806_110, 806, 5))

def AllocBody806_112 : StackLang.HolProg 64 :=
.seq AllocBody806_98 AllocBody806_111

def AllocBody806_113 : StackLang.HolProg 64 :=
.seq AllocBody806_97 AllocBody806_112

def AllocBody806_114 : StackLang.HolProg 64 :=
.seq AllocBody806_96 AllocBody806_113

def AllocBody806_115 : StackLang.HolProg 64 :=
.seq AllocBody806_77 AllocBody806_114

def AllocBody806_116 : StackLang.HolProg 64 :=
.seq AllocBody806_74 AllocBody806_115

def AllocBody806_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody806_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody806_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody806_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody806_122 : StackLang.HolProg 64 :=
.seq AllocBody806_120 AllocBody806_121

def AllocBody806_123 : StackLang.HolProg 64 :=
.seq AllocBody806_119 AllocBody806_122

def AllocBody806_124 : StackLang.HolProg 64 :=
.seq AllocBody806_118 AllocBody806_123

def AllocBody806_125 : StackLang.HolProg 64 :=
.seq AllocBody806_117 AllocBody806_124

def AllocBody806_126 : StackLang.HolProg 64 :=
.seq AllocBody806_116 AllocBody806_125

def AllocBody806_127 : StackLang.HolProg 64 :=
.seq AllocBody806_73 AllocBody806_126

def AllocBody806_128 : StackLang.HolProg 64 :=
.seq AllocBody806_68 AllocBody806_127

def AllocBody806_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_130 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody806_128 AllocBody806_129

def AllocBody806_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody806_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody806_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_134 : StackLang.HolProg 64 :=
.seq AllocBody806_132 AllocBody806_133

def AllocBody806_135 : StackLang.HolProg 64 :=
.seq AllocBody806_131 AllocBody806_134

def AllocBody806_136 : StackLang.HolProg 64 :=
.seq AllocBody806_130 AllocBody806_135

def AllocBody806_137 : StackLang.HolProg 64 :=
.seq AllocBody806_67 AllocBody806_136

def AllocBody806_138 : StackLang.HolProg 64 :=
.seq AllocBody806_66 AllocBody806_137

def AllocBody806_139 : StackLang.HolProg 64 :=
.seq AllocBody806_65 AllocBody806_138

def AllocBody806_140 : StackLang.HolProg 64 :=
.seq AllocBody806_64 AllocBody806_139

def AllocBody806_141 : StackLang.HolProg 64 :=
.seq AllocBody806_15 AllocBody806_140

def AllocBody806_142 : StackLang.HolProg 64 :=
.seq AllocBody806_8 AllocBody806_141

def AllocBody806_143 : StackLang.HolProg 64 :=
.seq AllocBody806_7 AllocBody806_142

def AllocBody806_144 : StackLang.HolProg 64 :=
.seq AllocBody806_6 AllocBody806_143

def AllocBody806_145 : StackLang.HolProg 64 :=
.seq AllocBody806_5 AllocBody806_144

def AllocBody806_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody806_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody806_148 : StackLang.HolProg 64 :=
.seq AllocBody806_146 AllocBody806_147

def AllocBody806_149 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody806_145 AllocBody806_148

def AllocBody806_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody806_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody806_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody806_153 : StackLang.HolProg 64 :=
.seq AllocBody806_151 AllocBody806_152

def AllocBody806_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3952#64)

def AllocBody806_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody806_157 : StackLang.HolProg 64 :=
.seq AllocBody806_155 AllocBody806_156

def AllocBody806_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody806_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody806_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody806_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 806 7

def AllocBody806_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody806_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody806_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody806_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody806_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody806_168 : StackLang.HolProg 64 :=
.seq AllocBody806_166 AllocBody806_167

def AllocBody806_169 : StackLang.HolProg 64 :=
.seq AllocBody806_165 AllocBody806_168

def AllocBody806_170 : StackLang.HolProg 64 :=
.seq AllocBody806_164 AllocBody806_169

def AllocBody806_171 : StackLang.HolProg 64 :=
.seq AllocBody806_163 AllocBody806_170

def AllocBody806_172 : StackLang.HolProg 64 :=
.seq AllocBody806_162 AllocBody806_171

def AllocBody806_173 : StackLang.HolProg 64 :=
.seq AllocBody806_161 AllocBody806_172

def AllocBody806_174 : StackLang.HolProg 64 :=
.seq AllocBody806_160 AllocBody806_173

def AllocBody806_175 : StackLang.HolProg 64 :=
.seq AllocBody806_159 AllocBody806_174

def AllocBody806_176 : StackLang.HolProg 64 :=
.seq AllocBody806_158 AllocBody806_175

def AllocBody806_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody806_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody806_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody806_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody806_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody806_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody806_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody806_186 : StackLang.HolProg 64 :=
.seq AllocBody806_184 AllocBody806_185

def AllocBody806_187 : StackLang.HolProg 64 :=
.seq AllocBody806_183 AllocBody806_186

def AllocBody806_188 : StackLang.HolProg 64 :=
.seq AllocBody806_182 AllocBody806_187

def AllocBody806_189 : StackLang.HolProg 64 :=
.seq AllocBody806_181 AllocBody806_188

def AllocBody806_190 : StackLang.HolProg 64 :=
.seq AllocBody806_180 AllocBody806_189

def AllocBody806_191 : StackLang.HolProg 64 :=
.seq AllocBody806_179 AllocBody806_190

def AllocBody806_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody806_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody806_194 : StackLang.HolProg 64 :=
.seq AllocBody806_192 AllocBody806_193

def AllocBody806_195 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody806_196 : StackLang.HolProg 64 :=
.seq AllocBody806_194 AllocBody806_195

def AllocBody806_197 : StackLang.HolProg 64 :=
.call (some (AllocBody806_191, 0, 806, 6)) (Sum.inl 805) (some (AllocBody806_196, 806, 7))

def AllocBody806_198 : StackLang.HolProg 64 :=
.seq AllocBody806_178 AllocBody806_197

def AllocBody806_199 : StackLang.HolProg 64 :=
.seq AllocBody806_177 AllocBody806_198

def AllocBody806_200 : StackLang.HolProg 64 :=
.seq AllocBody806_176 AllocBody806_199

def AllocBody806_201 : StackLang.HolProg 64 :=
.seq AllocBody806_157 AllocBody806_200

def AllocBody806_202 : StackLang.HolProg 64 :=
.seq AllocBody806_154 AllocBody806_201

def AllocBody806_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody806_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody806_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody806_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody806_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody806_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody806_211 : StackLang.HolProg 64 :=
.seq AllocBody806_209 AllocBody806_210

def AllocBody806_212 : StackLang.HolProg 64 :=
.seq AllocBody806_208 AllocBody806_211

def AllocBody806_213 : StackLang.HolProg 64 :=
.seq AllocBody806_207 AllocBody806_212

def AllocBody806_214 : StackLang.HolProg 64 :=
.seq AllocBody806_206 AllocBody806_213

def AllocBody806_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_216 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody806_214 AllocBody806_215

def AllocBody806_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody806_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody806_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody806_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody806_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody806_222 : StackLang.HolProg 64 :=
.seq AllocBody806_220 AllocBody806_221

def AllocBody806_223 : StackLang.HolProg 64 :=
.seq AllocBody806_219 AllocBody806_222

def AllocBody806_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3953#64)

def AllocBody806_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody806_227 : StackLang.HolProg 64 :=
.seq AllocBody806_225 AllocBody806_226

def AllocBody806_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody806_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody806_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody806_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 806 9

def AllocBody806_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody806_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody806_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody806_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody806_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody806_238 : StackLang.HolProg 64 :=
.seq AllocBody806_236 AllocBody806_237

def AllocBody806_239 : StackLang.HolProg 64 :=
.seq AllocBody806_235 AllocBody806_238

def AllocBody806_240 : StackLang.HolProg 64 :=
.seq AllocBody806_234 AllocBody806_239

def AllocBody806_241 : StackLang.HolProg 64 :=
.seq AllocBody806_233 AllocBody806_240

def AllocBody806_242 : StackLang.HolProg 64 :=
.seq AllocBody806_232 AllocBody806_241

def AllocBody806_243 : StackLang.HolProg 64 :=
.seq AllocBody806_231 AllocBody806_242

def AllocBody806_244 : StackLang.HolProg 64 :=
.seq AllocBody806_230 AllocBody806_243

def AllocBody806_245 : StackLang.HolProg 64 :=
.seq AllocBody806_229 AllocBody806_244

def AllocBody806_246 : StackLang.HolProg 64 :=
.seq AllocBody806_228 AllocBody806_245

def AllocBody806_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody806_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody806_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody806_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody806_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody806_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody806_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody806_256 : StackLang.HolProg 64 :=
.seq AllocBody806_254 AllocBody806_255

def AllocBody806_257 : StackLang.HolProg 64 :=
.seq AllocBody806_253 AllocBody806_256

def AllocBody806_258 : StackLang.HolProg 64 :=
.seq AllocBody806_252 AllocBody806_257

def AllocBody806_259 : StackLang.HolProg 64 :=
.seq AllocBody806_251 AllocBody806_258

def AllocBody806_260 : StackLang.HolProg 64 :=
.seq AllocBody806_250 AllocBody806_259

def AllocBody806_261 : StackLang.HolProg 64 :=
.seq AllocBody806_249 AllocBody806_260

def AllocBody806_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody806_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody806_264 : StackLang.HolProg 64 :=
.seq AllocBody806_262 AllocBody806_263

def AllocBody806_265 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody806_266 : StackLang.HolProg 64 :=
.seq AllocBody806_264 AllocBody806_265

def AllocBody806_267 : StackLang.HolProg 64 :=
.call (some (AllocBody806_261, 0, 806, 8)) (Sum.inl 767) (some (AllocBody806_266, 806, 9))

def AllocBody806_268 : StackLang.HolProg 64 :=
.seq AllocBody806_248 AllocBody806_267

def AllocBody806_269 : StackLang.HolProg 64 :=
.seq AllocBody806_247 AllocBody806_268

def AllocBody806_270 : StackLang.HolProg 64 :=
.seq AllocBody806_246 AllocBody806_269

def AllocBody806_271 : StackLang.HolProg 64 :=
.seq AllocBody806_227 AllocBody806_270

def AllocBody806_272 : StackLang.HolProg 64 :=
.seq AllocBody806_224 AllocBody806_271

def AllocBody806_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody806_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody806_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody806_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody806_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody806_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody806_281 : StackLang.HolProg 64 :=
.seq AllocBody806_279 AllocBody806_280

def AllocBody806_282 : StackLang.HolProg 64 :=
.seq AllocBody806_278 AllocBody806_281

def AllocBody806_283 : StackLang.HolProg 64 :=
.seq AllocBody806_277 AllocBody806_282

def AllocBody806_284 : StackLang.HolProg 64 :=
.seq AllocBody806_276 AllocBody806_283

def AllocBody806_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_286 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody806_284 AllocBody806_285

def AllocBody806_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody806_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody806_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody806_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody806_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 777

def AllocBody806_292 : StackLang.HolProg 64 :=
.seq AllocBody806_290 AllocBody806_291

def AllocBody806_293 : StackLang.HolProg 64 :=
.seq AllocBody806_289 AllocBody806_292

def AllocBody806_294 : StackLang.HolProg 64 :=
.seq AllocBody806_288 AllocBody806_293

def AllocBody806_295 : StackLang.HolProg 64 :=
.seq AllocBody806_287 AllocBody806_294

def AllocBody806_296 : StackLang.HolProg 64 :=
.seq AllocBody806_286 AllocBody806_295

def AllocBody806_297 : StackLang.HolProg 64 :=
.seq AllocBody806_275 AllocBody806_296

def AllocBody806_298 : StackLang.HolProg 64 :=
.seq AllocBody806_274 AllocBody806_297

def AllocBody806_299 : StackLang.HolProg 64 :=
.seq AllocBody806_273 AllocBody806_298

def AllocBody806_300 : StackLang.HolProg 64 :=
.seq AllocBody806_272 AllocBody806_299

def AllocBody806_301 : StackLang.HolProg 64 :=
.seq AllocBody806_223 AllocBody806_300

def AllocBody806_302 : StackLang.HolProg 64 :=
.seq AllocBody806_218 AllocBody806_301

def AllocBody806_303 : StackLang.HolProg 64 :=
.seq AllocBody806_217 AllocBody806_302

def AllocBody806_304 : StackLang.HolProg 64 :=
.seq AllocBody806_216 AllocBody806_303

def AllocBody806_305 : StackLang.HolProg 64 :=
.seq AllocBody806_205 AllocBody806_304

def AllocBody806_306 : StackLang.HolProg 64 :=
.seq AllocBody806_204 AllocBody806_305

def AllocBody806_307 : StackLang.HolProg 64 :=
.seq AllocBody806_203 AllocBody806_306

def AllocBody806_308 : StackLang.HolProg 64 :=
.seq AllocBody806_202 AllocBody806_307

def AllocBody806_309 : StackLang.HolProg 64 :=
.seq AllocBody806_153 AllocBody806_308

def AllocBody806_310 : StackLang.HolProg 64 :=
.seq AllocBody806_150 AllocBody806_309

def AllocBody806_311 : StackLang.HolProg 64 :=
.seq AllocBody806_149 AllocBody806_310

def AllocBody806_312 : StackLang.HolProg 64 :=
.seq AllocBody806_4 AllocBody806_311

def AllocBody806_313 : StackLang.HolProg 64 :=
.seq AllocBody806_3 AllocBody806_312

def AllocBody806_314 : StackLang.HolProg 64 :=
.seq AllocBody806_2 AllocBody806_313

def AllocBody806_315 : StackLang.HolProg 64 :=
.seq AllocBody806_1 AllocBody806_314

def AllocBody806_316 : StackLang.HolProg 64 :=
.seq AllocBody806_0 AllocBody806_315

def Alloc806 : Nat × StackLang.HolProg 64 := (806, AllocBody806_316)
theorem Alloc806_eq : StackAlloc.progComp (806, raw806) = Alloc806 := by
  kernel_rfl
#print axioms Alloc806_eq
end InitECandidate.Proofs.BackendStages
