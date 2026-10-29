import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw170
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody170_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody170_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody170_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody170_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody170_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody170_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 20#64)

def AllocBody170_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody170_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody170_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody170_9 : StackLang.HolProg 64 :=
.seq AllocBody170_7 AllocBody170_8

def AllocBody170_10 : StackLang.HolProg 64 :=
.seq AllocBody170_6 AllocBody170_9

def AllocBody170_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody170_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 190#64)

def AllocBody170_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody170_14 : StackLang.HolProg 64 :=
.seq AllocBody170_12 AllocBody170_13

def AllocBody170_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody170_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody170_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody170_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 170 3

def AllocBody170_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody170_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody170_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody170_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody170_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody170_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody170_25 : StackLang.HolProg 64 :=
.seq AllocBody170_23 AllocBody170_24

def AllocBody170_26 : StackLang.HolProg 64 :=
.seq AllocBody170_22 AllocBody170_25

def AllocBody170_27 : StackLang.HolProg 64 :=
.seq AllocBody170_21 AllocBody170_26

def AllocBody170_28 : StackLang.HolProg 64 :=
.seq AllocBody170_20 AllocBody170_27

def AllocBody170_29 : StackLang.HolProg 64 :=
.seq AllocBody170_19 AllocBody170_28

def AllocBody170_30 : StackLang.HolProg 64 :=
.seq AllocBody170_18 AllocBody170_29

def AllocBody170_31 : StackLang.HolProg 64 :=
.seq AllocBody170_17 AllocBody170_30

def AllocBody170_32 : StackLang.HolProg 64 :=
.seq AllocBody170_16 AllocBody170_31

def AllocBody170_33 : StackLang.HolProg 64 :=
.seq AllocBody170_15 AllocBody170_32

def AllocBody170_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody170_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody170_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody170_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody170_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody170_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody170_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody170_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody170_42 : StackLang.HolProg 64 :=
.seq AllocBody170_40 AllocBody170_41

def AllocBody170_43 : StackLang.HolProg 64 :=
.seq AllocBody170_39 AllocBody170_42

def AllocBody170_44 : StackLang.HolProg 64 :=
.seq AllocBody170_38 AllocBody170_43

def AllocBody170_45 : StackLang.HolProg 64 :=
.seq AllocBody170_37 AllocBody170_44

def AllocBody170_46 : StackLang.HolProg 64 :=
.seq AllocBody170_36 AllocBody170_45

def AllocBody170_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody170_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody170_49 : StackLang.HolProg 64 :=
.seq AllocBody170_47 AllocBody170_48

def AllocBody170_50 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody170_51 : StackLang.HolProg 64 :=
.seq AllocBody170_49 AllocBody170_50

def AllocBody170_52 : StackLang.HolProg 64 :=
.call (some (AllocBody170_46, 0, 170, 2)) (Sum.inl 159) (some (AllocBody170_51, 170, 3))

def AllocBody170_53 : StackLang.HolProg 64 :=
.seq AllocBody170_35 AllocBody170_52

def AllocBody170_54 : StackLang.HolProg 64 :=
.seq AllocBody170_34 AllocBody170_53

def AllocBody170_55 : StackLang.HolProg 64 :=
.seq AllocBody170_33 AllocBody170_54

def AllocBody170_56 : StackLang.HolProg 64 :=
.seq AllocBody170_14 AllocBody170_55

def AllocBody170_57 : StackLang.HolProg 64 :=
.seq AllocBody170_11 AllocBody170_56

def AllocBody170_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody170_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody170_60 : StackLang.HolProg 64 :=
.seq AllocBody170_58 AllocBody170_59

def AllocBody170_61 : StackLang.HolProg 64 :=
.seq AllocBody170_57 AllocBody170_60

def AllocBody170_62 : StackLang.HolProg 64 :=
.seq AllocBody170_10 AllocBody170_61

def AllocBody170_63 : StackLang.HolProg 64 :=
.seq AllocBody170_5 AllocBody170_62

def AllocBody170_64 : StackLang.HolProg 64 :=
.seq AllocBody170_4 AllocBody170_63

def AllocBody170_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody170_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody170_67 : StackLang.HolProg 64 :=
.seq AllocBody170_65 AllocBody170_66

def AllocBody170_68 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody170_64 AllocBody170_67

def AllocBody170_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody170_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody170_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody170_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody170_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody170_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody170_75 : StackLang.HolProg 64 :=
.seq AllocBody170_73 AllocBody170_74

def AllocBody170_76 : StackLang.HolProg 64 :=
.seq AllocBody170_72 AllocBody170_75

def AllocBody170_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody170_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody170_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody170_80 : StackLang.HolProg 64 :=
.seq AllocBody170_78 AllocBody170_79

def AllocBody170_81 : StackLang.HolProg 64 :=
.seq AllocBody170_77 AllocBody170_80

def AllocBody170_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody170_76 AllocBody170_81

def AllocBody170_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody170_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody170_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody170_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody170_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody170_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody170_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def AllocBody170_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody170_91 : StackLang.HolProg 64 :=
.seq AllocBody170_89 AllocBody170_90

def AllocBody170_92 : StackLang.HolProg 64 :=
.seq AllocBody170_88 AllocBody170_91

def AllocBody170_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody170_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody170_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody170_96 : StackLang.HolProg 64 :=
.seq AllocBody170_94 AllocBody170_95

def AllocBody170_97 : StackLang.HolProg 64 :=
.seq AllocBody170_93 AllocBody170_96

def AllocBody170_98 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody170_92 AllocBody170_97

def AllocBody170_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody170_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody170_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody170_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 21#64)

def AllocBody170_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody170_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody170_105 : StackLang.HolProg 64 :=
.seq AllocBody170_103 AllocBody170_104

def AllocBody170_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody170_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 191#64)

def AllocBody170_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody170_109 : StackLang.HolProg 64 :=
.seq AllocBody170_107 AllocBody170_108

def AllocBody170_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody170_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody170_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody170_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 170 5

def AllocBody170_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody170_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody170_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody170_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody170_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody170_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody170_120 : StackLang.HolProg 64 :=
.seq AllocBody170_118 AllocBody170_119

def AllocBody170_121 : StackLang.HolProg 64 :=
.seq AllocBody170_117 AllocBody170_120

def AllocBody170_122 : StackLang.HolProg 64 :=
.seq AllocBody170_116 AllocBody170_121

def AllocBody170_123 : StackLang.HolProg 64 :=
.seq AllocBody170_115 AllocBody170_122

def AllocBody170_124 : StackLang.HolProg 64 :=
.seq AllocBody170_114 AllocBody170_123

def AllocBody170_125 : StackLang.HolProg 64 :=
.seq AllocBody170_113 AllocBody170_124

def AllocBody170_126 : StackLang.HolProg 64 :=
.seq AllocBody170_112 AllocBody170_125

def AllocBody170_127 : StackLang.HolProg 64 :=
.seq AllocBody170_111 AllocBody170_126

def AllocBody170_128 : StackLang.HolProg 64 :=
.seq AllocBody170_110 AllocBody170_127

def AllocBody170_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody170_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody170_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody170_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody170_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody170_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody170_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody170_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody170_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody170_138 : StackLang.HolProg 64 :=
.seq AllocBody170_136 AllocBody170_137

def AllocBody170_139 : StackLang.HolProg 64 :=
.seq AllocBody170_135 AllocBody170_138

def AllocBody170_140 : StackLang.HolProg 64 :=
.seq AllocBody170_134 AllocBody170_139

def AllocBody170_141 : StackLang.HolProg 64 :=
.seq AllocBody170_133 AllocBody170_140

def AllocBody170_142 : StackLang.HolProg 64 :=
.seq AllocBody170_132 AllocBody170_141

def AllocBody170_143 : StackLang.HolProg 64 :=
.seq AllocBody170_131 AllocBody170_142

def AllocBody170_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody170_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody170_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody170_147 : StackLang.HolProg 64 :=
.seq AllocBody170_145 AllocBody170_146

def AllocBody170_148 : StackLang.HolProg 64 :=
.seq AllocBody170_144 AllocBody170_147

def AllocBody170_149 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody170_150 : StackLang.HolProg 64 :=
.seq AllocBody170_148 AllocBody170_149

def AllocBody170_151 : StackLang.HolProg 64 :=
.call (some (AllocBody170_143, 0, 170, 4)) (Sum.inl 159) (some (AllocBody170_150, 170, 5))

def AllocBody170_152 : StackLang.HolProg 64 :=
.seq AllocBody170_130 AllocBody170_151

def AllocBody170_153 : StackLang.HolProg 64 :=
.seq AllocBody170_129 AllocBody170_152

def AllocBody170_154 : StackLang.HolProg 64 :=
.seq AllocBody170_128 AllocBody170_153

def AllocBody170_155 : StackLang.HolProg 64 :=
.seq AllocBody170_109 AllocBody170_154

def AllocBody170_156 : StackLang.HolProg 64 :=
.seq AllocBody170_106 AllocBody170_155

def AllocBody170_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody170_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody170_159 : StackLang.HolProg 64 :=
.seq AllocBody170_157 AllocBody170_158

def AllocBody170_160 : StackLang.HolProg 64 :=
.seq AllocBody170_156 AllocBody170_159

def AllocBody170_161 : StackLang.HolProg 64 :=
.seq AllocBody170_105 AllocBody170_160

def AllocBody170_162 : StackLang.HolProg 64 :=
.seq AllocBody170_102 AllocBody170_161

def AllocBody170_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody170_164 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) AllocBody170_162 AllocBody170_163

def AllocBody170_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody170_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody170_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody170_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody170_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody170_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody170_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody170_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody170_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody170_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody170_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody170_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody170_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody170_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody170_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody170_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody170_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody170_182 : StackLang.HolProg 64 :=
.seq AllocBody170_180 AllocBody170_181

def AllocBody170_183 : StackLang.HolProg 64 :=
.seq AllocBody170_179 AllocBody170_182

def AllocBody170_184 : StackLang.HolProg 64 :=
.seq AllocBody170_178 AllocBody170_183

def AllocBody170_185 : StackLang.HolProg 64 :=
.seq AllocBody170_177 AllocBody170_184

def AllocBody170_186 : StackLang.HolProg 64 :=
.seq AllocBody170_176 AllocBody170_185

def AllocBody170_187 : StackLang.HolProg 64 :=
.seq AllocBody170_175 AllocBody170_186

def AllocBody170_188 : StackLang.HolProg 64 :=
.seq AllocBody170_174 AllocBody170_187

def AllocBody170_189 : StackLang.HolProg 64 :=
.seq AllocBody170_173 AllocBody170_188

def AllocBody170_190 : StackLang.HolProg 64 :=
.seq AllocBody170_172 AllocBody170_189

def AllocBody170_191 : StackLang.HolProg 64 :=
.seq AllocBody170_171 AllocBody170_190

def AllocBody170_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody170_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody170_194 : StackLang.HolProg 64 :=
.seq AllocBody170_192 AllocBody170_193

def AllocBody170_195 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody170_191 AllocBody170_194

def AllocBody170_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody170_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody170_198 : StackLang.HolProg 64 :=
.seq AllocBody170_196 AllocBody170_197

def AllocBody170_199 : StackLang.HolProg 64 :=
.seq AllocBody170_195 AllocBody170_198

def AllocBody170_200 : StackLang.HolProg 64 :=
.seq AllocBody170_170 AllocBody170_199

def AllocBody170_201 : StackLang.HolProg 64 :=
.loop AllocBody170_200

def AllocBody170_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody170_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody170_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody170_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody170_206 : StackLang.HolProg 64 :=
.seq AllocBody170_204 AllocBody170_205

def AllocBody170_207 : StackLang.HolProg 64 :=
.seq AllocBody170_203 AllocBody170_206

def AllocBody170_208 : StackLang.HolProg 64 :=
.seq AllocBody170_202 AllocBody170_207

def AllocBody170_209 : StackLang.HolProg 64 :=
.seq AllocBody170_201 AllocBody170_208

def AllocBody170_210 : StackLang.HolProg 64 :=
.seq AllocBody170_169 AllocBody170_209

def AllocBody170_211 : StackLang.HolProg 64 :=
.seq AllocBody170_168 AllocBody170_210

def AllocBody170_212 : StackLang.HolProg 64 :=
.seq AllocBody170_167 AllocBody170_211

def AllocBody170_213 : StackLang.HolProg 64 :=
.seq AllocBody170_166 AllocBody170_212

def AllocBody170_214 : StackLang.HolProg 64 :=
.seq AllocBody170_165 AllocBody170_213

def AllocBody170_215 : StackLang.HolProg 64 :=
.seq AllocBody170_164 AllocBody170_214

def AllocBody170_216 : StackLang.HolProg 64 :=
.seq AllocBody170_101 AllocBody170_215

def AllocBody170_217 : StackLang.HolProg 64 :=
.seq AllocBody170_100 AllocBody170_216

def AllocBody170_218 : StackLang.HolProg 64 :=
.seq AllocBody170_99 AllocBody170_217

def AllocBody170_219 : StackLang.HolProg 64 :=
.seq AllocBody170_98 AllocBody170_218

def AllocBody170_220 : StackLang.HolProg 64 :=
.seq AllocBody170_87 AllocBody170_219

def AllocBody170_221 : StackLang.HolProg 64 :=
.seq AllocBody170_86 AllocBody170_220

def AllocBody170_222 : StackLang.HolProg 64 :=
.seq AllocBody170_85 AllocBody170_221

def AllocBody170_223 : StackLang.HolProg 64 :=
.seq AllocBody170_84 AllocBody170_222

def AllocBody170_224 : StackLang.HolProg 64 :=
.seq AllocBody170_83 AllocBody170_223

def AllocBody170_225 : StackLang.HolProg 64 :=
.seq AllocBody170_82 AllocBody170_224

def AllocBody170_226 : StackLang.HolProg 64 :=
.seq AllocBody170_71 AllocBody170_225

def AllocBody170_227 : StackLang.HolProg 64 :=
.seq AllocBody170_70 AllocBody170_226

def AllocBody170_228 : StackLang.HolProg 64 :=
.seq AllocBody170_69 AllocBody170_227

def AllocBody170_229 : StackLang.HolProg 64 :=
.seq AllocBody170_68 AllocBody170_228

def AllocBody170_230 : StackLang.HolProg 64 :=
.seq AllocBody170_3 AllocBody170_229

def AllocBody170_231 : StackLang.HolProg 64 :=
.seq AllocBody170_2 AllocBody170_230

def AllocBody170_232 : StackLang.HolProg 64 :=
.seq AllocBody170_1 AllocBody170_231

def AllocBody170_233 : StackLang.HolProg 64 :=
.seq AllocBody170_0 AllocBody170_232

def Alloc170 : Nat × StackLang.HolProg 64 := (170, AllocBody170_233)
theorem Alloc170_eq : StackAlloc.progComp (170, raw170) = Alloc170 := by
  kernel_rfl
#print axioms Alloc170_eq
end InitECandidate.Proofs.BackendStages
