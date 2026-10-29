import InitECandidate.Proofs.FrontendStages.Loop.Translate758
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody774_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody774_1 : HolLoopProg 64 :=
.mark loopBody774_0

def loopBody774_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody774_3 : HolLoopProg 64 :=
.mark loopBody774_2

def loopBody774_4 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 69) ([]) (some (4, loopBody774_3, loopBody774_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody774_5 : HolLoopProg 64 :=
.mark loopBody774_4

def loopBody774_6 : HolLoopProg 64 :=
.seq loopBody774_5 loopBody774_1

def loopBody774_7 : HolLoopProg 64 :=
.mark loopBody774_6

def loopBody774_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 32#64)

def loopBody774_9 : HolLoopProg 64 :=
.mark loopBody774_8

def loopBody774_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody774_11 : HolLoopProg 64 :=
.mark loopBody774_10

def loopBody774_12 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([5]) (some (5, loopBody774_11, loopBody774_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody774_13 : HolLoopProg 64 :=
.mark loopBody774_12

def loopBody774_14 : HolLoopProg 64 :=
.seq loopBody774_13 loopBody774_1

def loopBody774_15 : HolLoopProg 64 :=
.mark loopBody774_14

def loopBody774_16 : HolLoopProg 64 :=
.seq loopBody774_9 loopBody774_15

def loopBody774_17 : HolLoopProg 64 :=
.mark loopBody774_16

def loopBody774_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody774_19 : HolLoopProg 64 :=
.mark loopBody774_18

def loopBody774_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody774_21 : HolLoopProg 64 :=
.mark loopBody774_20

def loopBody774_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 4)

def loopBody774_23 : HolLoopProg 64 :=
.mark loopBody774_22

def loopBody774_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody774_25 : HolLoopProg 64 :=
.mark loopBody774_24

def loopBody774_26 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 158) ([6, 7, 8]) (some (6, loopBody774_25, loopBody774_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody774_27 : HolLoopProg 64 :=
.mark loopBody774_26

def loopBody774_28 : HolLoopProg 64 :=
.seq loopBody774_27 loopBody774_1

def loopBody774_29 : HolLoopProg 64 :=
.mark loopBody774_28

def loopBody774_30 : HolLoopProg 64 :=
.seq loopBody774_23 loopBody774_29

def loopBody774_31 : HolLoopProg 64 :=
.mark loopBody774_30

def loopBody774_32 : HolLoopProg 64 :=
.seq loopBody774_21 loopBody774_31

def loopBody774_33 : HolLoopProg 64 :=
.mark loopBody774_32

def loopBody774_34 : HolLoopProg 64 :=
.seq loopBody774_19 loopBody774_33

def loopBody774_35 : HolLoopProg 64 :=
.mark loopBody774_34

def loopBody774_36 : HolLoopProg 64 :=
.seq loopBody774_1 loopBody774_35

def loopBody774_37 : HolLoopProg 64 :=
.mark loopBody774_36

def loopBody774_38 : HolLoopProg 64 :=
.seq loopBody774_1 loopBody774_37

def loopBody774_39 : HolLoopProg 64 :=
.mark loopBody774_38

def loopBody774_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody774_41 : HolLoopProg 64 :=
.mark loopBody774_40

def loopBody774_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody774_43 : HolLoopProg 64 :=
.mark loopBody774_42

def loopBody774_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 6#64)

def loopBody774_45 : HolLoopProg 64 :=
.mark loopBody774_44

def loopBody774_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody774_47 : HolLoopProg 64 :=
.mark loopBody774_46

def loopBody774_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody774_49 : HolLoopProg 64 :=
.mark loopBody774_48

def loopBody774_50 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.less) 7 (Flapjack.RegImm.reg 8) loopBody774_47 loopBody774_49 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody774_51 : HolLoopProg 64 :=
.mark loopBody774_50

def loopBody774_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody774_53 : HolLoopProg 64 :=
.mark loopBody774_52

def loopBody774_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.var 5])

def loopBody774_55 : HolLoopProg 64 :=
.mark loopBody774_54

def loopBody774_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 6 6

def loopBody774_57 : HolLoopProg 64 :=
.mark loopBody774_56

def loopBody774_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 1#64])

def loopBody774_59 : HolLoopProg 64 :=
.mark loopBody774_58

def loopBody774_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 7 7

def loopBody774_61 : HolLoopProg 64 :=
.mark loopBody774_60

def loopBody774_62 : HolLoopProg 64 :=
.seq loopBody774_61 loopBody774_1

def loopBody774_63 : HolLoopProg 64 :=
.mark loopBody774_62

def loopBody774_64 : HolLoopProg 64 :=
.seq loopBody774_59 loopBody774_63

def loopBody774_65 : HolLoopProg 64 :=
.mark loopBody774_64

def loopBody774_66 : HolLoopProg 64 :=
.seq loopBody774_57 loopBody774_65

def loopBody774_67 : HolLoopProg 64 :=
.mark loopBody774_66

def loopBody774_68 : HolLoopProg 64 :=
.seq loopBody774_55 loopBody774_67

def loopBody774_69 : HolLoopProg 64 :=
.mark loopBody774_68

def loopBody774_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and
    [Flapjack.HolLoopExp.op Flapjack.BinOp.or
        [Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 6) (Flapjack.HolLoopExp.const 8#64),
          Flapjack.HolLoopExp.var 7],
      Flapjack.HolLoopExp.const 2047#64])

def loopBody774_71 : HolLoopProg 64 :=
.mark loopBody774_70

def loopBody774_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 2047#64, Flapjack.HolLoopExp.var 8])

def loopBody774_73 : HolLoopProg 64 :=
.mark loopBody774_72

def loopBody774_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 9) (Flapjack.HolLoopExp.const 3#64))

def loopBody774_75 : HolLoopProg 64 :=
.mark loopBody774_74

def loopBody774_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.const 1#64)
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
      [Flapjack.HolLoopExp.const 7#64,
        Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 9, Flapjack.HolLoopExp.const 7#64]]))

def loopBody774_77 : HolLoopProg 64 :=
.mark loopBody774_76

def loopBody774_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 10])

def loopBody774_79 : HolLoopProg 64 :=
.mark loopBody774_78

def loopBody774_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 12 12

def loopBody774_81 : HolLoopProg 64 :=
.mark loopBody774_80

def loopBody774_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 10])

def loopBody774_83 : HolLoopProg 64 :=
.mark loopBody774_82

def loopBody774_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or [Flapjack.HolLoopExp.var 12, Flapjack.HolLoopExp.var 11])

def loopBody774_85 : HolLoopProg 64 :=
.mark loopBody774_84

def loopBody774_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 13 14

def loopBody774_87 : HolLoopProg 64 :=
.mark loopBody774_86

def loopBody774_88 : HolLoopProg 64 :=
.seq loopBody774_87 loopBody774_1

def loopBody774_89 : HolLoopProg 64 :=
.mark loopBody774_88

def loopBody774_90 : HolLoopProg 64 :=
.seq loopBody774_85 loopBody774_89

def loopBody774_91 : HolLoopProg 64 :=
.mark loopBody774_90

def loopBody774_92 : HolLoopProg 64 :=
.seq loopBody774_83 loopBody774_91

def loopBody774_93 : HolLoopProg 64 :=
.mark loopBody774_92

def loopBody774_94 : HolLoopProg 64 :=
.seq loopBody774_81 loopBody774_93

def loopBody774_95 : HolLoopProg 64 :=
.mark loopBody774_94

def loopBody774_96 : HolLoopProg 64 :=
.seq loopBody774_79 loopBody774_95

def loopBody774_97 : HolLoopProg 64 :=
.mark loopBody774_96

def loopBody774_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 2#64])

def loopBody774_99 : HolLoopProg 64 :=
.mark loopBody774_98

def loopBody774_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 12)

def loopBody774_101 : HolLoopProg 64 :=
.mark loopBody774_100

def loopBody774_102 : HolLoopProg 64 :=
.seq loopBody774_101 loopBody774_1

def loopBody774_103 : HolLoopProg 64 :=
.mark loopBody774_102

def loopBody774_104 : HolLoopProg 64 :=
.seq loopBody774_103 loopBody774_1

def loopBody774_105 : HolLoopProg 64 :=
.mark loopBody774_104

def loopBody774_106 : HolLoopProg 64 :=
.seq loopBody774_99 loopBody774_105

def loopBody774_107 : HolLoopProg 64 :=
.mark loopBody774_106

def loopBody774_108 : HolLoopProg 64 :=
.seq loopBody774_1 loopBody774_107

def loopBody774_109 : HolLoopProg 64 :=
.mark loopBody774_108

def loopBody774_110 : HolLoopProg 64 :=
.seq loopBody774_97 loopBody774_109

def loopBody774_111 : HolLoopProg 64 :=
.mark loopBody774_110

def loopBody774_112 : HolLoopProg 64 :=
.seq loopBody774_77 loopBody774_111

def loopBody774_113 : HolLoopProg 64 :=
.mark loopBody774_112

def loopBody774_114 : HolLoopProg 64 :=
.seq loopBody774_1 loopBody774_113

def loopBody774_115 : HolLoopProg 64 :=
.mark loopBody774_114

def loopBody774_116 : HolLoopProg 64 :=
.seq loopBody774_75 loopBody774_115

def loopBody774_117 : HolLoopProg 64 :=
.mark loopBody774_116

def loopBody774_118 : HolLoopProg 64 :=
.seq loopBody774_1 loopBody774_117

def loopBody774_119 : HolLoopProg 64 :=
.mark loopBody774_118

def loopBody774_120 : HolLoopProg 64 :=
.seq loopBody774_73 loopBody774_119

def loopBody774_121 : HolLoopProg 64 :=
.mark loopBody774_120

def loopBody774_122 : HolLoopProg 64 :=
.seq loopBody774_1 loopBody774_121

def loopBody774_123 : HolLoopProg 64 :=
.mark loopBody774_122

def loopBody774_124 : HolLoopProg 64 :=
.seq loopBody774_71 loopBody774_123

def loopBody774_125 : HolLoopProg 64 :=
.mark loopBody774_124

def loopBody774_126 : HolLoopProg 64 :=
.seq loopBody774_69 loopBody774_125

def loopBody774_127 : HolLoopProg 64 :=
.mark loopBody774_126

def loopBody774_128 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody774_129 : HolLoopProg 64 :=
.mark loopBody774_128

def loopBody774_130 : HolLoopProg 64 :=
.seq loopBody774_127 loopBody774_129

def loopBody774_131 : HolLoopProg 64 :=
.mark loopBody774_130

def loopBody774_132 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody774_133 : HolLoopProg 64 :=
.mark loopBody774_132

def loopBody774_134 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody774_131 loopBody774_133 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody774_135 : HolLoopProg 64 :=
.mark loopBody774_134

def loopBody774_136 : HolLoopProg 64 :=
.seq loopBody774_135 loopBody774_1

def loopBody774_137 : HolLoopProg 64 :=
.mark loopBody774_136

def loopBody774_138 : HolLoopProg 64 :=
.seq loopBody774_53 loopBody774_137

def loopBody774_139 : HolLoopProg 64 :=
.mark loopBody774_138

def loopBody774_140 : HolLoopProg 64 :=
.seq loopBody774_51 loopBody774_139

def loopBody774_141 : HolLoopProg 64 :=
.mark loopBody774_140

def loopBody774_142 : HolLoopProg 64 :=
.seq loopBody774_45 loopBody774_141

def loopBody774_143 : HolLoopProg 64 :=
.mark loopBody774_142

def loopBody774_144 : HolLoopProg 64 :=
.seq loopBody774_43 loopBody774_143

def loopBody774_145 : HolLoopProg 64 :=
.mark loopBody774_144

def loopBody774_146 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody774_145 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody774_147 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody774_148 : HolLoopProg 64 :=
.mark loopBody774_147

def loopBody774_149 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody774_150 : HolLoopProg 64 :=
.mark loopBody774_149

def loopBody774_151 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.ln)) (some 70) ([7]) (some (7, loopBody774_150, loopBody774_1, (Flapjack.Spt.ln)))

def loopBody774_152 : HolLoopProg 64 :=
.mark loopBody774_151

def loopBody774_153 : HolLoopProg 64 :=
.seq loopBody774_152 loopBody774_1

def loopBody774_154 : HolLoopProg 64 :=
.mark loopBody774_153

def loopBody774_155 : HolLoopProg 64 :=
.seq loopBody774_148 loopBody774_154

def loopBody774_156 : HolLoopProg 64 :=
.mark loopBody774_155

def loopBody774_157 : HolLoopProg 64 :=
.seq loopBody774_1 loopBody774_156

def loopBody774_158 : HolLoopProg 64 :=
.mark loopBody774_157

def loopBody774_159 : HolLoopProg 64 :=
.seq loopBody774_1 loopBody774_158

def loopBody774_160 : HolLoopProg 64 :=
.mark loopBody774_159

def loopBody774_161 : HolLoopProg 64 :=
.seq loopBody774_146 loopBody774_160

def loopBody774_162 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody774_163 : HolLoopProg 64 :=
.mark loopBody774_162

def loopBody774_164 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody774_165 : HolLoopProg 64 :=
.mark loopBody774_164

def loopBody774_166 : HolLoopProg 64 :=
.seq loopBody774_165 loopBody774_1

def loopBody774_167 : HolLoopProg 64 :=
.mark loopBody774_166

def loopBody774_168 : HolLoopProg 64 :=
.seq loopBody774_163 loopBody774_167

def loopBody774_169 : HolLoopProg 64 :=
.mark loopBody774_168

def loopBody774_170 : HolLoopProg 64 :=
.seq loopBody774_161 loopBody774_169

def loopBody774_171 : HolLoopProg 64 :=
.seq loopBody774_41 loopBody774_170

def loopBody774_172 : HolLoopProg 64 :=
.seq loopBody774_1 loopBody774_171

def loopBody774_173 : HolLoopProg 64 :=
.seq loopBody774_39 loopBody774_172

def loopBody774_174 : HolLoopProg 64 :=
.seq loopBody774_17 loopBody774_173

def loopBody774_175 : HolLoopProg 64 :=
.seq loopBody774_1 loopBody774_174

def loopBody774_176 : HolLoopProg 64 :=
.seq loopBody774_1 loopBody774_175

def loopBody774_177 : HolLoopProg 64 :=
.seq loopBody774_7 loopBody774_176

def loopBody774_178 : HolLoopProg 64 :=
.seq loopBody774_1 loopBody774_177

def loopBody774_179 : HolLoopProg 64 :=
.seq loopBody774_1 loopBody774_178

def output774 : Nat × List Nat × HolLoopProg 64 :=
  (838, [0, 1, 2], loopBody774_179)
end InitECandidate.Proofs.FrontendStages.Loop
