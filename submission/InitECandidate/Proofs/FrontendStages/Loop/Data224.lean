import InitECandidate.Proofs.FrontendStages.Loop.Translate208
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody224_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody224_1 : HolLoopProg 64 :=
.mark loopBody224_0

def loopBody224_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody224_3 : HolLoopProg 64 :=
.mark loopBody224_2

def loopBody224_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody224_5 : HolLoopProg 64 :=
.mark loopBody224_4

def loopBody224_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 4#64])

def loopBody224_7 : HolLoopProg 64 :=
.mark loopBody224_6

def loopBody224_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody224_9 : HolLoopProg 64 :=
.mark loopBody224_8

def loopBody224_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody224_11 : HolLoopProg 64 :=
.mark loopBody224_10

def loopBody224_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.RegImm.reg 6) loopBody224_9 loopBody224_11 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody224_13 : HolLoopProg 64 :=
.mark loopBody224_12

def loopBody224_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody224_15 : HolLoopProg 64 :=
.mark loopBody224_14

def loopBody224_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 3])

def loopBody224_17 : HolLoopProg 64 :=
.mark loopBody224_16

def loopBody224_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 4 4

def loopBody224_19 : HolLoopProg 64 :=
.mark loopBody224_18

def loopBody224_20 : HolLoopProg 64 :=
.seq loopBody224_19 loopBody224_1

def loopBody224_21 : HolLoopProg 64 :=
.mark loopBody224_20

def loopBody224_22 : HolLoopProg 64 :=
.seq loopBody224_17 loopBody224_21

def loopBody224_23 : HolLoopProg 64 :=
.mark loopBody224_22

def loopBody224_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 4)

def loopBody224_25 : HolLoopProg 64 :=
.mark loopBody224_24

def loopBody224_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 2,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 1#64)])

def loopBody224_27 : HolLoopProg 64 :=
.mark loopBody224_26

def loopBody224_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 5) (Flapjack.HolLoopExp.const 4#64))

def loopBody224_29 : HolLoopProg 64 :=
.mark loopBody224_28

def loopBody224_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 6 7

def loopBody224_31 : HolLoopProg 64 :=
.mark loopBody224_30

def loopBody224_32 : HolLoopProg 64 :=
.seq loopBody224_31 loopBody224_1

def loopBody224_33 : HolLoopProg 64 :=
.mark loopBody224_32

def loopBody224_34 : HolLoopProg 64 :=
.seq loopBody224_29 loopBody224_33

def loopBody224_35 : HolLoopProg 64 :=
.mark loopBody224_34

def loopBody224_36 : HolLoopProg 64 :=
.seq loopBody224_27 loopBody224_35

def loopBody224_37 : HolLoopProg 64 :=
.mark loopBody224_36

def loopBody224_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 2,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.const 1#64])

def loopBody224_39 : HolLoopProg 64 :=
.mark loopBody224_38

def loopBody224_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 15#64])

def loopBody224_41 : HolLoopProg 64 :=
.mark loopBody224_40

def loopBody224_42 : HolLoopProg 64 :=
.seq loopBody224_41 loopBody224_33

def loopBody224_43 : HolLoopProg 64 :=
.mark loopBody224_42

def loopBody224_44 : HolLoopProg 64 :=
.seq loopBody224_39 loopBody224_43

def loopBody224_45 : HolLoopProg 64 :=
.mark loopBody224_44

def loopBody224_46 : HolLoopProg 64 :=
.seq loopBody224_37 loopBody224_45

def loopBody224_47 : HolLoopProg 64 :=
.mark loopBody224_46

def loopBody224_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 1#64])

def loopBody224_49 : HolLoopProg 64 :=
.mark loopBody224_48

def loopBody224_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 6 6

def loopBody224_51 : HolLoopProg 64 :=
.mark loopBody224_50

def loopBody224_52 : HolLoopProg 64 :=
.seq loopBody224_51 loopBody224_1

def loopBody224_53 : HolLoopProg 64 :=
.mark loopBody224_52

def loopBody224_54 : HolLoopProg 64 :=
.seq loopBody224_49 loopBody224_53

def loopBody224_55 : HolLoopProg 64 :=
.mark loopBody224_54

def loopBody224_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 6)

def loopBody224_57 : HolLoopProg 64 :=
.mark loopBody224_56

def loopBody224_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 2,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.const 2#64])

def loopBody224_59 : HolLoopProg 64 :=
.mark loopBody224_58

def loopBody224_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 7) (Flapjack.HolLoopExp.const 4#64))

def loopBody224_61 : HolLoopProg 64 :=
.mark loopBody224_60

def loopBody224_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 8 9

def loopBody224_63 : HolLoopProg 64 :=
.mark loopBody224_62

def loopBody224_64 : HolLoopProg 64 :=
.seq loopBody224_63 loopBody224_1

def loopBody224_65 : HolLoopProg 64 :=
.mark loopBody224_64

def loopBody224_66 : HolLoopProg 64 :=
.seq loopBody224_61 loopBody224_65

def loopBody224_67 : HolLoopProg 64 :=
.mark loopBody224_66

def loopBody224_68 : HolLoopProg 64 :=
.seq loopBody224_59 loopBody224_67

def loopBody224_69 : HolLoopProg 64 :=
.mark loopBody224_68

def loopBody224_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 2,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.const 3#64])

def loopBody224_71 : HolLoopProg 64 :=
.mark loopBody224_70

def loopBody224_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.const 15#64])

def loopBody224_73 : HolLoopProg 64 :=
.mark loopBody224_72

def loopBody224_74 : HolLoopProg 64 :=
.seq loopBody224_73 loopBody224_65

def loopBody224_75 : HolLoopProg 64 :=
.mark loopBody224_74

def loopBody224_76 : HolLoopProg 64 :=
.seq loopBody224_71 loopBody224_75

def loopBody224_77 : HolLoopProg 64 :=
.mark loopBody224_76

def loopBody224_78 : HolLoopProg 64 :=
.seq loopBody224_69 loopBody224_77

def loopBody224_79 : HolLoopProg 64 :=
.mark loopBody224_78

def loopBody224_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 2#64])

def loopBody224_81 : HolLoopProg 64 :=
.mark loopBody224_80

def loopBody224_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 8 8

def loopBody224_83 : HolLoopProg 64 :=
.mark loopBody224_82

def loopBody224_84 : HolLoopProg 64 :=
.seq loopBody224_83 loopBody224_1

def loopBody224_85 : HolLoopProg 64 :=
.mark loopBody224_84

def loopBody224_86 : HolLoopProg 64 :=
.seq loopBody224_81 loopBody224_85

def loopBody224_87 : HolLoopProg 64 :=
.mark loopBody224_86

def loopBody224_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 8)

def loopBody224_89 : HolLoopProg 64 :=
.mark loopBody224_88

def loopBody224_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 2,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.const 4#64])

def loopBody224_91 : HolLoopProg 64 :=
.mark loopBody224_90

def loopBody224_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 9) (Flapjack.HolLoopExp.const 4#64))

def loopBody224_93 : HolLoopProg 64 :=
.mark loopBody224_92

def loopBody224_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 10 11

def loopBody224_95 : HolLoopProg 64 :=
.mark loopBody224_94

def loopBody224_96 : HolLoopProg 64 :=
.seq loopBody224_95 loopBody224_1

def loopBody224_97 : HolLoopProg 64 :=
.mark loopBody224_96

def loopBody224_98 : HolLoopProg 64 :=
.seq loopBody224_93 loopBody224_97

def loopBody224_99 : HolLoopProg 64 :=
.mark loopBody224_98

def loopBody224_100 : HolLoopProg 64 :=
.seq loopBody224_91 loopBody224_99

def loopBody224_101 : HolLoopProg 64 :=
.mark loopBody224_100

def loopBody224_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 2,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.const 5#64])

def loopBody224_103 : HolLoopProg 64 :=
.mark loopBody224_102

def loopBody224_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 9, Flapjack.HolLoopExp.const 15#64])

def loopBody224_105 : HolLoopProg 64 :=
.mark loopBody224_104

def loopBody224_106 : HolLoopProg 64 :=
.seq loopBody224_105 loopBody224_97

def loopBody224_107 : HolLoopProg 64 :=
.mark loopBody224_106

def loopBody224_108 : HolLoopProg 64 :=
.seq loopBody224_103 loopBody224_107

def loopBody224_109 : HolLoopProg 64 :=
.mark loopBody224_108

def loopBody224_110 : HolLoopProg 64 :=
.seq loopBody224_101 loopBody224_109

def loopBody224_111 : HolLoopProg 64 :=
.mark loopBody224_110

def loopBody224_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 3#64])

def loopBody224_113 : HolLoopProg 64 :=
.mark loopBody224_112

def loopBody224_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 10 10

def loopBody224_115 : HolLoopProg 64 :=
.mark loopBody224_114

def loopBody224_116 : HolLoopProg 64 :=
.seq loopBody224_115 loopBody224_1

def loopBody224_117 : HolLoopProg 64 :=
.mark loopBody224_116

def loopBody224_118 : HolLoopProg 64 :=
.seq loopBody224_113 loopBody224_117

def loopBody224_119 : HolLoopProg 64 :=
.mark loopBody224_118

def loopBody224_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 10)

def loopBody224_121 : HolLoopProg 64 :=
.mark loopBody224_120

def loopBody224_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 2,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.const 6#64])

def loopBody224_123 : HolLoopProg 64 :=
.mark loopBody224_122

def loopBody224_124 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 11) (Flapjack.HolLoopExp.const 4#64))

def loopBody224_125 : HolLoopProg 64 :=
.mark loopBody224_124

def loopBody224_126 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 12 13

def loopBody224_127 : HolLoopProg 64 :=
.mark loopBody224_126

def loopBody224_128 : HolLoopProg 64 :=
.seq loopBody224_127 loopBody224_1

def loopBody224_129 : HolLoopProg 64 :=
.mark loopBody224_128

def loopBody224_130 : HolLoopProg 64 :=
.seq loopBody224_125 loopBody224_129

def loopBody224_131 : HolLoopProg 64 :=
.mark loopBody224_130

def loopBody224_132 : HolLoopProg 64 :=
.seq loopBody224_123 loopBody224_131

def loopBody224_133 : HolLoopProg 64 :=
.mark loopBody224_132

def loopBody224_134 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 2,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.const 7#64])

def loopBody224_135 : HolLoopProg 64 :=
.mark loopBody224_134

def loopBody224_136 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 11, Flapjack.HolLoopExp.const 15#64])

def loopBody224_137 : HolLoopProg 64 :=
.mark loopBody224_136

def loopBody224_138 : HolLoopProg 64 :=
.seq loopBody224_137 loopBody224_129

def loopBody224_139 : HolLoopProg 64 :=
.mark loopBody224_138

def loopBody224_140 : HolLoopProg 64 :=
.seq loopBody224_135 loopBody224_139

def loopBody224_141 : HolLoopProg 64 :=
.mark loopBody224_140

def loopBody224_142 : HolLoopProg 64 :=
.seq loopBody224_133 loopBody224_141

def loopBody224_143 : HolLoopProg 64 :=
.mark loopBody224_142

def loopBody224_144 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 4#64])

def loopBody224_145 : HolLoopProg 64 :=
.mark loopBody224_144

def loopBody224_146 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 12)

def loopBody224_147 : HolLoopProg 64 :=
.mark loopBody224_146

def loopBody224_148 : HolLoopProg 64 :=
.seq loopBody224_147 loopBody224_1

def loopBody224_149 : HolLoopProg 64 :=
.mark loopBody224_148

def loopBody224_150 : HolLoopProg 64 :=
.seq loopBody224_149 loopBody224_1

def loopBody224_151 : HolLoopProg 64 :=
.mark loopBody224_150

def loopBody224_152 : HolLoopProg 64 :=
.seq loopBody224_145 loopBody224_151

def loopBody224_153 : HolLoopProg 64 :=
.mark loopBody224_152

def loopBody224_154 : HolLoopProg 64 :=
.seq loopBody224_1 loopBody224_153

def loopBody224_155 : HolLoopProg 64 :=
.mark loopBody224_154

def loopBody224_156 : HolLoopProg 64 :=
.seq loopBody224_143 loopBody224_155

def loopBody224_157 : HolLoopProg 64 :=
.mark loopBody224_156

def loopBody224_158 : HolLoopProg 64 :=
.seq loopBody224_121 loopBody224_157

def loopBody224_159 : HolLoopProg 64 :=
.mark loopBody224_158

def loopBody224_160 : HolLoopProg 64 :=
.seq loopBody224_119 loopBody224_159

def loopBody224_161 : HolLoopProg 64 :=
.mark loopBody224_160

def loopBody224_162 : HolLoopProg 64 :=
.seq loopBody224_111 loopBody224_161

def loopBody224_163 : HolLoopProg 64 :=
.mark loopBody224_162

def loopBody224_164 : HolLoopProg 64 :=
.seq loopBody224_89 loopBody224_163

def loopBody224_165 : HolLoopProg 64 :=
.mark loopBody224_164

def loopBody224_166 : HolLoopProg 64 :=
.seq loopBody224_87 loopBody224_165

def loopBody224_167 : HolLoopProg 64 :=
.mark loopBody224_166

def loopBody224_168 : HolLoopProg 64 :=
.seq loopBody224_79 loopBody224_167

def loopBody224_169 : HolLoopProg 64 :=
.mark loopBody224_168

def loopBody224_170 : HolLoopProg 64 :=
.seq loopBody224_57 loopBody224_169

def loopBody224_171 : HolLoopProg 64 :=
.mark loopBody224_170

def loopBody224_172 : HolLoopProg 64 :=
.seq loopBody224_55 loopBody224_171

def loopBody224_173 : HolLoopProg 64 :=
.mark loopBody224_172

def loopBody224_174 : HolLoopProg 64 :=
.seq loopBody224_47 loopBody224_173

def loopBody224_175 : HolLoopProg 64 :=
.mark loopBody224_174

def loopBody224_176 : HolLoopProg 64 :=
.seq loopBody224_25 loopBody224_175

def loopBody224_177 : HolLoopProg 64 :=
.mark loopBody224_176

def loopBody224_178 : HolLoopProg 64 :=
.seq loopBody224_23 loopBody224_177

def loopBody224_179 : HolLoopProg 64 :=
.mark loopBody224_178

def loopBody224_180 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody224_181 : HolLoopProg 64 :=
.mark loopBody224_180

def loopBody224_182 : HolLoopProg 64 :=
.seq loopBody224_179 loopBody224_181

def loopBody224_183 : HolLoopProg 64 :=
.mark loopBody224_182

def loopBody224_184 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody224_185 : HolLoopProg 64 :=
.mark loopBody224_184

def loopBody224_186 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody224_183 loopBody224_185 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody224_187 : HolLoopProg 64 :=
.mark loopBody224_186

def loopBody224_188 : HolLoopProg 64 :=
.seq loopBody224_187 loopBody224_1

def loopBody224_189 : HolLoopProg 64 :=
.mark loopBody224_188

def loopBody224_190 : HolLoopProg 64 :=
.seq loopBody224_15 loopBody224_189

def loopBody224_191 : HolLoopProg 64 :=
.mark loopBody224_190

def loopBody224_192 : HolLoopProg 64 :=
.seq loopBody224_13 loopBody224_191

def loopBody224_193 : HolLoopProg 64 :=
.mark loopBody224_192

def loopBody224_194 : HolLoopProg 64 :=
.seq loopBody224_7 loopBody224_193

def loopBody224_195 : HolLoopProg 64 :=
.mark loopBody224_194

def loopBody224_196 : HolLoopProg 64 :=
.seq loopBody224_5 loopBody224_195

def loopBody224_197 : HolLoopProg 64 :=
.mark loopBody224_196

def loopBody224_198 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody224_197 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody224_199 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody224_200 : HolLoopProg 64 :=
.mark loopBody224_199

def loopBody224_201 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody224_202 : HolLoopProg 64 :=
.mark loopBody224_201

def loopBody224_203 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.RegImm.reg 6) loopBody224_9 loopBody224_11 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody224_204 : HolLoopProg 64 :=
.mark loopBody224_203

def loopBody224_205 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 1#64])

def loopBody224_206 : HolLoopProg 64 :=
.mark loopBody224_205

def loopBody224_207 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 6)

def loopBody224_208 : HolLoopProg 64 :=
.mark loopBody224_207

def loopBody224_209 : HolLoopProg 64 :=
.seq loopBody224_208 loopBody224_1

def loopBody224_210 : HolLoopProg 64 :=
.mark loopBody224_209

def loopBody224_211 : HolLoopProg 64 :=
.seq loopBody224_210 loopBody224_1

def loopBody224_212 : HolLoopProg 64 :=
.mark loopBody224_211

def loopBody224_213 : HolLoopProg 64 :=
.seq loopBody224_206 loopBody224_212

def loopBody224_214 : HolLoopProg 64 :=
.mark loopBody224_213

def loopBody224_215 : HolLoopProg 64 :=
.seq loopBody224_1 loopBody224_214

def loopBody224_216 : HolLoopProg 64 :=
.mark loopBody224_215

def loopBody224_217 : HolLoopProg 64 :=
.seq loopBody224_47 loopBody224_216

def loopBody224_218 : HolLoopProg 64 :=
.mark loopBody224_217

def loopBody224_219 : HolLoopProg 64 :=
.seq loopBody224_25 loopBody224_218

def loopBody224_220 : HolLoopProg 64 :=
.mark loopBody224_219

def loopBody224_221 : HolLoopProg 64 :=
.seq loopBody224_23 loopBody224_220

def loopBody224_222 : HolLoopProg 64 :=
.mark loopBody224_221

def loopBody224_223 : HolLoopProg 64 :=
.seq loopBody224_222 loopBody224_181

def loopBody224_224 : HolLoopProg 64 :=
.mark loopBody224_223

def loopBody224_225 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody224_224 loopBody224_185 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody224_226 : HolLoopProg 64 :=
.mark loopBody224_225

def loopBody224_227 : HolLoopProg 64 :=
.seq loopBody224_226 loopBody224_1

def loopBody224_228 : HolLoopProg 64 :=
.mark loopBody224_227

def loopBody224_229 : HolLoopProg 64 :=
.seq loopBody224_15 loopBody224_228

def loopBody224_230 : HolLoopProg 64 :=
.mark loopBody224_229

def loopBody224_231 : HolLoopProg 64 :=
.seq loopBody224_204 loopBody224_230

def loopBody224_232 : HolLoopProg 64 :=
.mark loopBody224_231

def loopBody224_233 : HolLoopProg 64 :=
.seq loopBody224_202 loopBody224_232

def loopBody224_234 : HolLoopProg 64 :=
.mark loopBody224_233

def loopBody224_235 : HolLoopProg 64 :=
.seq loopBody224_200 loopBody224_234

def loopBody224_236 : HolLoopProg 64 :=
.mark loopBody224_235

def loopBody224_237 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody224_236 (Flapjack.Spt.ln)

def loopBody224_238 : HolLoopProg 64 :=
.seq loopBody224_198 loopBody224_237

def loopBody224_239 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody224_240 : HolLoopProg 64 :=
.mark loopBody224_239

def loopBody224_241 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody224_242 : HolLoopProg 64 :=
.mark loopBody224_241

def loopBody224_243 : HolLoopProg 64 :=
.seq loopBody224_242 loopBody224_1

def loopBody224_244 : HolLoopProg 64 :=
.mark loopBody224_243

def loopBody224_245 : HolLoopProg 64 :=
.seq loopBody224_240 loopBody224_244

def loopBody224_246 : HolLoopProg 64 :=
.mark loopBody224_245

def loopBody224_247 : HolLoopProg 64 :=
.seq loopBody224_238 loopBody224_246

def loopBody224_248 : HolLoopProg 64 :=
.seq loopBody224_3 loopBody224_247

def loopBody224_249 : HolLoopProg 64 :=
.seq loopBody224_1 loopBody224_248

def output224 : Nat × List Nat × HolLoopProg 64 :=
  (288, [0, 1, 2], loopBody224_249)
end InitECandidate.Proofs.FrontendStages.Loop
