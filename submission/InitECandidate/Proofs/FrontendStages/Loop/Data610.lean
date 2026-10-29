import InitECandidate.Proofs.FrontendStages.Loop.Translate594
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody610_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody610_1 : HolLoopProg 64 :=
.mark loopBody610_0

def loopBody610_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody610_3 : HolLoopProg 64 :=
.mark loopBody610_2

def loopBody610_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody610_5 : HolLoopProg 64 :=
.mark loopBody610_4

def loopBody610_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody610_7 : HolLoopProg 64 :=
.mark loopBody610_6

def loopBody610_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody610_9 : HolLoopProg 64 :=
.mark loopBody610_8

def loopBody610_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody610_11 : HolLoopProg 64 :=
.mark loopBody610_10

def loopBody610_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.RegImm.reg 6) loopBody610_9 loopBody610_11 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody610_13 : HolLoopProg 64 :=
.mark loopBody610_12

def loopBody610_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody610_15 : HolLoopProg 64 :=
.mark loopBody610_14

def loopBody610_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 2,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 5#64)]))

def loopBody610_17 : HolLoopProg 64 :=
.mark loopBody610_16

def loopBody610_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.var 2,
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 5#64)],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody610_19 : HolLoopProg 64 :=
.mark loopBody610_18

def loopBody610_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.var 2,
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 5#64)],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody610_21 : HolLoopProg 64 :=
.mark loopBody610_20

def loopBody610_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.var 2,
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 5#64)],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody610_23 : HolLoopProg 64 :=
.mark loopBody610_22

def loopBody610_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 4)

def loopBody610_25 : HolLoopProg 64 :=
.mark loopBody610_24

def loopBody610_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 5)

def loopBody610_27 : HolLoopProg 64 :=
.mark loopBody610_26

def loopBody610_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 6)

def loopBody610_29 : HolLoopProg 64 :=
.mark loopBody610_28

def loopBody610_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 7)

def loopBody610_31 : HolLoopProg 64 :=
.mark loopBody610_30

def loopBody610_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 12

def loopBody610_33 : HolLoopProg 64 :=
.mark loopBody610_32

def loopBody610_34 : HolLoopProg 64 :=
.call (some
  ([8, 9, 10, 11],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 660) ([12, 13, 14, 15]) (some (12, loopBody610_33, loopBody610_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))))

def loopBody610_35 : HolLoopProg 64 :=
.mark loopBody610_34

def loopBody610_36 : HolLoopProg 64 :=
.seq loopBody610_35 loopBody610_1

def loopBody610_37 : HolLoopProg 64 :=
.mark loopBody610_36

def loopBody610_38 : HolLoopProg 64 :=
.seq loopBody610_31 loopBody610_37

def loopBody610_39 : HolLoopProg 64 :=
.mark loopBody610_38

def loopBody610_40 : HolLoopProg 64 :=
.seq loopBody610_29 loopBody610_39

def loopBody610_41 : HolLoopProg 64 :=
.mark loopBody610_40

def loopBody610_42 : HolLoopProg 64 :=
.seq loopBody610_27 loopBody610_41

def loopBody610_43 : HolLoopProg 64 :=
.mark loopBody610_42

def loopBody610_44 : HolLoopProg 64 :=
.seq loopBody610_25 loopBody610_43

def loopBody610_45 : HolLoopProg 64 :=
.mark loopBody610_44

def loopBody610_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 1,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 5#64)])

def loopBody610_47 : HolLoopProg 64 :=
.mark loopBody610_46

def loopBody610_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 8)

def loopBody610_49 : HolLoopProg 64 :=
.mark loopBody610_48

def loopBody610_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 9)

def loopBody610_51 : HolLoopProg 64 :=
.mark loopBody610_50

def loopBody610_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 10)

def loopBody610_53 : HolLoopProg 64 :=
.mark loopBody610_52

def loopBody610_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 11)

def loopBody610_55 : HolLoopProg 64 :=
.mark loopBody610_54

def loopBody610_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 13)

def loopBody610_57 : HolLoopProg 64 :=
.mark loopBody610_56

def loopBody610_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 12) 17

def loopBody610_59 : HolLoopProg 64 :=
.mark loopBody610_58

def loopBody610_60 : HolLoopProg 64 :=
.seq loopBody610_59 loopBody610_1

def loopBody610_61 : HolLoopProg 64 :=
.mark loopBody610_60

def loopBody610_62 : HolLoopProg 64 :=
.seq loopBody610_57 loopBody610_61

def loopBody610_63 : HolLoopProg 64 :=
.mark loopBody610_62

def loopBody610_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 14)

def loopBody610_65 : HolLoopProg 64 :=
.mark loopBody610_64

def loopBody610_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 12, Flapjack.HolLoopExp.const 8#64]) 17

def loopBody610_67 : HolLoopProg 64 :=
.mark loopBody610_66

def loopBody610_68 : HolLoopProg 64 :=
.seq loopBody610_67 loopBody610_1

def loopBody610_69 : HolLoopProg 64 :=
.mark loopBody610_68

def loopBody610_70 : HolLoopProg 64 :=
.seq loopBody610_65 loopBody610_69

def loopBody610_71 : HolLoopProg 64 :=
.mark loopBody610_70

def loopBody610_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 15)

def loopBody610_73 : HolLoopProg 64 :=
.mark loopBody610_72

def loopBody610_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 12, Flapjack.HolLoopExp.const 16#64]) 17

def loopBody610_75 : HolLoopProg 64 :=
.mark loopBody610_74

def loopBody610_76 : HolLoopProg 64 :=
.seq loopBody610_75 loopBody610_1

def loopBody610_77 : HolLoopProg 64 :=
.mark loopBody610_76

def loopBody610_78 : HolLoopProg 64 :=
.seq loopBody610_73 loopBody610_77

def loopBody610_79 : HolLoopProg 64 :=
.mark loopBody610_78

def loopBody610_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 16)

def loopBody610_81 : HolLoopProg 64 :=
.mark loopBody610_80

def loopBody610_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 12, Flapjack.HolLoopExp.const 24#64]) 17

def loopBody610_83 : HolLoopProg 64 :=
.mark loopBody610_82

def loopBody610_84 : HolLoopProg 64 :=
.seq loopBody610_83 loopBody610_1

def loopBody610_85 : HolLoopProg 64 :=
.mark loopBody610_84

def loopBody610_86 : HolLoopProg 64 :=
.seq loopBody610_81 loopBody610_85

def loopBody610_87 : HolLoopProg 64 :=
.mark loopBody610_86

def loopBody610_88 : HolLoopProg 64 :=
.seq loopBody610_87 loopBody610_1

def loopBody610_89 : HolLoopProg 64 :=
.mark loopBody610_88

def loopBody610_90 : HolLoopProg 64 :=
.seq loopBody610_79 loopBody610_89

def loopBody610_91 : HolLoopProg 64 :=
.mark loopBody610_90

def loopBody610_92 : HolLoopProg 64 :=
.seq loopBody610_71 loopBody610_91

def loopBody610_93 : HolLoopProg 64 :=
.mark loopBody610_92

def loopBody610_94 : HolLoopProg 64 :=
.seq loopBody610_63 loopBody610_93

def loopBody610_95 : HolLoopProg 64 :=
.mark loopBody610_94

def loopBody610_96 : HolLoopProg 64 :=
.seq loopBody610_55 loopBody610_95

def loopBody610_97 : HolLoopProg 64 :=
.mark loopBody610_96

def loopBody610_98 : HolLoopProg 64 :=
.seq loopBody610_1 loopBody610_97

def loopBody610_99 : HolLoopProg 64 :=
.mark loopBody610_98

def loopBody610_100 : HolLoopProg 64 :=
.seq loopBody610_53 loopBody610_99

def loopBody610_101 : HolLoopProg 64 :=
.mark loopBody610_100

def loopBody610_102 : HolLoopProg 64 :=
.seq loopBody610_1 loopBody610_101

def loopBody610_103 : HolLoopProg 64 :=
.mark loopBody610_102

def loopBody610_104 : HolLoopProg 64 :=
.seq loopBody610_51 loopBody610_103

def loopBody610_105 : HolLoopProg 64 :=
.mark loopBody610_104

def loopBody610_106 : HolLoopProg 64 :=
.seq loopBody610_1 loopBody610_105

def loopBody610_107 : HolLoopProg 64 :=
.mark loopBody610_106

def loopBody610_108 : HolLoopProg 64 :=
.seq loopBody610_49 loopBody610_107

def loopBody610_109 : HolLoopProg 64 :=
.mark loopBody610_108

def loopBody610_110 : HolLoopProg 64 :=
.seq loopBody610_1 loopBody610_109

def loopBody610_111 : HolLoopProg 64 :=
.mark loopBody610_110

def loopBody610_112 : HolLoopProg 64 :=
.seq loopBody610_47 loopBody610_111

def loopBody610_113 : HolLoopProg 64 :=
.mark loopBody610_112

def loopBody610_114 : HolLoopProg 64 :=
.seq loopBody610_1 loopBody610_113

def loopBody610_115 : HolLoopProg 64 :=
.mark loopBody610_114

def loopBody610_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 1#64])

def loopBody610_117 : HolLoopProg 64 :=
.mark loopBody610_116

def loopBody610_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 12)

def loopBody610_119 : HolLoopProg 64 :=
.mark loopBody610_118

def loopBody610_120 : HolLoopProg 64 :=
.seq loopBody610_119 loopBody610_1

def loopBody610_121 : HolLoopProg 64 :=
.mark loopBody610_120

def loopBody610_122 : HolLoopProg 64 :=
.seq loopBody610_121 loopBody610_1

def loopBody610_123 : HolLoopProg 64 :=
.mark loopBody610_122

def loopBody610_124 : HolLoopProg 64 :=
.seq loopBody610_117 loopBody610_123

def loopBody610_125 : HolLoopProg 64 :=
.mark loopBody610_124

def loopBody610_126 : HolLoopProg 64 :=
.seq loopBody610_1 loopBody610_125

def loopBody610_127 : HolLoopProg 64 :=
.mark loopBody610_126

def loopBody610_128 : HolLoopProg 64 :=
.seq loopBody610_115 loopBody610_127

def loopBody610_129 : HolLoopProg 64 :=
.mark loopBody610_128

def loopBody610_130 : HolLoopProg 64 :=
.seq loopBody610_45 loopBody610_129

def loopBody610_131 : HolLoopProg 64 :=
.mark loopBody610_130

def loopBody610_132 : HolLoopProg 64 :=
.seq loopBody610_1 loopBody610_131

def loopBody610_133 : HolLoopProg 64 :=
.mark loopBody610_132

def loopBody610_134 : HolLoopProg 64 :=
.seq loopBody610_1 loopBody610_133

def loopBody610_135 : HolLoopProg 64 :=
.mark loopBody610_134

def loopBody610_136 : HolLoopProg 64 :=
.seq loopBody610_1 loopBody610_135

def loopBody610_137 : HolLoopProg 64 :=
.mark loopBody610_136

def loopBody610_138 : HolLoopProg 64 :=
.seq loopBody610_1 loopBody610_137

def loopBody610_139 : HolLoopProg 64 :=
.mark loopBody610_138

def loopBody610_140 : HolLoopProg 64 :=
.seq loopBody610_1 loopBody610_139

def loopBody610_141 : HolLoopProg 64 :=
.mark loopBody610_140

def loopBody610_142 : HolLoopProg 64 :=
.seq loopBody610_1 loopBody610_141

def loopBody610_143 : HolLoopProg 64 :=
.mark loopBody610_142

def loopBody610_144 : HolLoopProg 64 :=
.seq loopBody610_1 loopBody610_143

def loopBody610_145 : HolLoopProg 64 :=
.mark loopBody610_144

def loopBody610_146 : HolLoopProg 64 :=
.seq loopBody610_1 loopBody610_145

def loopBody610_147 : HolLoopProg 64 :=
.mark loopBody610_146

def loopBody610_148 : HolLoopProg 64 :=
.seq loopBody610_23 loopBody610_147

def loopBody610_149 : HolLoopProg 64 :=
.mark loopBody610_148

def loopBody610_150 : HolLoopProg 64 :=
.seq loopBody610_1 loopBody610_149

def loopBody610_151 : HolLoopProg 64 :=
.mark loopBody610_150

def loopBody610_152 : HolLoopProg 64 :=
.seq loopBody610_21 loopBody610_151

def loopBody610_153 : HolLoopProg 64 :=
.mark loopBody610_152

def loopBody610_154 : HolLoopProg 64 :=
.seq loopBody610_1 loopBody610_153

def loopBody610_155 : HolLoopProg 64 :=
.mark loopBody610_154

def loopBody610_156 : HolLoopProg 64 :=
.seq loopBody610_19 loopBody610_155

def loopBody610_157 : HolLoopProg 64 :=
.mark loopBody610_156

def loopBody610_158 : HolLoopProg 64 :=
.seq loopBody610_1 loopBody610_157

def loopBody610_159 : HolLoopProg 64 :=
.mark loopBody610_158

def loopBody610_160 : HolLoopProg 64 :=
.seq loopBody610_17 loopBody610_159

def loopBody610_161 : HolLoopProg 64 :=
.mark loopBody610_160

def loopBody610_162 : HolLoopProg 64 :=
.seq loopBody610_1 loopBody610_161

def loopBody610_163 : HolLoopProg 64 :=
.mark loopBody610_162

def loopBody610_164 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody610_165 : HolLoopProg 64 :=
.mark loopBody610_164

def loopBody610_166 : HolLoopProg 64 :=
.seq loopBody610_163 loopBody610_165

def loopBody610_167 : HolLoopProg 64 :=
.mark loopBody610_166

def loopBody610_168 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody610_169 : HolLoopProg 64 :=
.mark loopBody610_168

def loopBody610_170 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody610_167 loopBody610_169 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody610_171 : HolLoopProg 64 :=
.mark loopBody610_170

def loopBody610_172 : HolLoopProg 64 :=
.seq loopBody610_171 loopBody610_1

def loopBody610_173 : HolLoopProg 64 :=
.mark loopBody610_172

def loopBody610_174 : HolLoopProg 64 :=
.seq loopBody610_15 loopBody610_173

def loopBody610_175 : HolLoopProg 64 :=
.mark loopBody610_174

def loopBody610_176 : HolLoopProg 64 :=
.seq loopBody610_13 loopBody610_175

def loopBody610_177 : HolLoopProg 64 :=
.mark loopBody610_176

def loopBody610_178 : HolLoopProg 64 :=
.seq loopBody610_7 loopBody610_177

def loopBody610_179 : HolLoopProg 64 :=
.mark loopBody610_178

def loopBody610_180 : HolLoopProg 64 :=
.seq loopBody610_5 loopBody610_179

def loopBody610_181 : HolLoopProg 64 :=
.mark loopBody610_180

def loopBody610_182 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody610_181 (Flapjack.Spt.ln)

def loopBody610_183 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody610_184 : HolLoopProg 64 :=
.mark loopBody610_183

def loopBody610_185 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody610_186 : HolLoopProg 64 :=
.mark loopBody610_185

def loopBody610_187 : HolLoopProg 64 :=
.seq loopBody610_186 loopBody610_1

def loopBody610_188 : HolLoopProg 64 :=
.mark loopBody610_187

def loopBody610_189 : HolLoopProg 64 :=
.seq loopBody610_184 loopBody610_188

def loopBody610_190 : HolLoopProg 64 :=
.mark loopBody610_189

def loopBody610_191 : HolLoopProg 64 :=
.seq loopBody610_182 loopBody610_190

def loopBody610_192 : HolLoopProg 64 :=
.seq loopBody610_3 loopBody610_191

def loopBody610_193 : HolLoopProg 64 :=
.seq loopBody610_1 loopBody610_192

def output610 : Nat × List Nat × HolLoopProg 64 :=
  (674, [0, 1, 2], loopBody610_193)
end InitECandidate.Proofs.FrontendStages.Loop
