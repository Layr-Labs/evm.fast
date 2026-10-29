import InitECandidate.Proofs.FrontendStages.Loop.Translate472
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody488_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody488_1 : HolLoopProg 64 :=
.mark loopBody488_0

def loopBody488_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody488_3 : HolLoopProg 64 :=
.mark loopBody488_2

def loopBody488_4 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 492) ([]) (some (2, loopBody488_3, loopBody488_1, (Flapjack.Spt.ln)))

def loopBody488_5 : HolLoopProg 64 :=
.mark loopBody488_4

def loopBody488_6 : HolLoopProg 64 :=
.seq loopBody488_5 loopBody488_1

def loopBody488_7 : HolLoopProg 64 :=
.mark loopBody488_6

def loopBody488_8 : HolLoopProg 64 :=
.seq loopBody488_1 loopBody488_7

def loopBody488_9 : HolLoopProg 64 :=
.mark loopBody488_8

def loopBody488_10 : HolLoopProg 64 :=
.seq loopBody488_1 loopBody488_9

def loopBody488_11 : HolLoopProg 64 :=
.mark loopBody488_10

def loopBody488_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody488_13 : HolLoopProg 64 :=
.mark loopBody488_12

def loopBody488_14 : HolLoopProg 64 :=
.call (some ([1, 2, 3, 4], Flapjack.Spt.ln)) (some 475) ([]) (some (5, loopBody488_13, loopBody488_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody488_15 : HolLoopProg 64 :=
.mark loopBody488_14

def loopBody488_16 : HolLoopProg 64 :=
.seq loopBody488_15 loopBody488_1

def loopBody488_17 : HolLoopProg 64 :=
.mark loopBody488_16

def loopBody488_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody488_19 : HolLoopProg 64 :=
.mark loopBody488_18

def loopBody488_20 : HolLoopProg 64 :=
.call (some
  ([5, 6, 7, 8],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 475) ([]) (some (9, loopBody488_19, loopBody488_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody488_21 : HolLoopProg 64 :=
.mark loopBody488_20

def loopBody488_22 : HolLoopProg 64 :=
.seq loopBody488_21 loopBody488_1

def loopBody488_23 : HolLoopProg 64 :=
.mark loopBody488_22

def loopBody488_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 100#64)

def loopBody488_25 : HolLoopProg 64 :=
.mark loopBody488_24

def loopBody488_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody488_27 : HolLoopProg 64 :=
.mark loopBody488_26

def loopBody488_28 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 470) ([10]) (some (10, loopBody488_27, loopBody488_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody488_29 : HolLoopProg 64 :=
.mark loopBody488_28

def loopBody488_30 : HolLoopProg 64 :=
.seq loopBody488_29 loopBody488_1

def loopBody488_31 : HolLoopProg 64 :=
.mark loopBody488_30

def loopBody488_32 : HolLoopProg 64 :=
.seq loopBody488_25 loopBody488_31

def loopBody488_33 : HolLoopProg 64 :=
.mark loopBody488_32

def loopBody488_34 : HolLoopProg 64 :=
.seq loopBody488_1 loopBody488_33

def loopBody488_35 : HolLoopProg 64 :=
.mark loopBody488_34

def loopBody488_36 : HolLoopProg 64 :=
.seq loopBody488_1 loopBody488_35

def loopBody488_37 : HolLoopProg 64 :=
.mark loopBody488_36

def loopBody488_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 280#64]))

def loopBody488_39 : HolLoopProg 64 :=
.mark loopBody488_38

def loopBody488_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 1)

def loopBody488_41 : HolLoopProg 64 :=
.mark loopBody488_40

def loopBody488_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 2)

def loopBody488_43 : HolLoopProg 64 :=
.mark loopBody488_42

def loopBody488_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 3)

def loopBody488_45 : HolLoopProg 64 :=
.mark loopBody488_44

def loopBody488_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 4)

def loopBody488_47 : HolLoopProg 64 :=
.mark loopBody488_46

def loopBody488_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 9)

def loopBody488_49 : HolLoopProg 64 :=
.mark loopBody488_48

def loopBody488_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 11

def loopBody488_51 : HolLoopProg 64 :=
.mark loopBody488_50

def loopBody488_52 : HolLoopProg 64 :=
.call (some
  ([10],
    Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))) (some 147) ([11, 12, 13, 14, 15]) (some (11, loopBody488_51, loopBody488_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody488_53 : HolLoopProg 64 :=
.mark loopBody488_52

def loopBody488_54 : HolLoopProg 64 :=
.seq loopBody488_53 loopBody488_1

def loopBody488_55 : HolLoopProg 64 :=
.mark loopBody488_54

def loopBody488_56 : HolLoopProg 64 :=
.seq loopBody488_49 loopBody488_55

def loopBody488_57 : HolLoopProg 64 :=
.mark loopBody488_56

def loopBody488_58 : HolLoopProg 64 :=
.seq loopBody488_47 loopBody488_57

def loopBody488_59 : HolLoopProg 64 :=
.mark loopBody488_58

def loopBody488_60 : HolLoopProg 64 :=
.seq loopBody488_45 loopBody488_59

def loopBody488_61 : HolLoopProg 64 :=
.mark loopBody488_60

def loopBody488_62 : HolLoopProg 64 :=
.seq loopBody488_43 loopBody488_61

def loopBody488_63 : HolLoopProg 64 :=
.mark loopBody488_62

def loopBody488_64 : HolLoopProg 64 :=
.seq loopBody488_41 loopBody488_63

def loopBody488_65 : HolLoopProg 64 :=
.mark loopBody488_64

def loopBody488_66 : HolLoopProg 64 :=
.seq loopBody488_1 loopBody488_65

def loopBody488_67 : HolLoopProg 64 :=
.mark loopBody488_66

def loopBody488_68 : HolLoopProg 64 :=
.seq loopBody488_1 loopBody488_67

def loopBody488_69 : HolLoopProg 64 :=
.mark loopBody488_68

def loopBody488_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.add
            [Flapjack.HolLoopExp.load
                (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                  [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
              Flapjack.HolLoopExp.const 112#64]),
        Flapjack.HolLoopExp.const 32#64]))

def loopBody488_71 : HolLoopProg 64 :=
.mark loopBody488_70

def loopBody488_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 10)

def loopBody488_73 : HolLoopProg 64 :=
.mark loopBody488_72

def loopBody488_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 9)

def loopBody488_75 : HolLoopProg 64 :=
.mark loopBody488_74

def loopBody488_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 5)

def loopBody488_77 : HolLoopProg 64 :=
.mark loopBody488_76

def loopBody488_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 6)

def loopBody488_79 : HolLoopProg 64 :=
.mark loopBody488_78

def loopBody488_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 7)

def loopBody488_81 : HolLoopProg 64 :=
.mark loopBody488_80

def loopBody488_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 8)

def loopBody488_83 : HolLoopProg 64 :=
.mark loopBody488_82

def loopBody488_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 12

def loopBody488_85 : HolLoopProg 64 :=
.mark loopBody488_84

def loopBody488_86 : HolLoopProg 64 :=
.call (some ([11], Flapjack.Spt.ln)) (some 426) ([12, 13, 14, 15, 16, 17]) (some (12, loopBody488_85, loopBody488_1, (Flapjack.Spt.ln)))

def loopBody488_87 : HolLoopProg 64 :=
.mark loopBody488_86

def loopBody488_88 : HolLoopProg 64 :=
.seq loopBody488_87 loopBody488_1

def loopBody488_89 : HolLoopProg 64 :=
.mark loopBody488_88

def loopBody488_90 : HolLoopProg 64 :=
.seq loopBody488_83 loopBody488_89

def loopBody488_91 : HolLoopProg 64 :=
.mark loopBody488_90

def loopBody488_92 : HolLoopProg 64 :=
.seq loopBody488_81 loopBody488_91

def loopBody488_93 : HolLoopProg 64 :=
.mark loopBody488_92

def loopBody488_94 : HolLoopProg 64 :=
.seq loopBody488_79 loopBody488_93

def loopBody488_95 : HolLoopProg 64 :=
.mark loopBody488_94

def loopBody488_96 : HolLoopProg 64 :=
.seq loopBody488_77 loopBody488_95

def loopBody488_97 : HolLoopProg 64 :=
.mark loopBody488_96

def loopBody488_98 : HolLoopProg 64 :=
.seq loopBody488_75 loopBody488_97

def loopBody488_99 : HolLoopProg 64 :=
.mark loopBody488_98

def loopBody488_100 : HolLoopProg 64 :=
.seq loopBody488_73 loopBody488_99

def loopBody488_101 : HolLoopProg 64 :=
.mark loopBody488_100

def loopBody488_102 : HolLoopProg 64 :=
.seq loopBody488_1 loopBody488_101

def loopBody488_103 : HolLoopProg 64 :=
.mark loopBody488_102

def loopBody488_104 : HolLoopProg 64 :=
.seq loopBody488_1 loopBody488_103

def loopBody488_105 : HolLoopProg 64 :=
.mark loopBody488_104

def loopBody488_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 1#64)

def loopBody488_107 : HolLoopProg 64 :=
.mark loopBody488_106

def loopBody488_108 : HolLoopProg 64 :=
.call (some ([11], Flapjack.Spt.ln)) (some 490) ([12]) (some (12, loopBody488_85, loopBody488_1, (Flapjack.Spt.ln)))

def loopBody488_109 : HolLoopProg 64 :=
.mark loopBody488_108

def loopBody488_110 : HolLoopProg 64 :=
.seq loopBody488_109 loopBody488_1

def loopBody488_111 : HolLoopProg 64 :=
.mark loopBody488_110

def loopBody488_112 : HolLoopProg 64 :=
.seq loopBody488_107 loopBody488_111

def loopBody488_113 : HolLoopProg 64 :=
.mark loopBody488_112

def loopBody488_114 : HolLoopProg 64 :=
.seq loopBody488_1 loopBody488_113

def loopBody488_115 : HolLoopProg 64 :=
.mark loopBody488_114

def loopBody488_116 : HolLoopProg 64 :=
.seq loopBody488_1 loopBody488_115

def loopBody488_117 : HolLoopProg 64 :=
.mark loopBody488_116

def loopBody488_118 : HolLoopProg 64 :=
.seq loopBody488_105 loopBody488_117

def loopBody488_119 : HolLoopProg 64 :=
.mark loopBody488_118

def loopBody488_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 0#64)

def loopBody488_121 : HolLoopProg 64 :=
.mark loopBody488_120

def loopBody488_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [11]

def loopBody488_123 : HolLoopProg 64 :=
.mark loopBody488_122

def loopBody488_124 : HolLoopProg 64 :=
.seq loopBody488_123 loopBody488_1

def loopBody488_125 : HolLoopProg 64 :=
.mark loopBody488_124

def loopBody488_126 : HolLoopProg 64 :=
.seq loopBody488_121 loopBody488_125

def loopBody488_127 : HolLoopProg 64 :=
.mark loopBody488_126

def loopBody488_128 : HolLoopProg 64 :=
.seq loopBody488_119 loopBody488_127

def loopBody488_129 : HolLoopProg 64 :=
.mark loopBody488_128

def loopBody488_130 : HolLoopProg 64 :=
.seq loopBody488_71 loopBody488_129

def loopBody488_131 : HolLoopProg 64 :=
.mark loopBody488_130

def loopBody488_132 : HolLoopProg 64 :=
.seq loopBody488_1 loopBody488_131

def loopBody488_133 : HolLoopProg 64 :=
.mark loopBody488_132

def loopBody488_134 : HolLoopProg 64 :=
.seq loopBody488_69 loopBody488_133

def loopBody488_135 : HolLoopProg 64 :=
.mark loopBody488_134

def loopBody488_136 : HolLoopProg 64 :=
.seq loopBody488_39 loopBody488_135

def loopBody488_137 : HolLoopProg 64 :=
.mark loopBody488_136

def loopBody488_138 : HolLoopProg 64 :=
.seq loopBody488_1 loopBody488_137

def loopBody488_139 : HolLoopProg 64 :=
.mark loopBody488_138

def loopBody488_140 : HolLoopProg 64 :=
.seq loopBody488_37 loopBody488_139

def loopBody488_141 : HolLoopProg 64 :=
.mark loopBody488_140

def loopBody488_142 : HolLoopProg 64 :=
.seq loopBody488_23 loopBody488_141

def loopBody488_143 : HolLoopProg 64 :=
.mark loopBody488_142

def loopBody488_144 : HolLoopProg 64 :=
.seq loopBody488_1 loopBody488_143

def loopBody488_145 : HolLoopProg 64 :=
.mark loopBody488_144

def loopBody488_146 : HolLoopProg 64 :=
.seq loopBody488_1 loopBody488_145

def loopBody488_147 : HolLoopProg 64 :=
.mark loopBody488_146

def loopBody488_148 : HolLoopProg 64 :=
.seq loopBody488_1 loopBody488_147

def loopBody488_149 : HolLoopProg 64 :=
.mark loopBody488_148

def loopBody488_150 : HolLoopProg 64 :=
.seq loopBody488_1 loopBody488_149

def loopBody488_151 : HolLoopProg 64 :=
.mark loopBody488_150

def loopBody488_152 : HolLoopProg 64 :=
.seq loopBody488_1 loopBody488_151

def loopBody488_153 : HolLoopProg 64 :=
.mark loopBody488_152

def loopBody488_154 : HolLoopProg 64 :=
.seq loopBody488_1 loopBody488_153

def loopBody488_155 : HolLoopProg 64 :=
.mark loopBody488_154

def loopBody488_156 : HolLoopProg 64 :=
.seq loopBody488_1 loopBody488_155

def loopBody488_157 : HolLoopProg 64 :=
.mark loopBody488_156

def loopBody488_158 : HolLoopProg 64 :=
.seq loopBody488_1 loopBody488_157

def loopBody488_159 : HolLoopProg 64 :=
.mark loopBody488_158

def loopBody488_160 : HolLoopProg 64 :=
.seq loopBody488_17 loopBody488_159

def loopBody488_161 : HolLoopProg 64 :=
.mark loopBody488_160

def loopBody488_162 : HolLoopProg 64 :=
.seq loopBody488_1 loopBody488_161

def loopBody488_163 : HolLoopProg 64 :=
.mark loopBody488_162

def loopBody488_164 : HolLoopProg 64 :=
.seq loopBody488_1 loopBody488_163

def loopBody488_165 : HolLoopProg 64 :=
.mark loopBody488_164

def loopBody488_166 : HolLoopProg 64 :=
.seq loopBody488_1 loopBody488_165

def loopBody488_167 : HolLoopProg 64 :=
.mark loopBody488_166

def loopBody488_168 : HolLoopProg 64 :=
.seq loopBody488_1 loopBody488_167

def loopBody488_169 : HolLoopProg 64 :=
.mark loopBody488_168

def loopBody488_170 : HolLoopProg 64 :=
.seq loopBody488_1 loopBody488_169

def loopBody488_171 : HolLoopProg 64 :=
.mark loopBody488_170

def loopBody488_172 : HolLoopProg 64 :=
.seq loopBody488_1 loopBody488_171

def loopBody488_173 : HolLoopProg 64 :=
.mark loopBody488_172

def loopBody488_174 : HolLoopProg 64 :=
.seq loopBody488_1 loopBody488_173

def loopBody488_175 : HolLoopProg 64 :=
.mark loopBody488_174

def loopBody488_176 : HolLoopProg 64 :=
.seq loopBody488_1 loopBody488_175

def loopBody488_177 : HolLoopProg 64 :=
.mark loopBody488_176

def loopBody488_178 : HolLoopProg 64 :=
.seq loopBody488_11 loopBody488_177

def loopBody488_179 : HolLoopProg 64 :=
.mark loopBody488_178

def output488 : Nat × List Nat × HolLoopProg 64 :=
  (552, [], loopBody488_179)
end InitECandidate.Proofs.FrontendStages.Loop
