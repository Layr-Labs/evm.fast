import InitECandidate.Proofs.FrontendStages.Loop.Translate452
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody468_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody468_1 : HolLoopProg 64 :=
.mark loopBody468_0

def loopBody468_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody468_3 : HolLoopProg 64 :=
.mark loopBody468_2

def loopBody468_4 : HolLoopProg 64 :=
.call (some ([1, 2, 3, 4], Flapjack.Spt.ln)) (some 475) ([]) (some (5, loopBody468_3, loopBody468_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody468_5 : HolLoopProg 64 :=
.mark loopBody468_4

def loopBody468_6 : HolLoopProg 64 :=
.seq loopBody468_5 loopBody468_1

def loopBody468_7 : HolLoopProg 64 :=
.mark loopBody468_6

def loopBody468_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 3#64)

def loopBody468_9 : HolLoopProg 64 :=
.mark loopBody468_8

def loopBody468_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody468_11 : HolLoopProg 64 :=
.mark loopBody468_10

def loopBody468_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody468_13 : HolLoopProg 64 :=
.mark loopBody468_12

def loopBody468_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 3)

def loopBody468_15 : HolLoopProg 64 :=
.mark loopBody468_14

def loopBody468_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 4)

def loopBody468_17 : HolLoopProg 64 :=
.mark loopBody468_16

def loopBody468_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 32#64)

def loopBody468_19 : HolLoopProg 64 :=
.mark loopBody468_18

def loopBody468_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 0#64)

def loopBody468_21 : HolLoopProg 64 :=
.mark loopBody468_20

def loopBody468_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 0#64)

def loopBody468_23 : HolLoopProg 64 :=
.mark loopBody468_22

def loopBody468_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 0#64)

def loopBody468_25 : HolLoopProg 64 :=
.mark loopBody468_24

def loopBody468_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody468_27 : HolLoopProg 64 :=
.mark loopBody468_26

def loopBody468_28 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 483) ([6, 7, 8, 9, 10, 11, 12, 13, 14]) (some (6, loopBody468_27, loopBody468_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody468_29 : HolLoopProg 64 :=
.mark loopBody468_28

def loopBody468_30 : HolLoopProg 64 :=
.seq loopBody468_29 loopBody468_1

def loopBody468_31 : HolLoopProg 64 :=
.mark loopBody468_30

def loopBody468_32 : HolLoopProg 64 :=
.seq loopBody468_25 loopBody468_31

def loopBody468_33 : HolLoopProg 64 :=
.mark loopBody468_32

def loopBody468_34 : HolLoopProg 64 :=
.seq loopBody468_23 loopBody468_33

def loopBody468_35 : HolLoopProg 64 :=
.mark loopBody468_34

def loopBody468_36 : HolLoopProg 64 :=
.seq loopBody468_21 loopBody468_35

def loopBody468_37 : HolLoopProg 64 :=
.mark loopBody468_36

def loopBody468_38 : HolLoopProg 64 :=
.seq loopBody468_19 loopBody468_37

def loopBody468_39 : HolLoopProg 64 :=
.mark loopBody468_38

def loopBody468_40 : HolLoopProg 64 :=
.seq loopBody468_17 loopBody468_39

def loopBody468_41 : HolLoopProg 64 :=
.mark loopBody468_40

def loopBody468_42 : HolLoopProg 64 :=
.seq loopBody468_15 loopBody468_41

def loopBody468_43 : HolLoopProg 64 :=
.mark loopBody468_42

def loopBody468_44 : HolLoopProg 64 :=
.seq loopBody468_13 loopBody468_43

def loopBody468_45 : HolLoopProg 64 :=
.mark loopBody468_44

def loopBody468_46 : HolLoopProg 64 :=
.seq loopBody468_11 loopBody468_45

def loopBody468_47 : HolLoopProg 64 :=
.mark loopBody468_46

def loopBody468_48 : HolLoopProg 64 :=
.seq loopBody468_9 loopBody468_47

def loopBody468_49 : HolLoopProg 64 :=
.mark loopBody468_48

def loopBody468_50 : HolLoopProg 64 :=
.seq loopBody468_1 loopBody468_49

def loopBody468_51 : HolLoopProg 64 :=
.mark loopBody468_50

def loopBody468_52 : HolLoopProg 64 :=
.seq loopBody468_1 loopBody468_51

def loopBody468_53 : HolLoopProg 64 :=
.mark loopBody468_52

def loopBody468_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody468_55 : HolLoopProg 64 :=
.mark loopBody468_54

def loopBody468_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody468_57 : HolLoopProg 64 :=
.mark loopBody468_56

def loopBody468_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody468_59 : HolLoopProg 64 :=
.mark loopBody468_58

def loopBody468_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 4)

def loopBody468_61 : HolLoopProg 64 :=
.mark loopBody468_60

def loopBody468_62 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.ln)) (some 462) ([6, 7, 8, 9]) (some (6, loopBody468_27, loopBody468_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody468_63 : HolLoopProg 64 :=
.mark loopBody468_62

def loopBody468_64 : HolLoopProg 64 :=
.seq loopBody468_63 loopBody468_1

def loopBody468_65 : HolLoopProg 64 :=
.mark loopBody468_64

def loopBody468_66 : HolLoopProg 64 :=
.seq loopBody468_61 loopBody468_65

def loopBody468_67 : HolLoopProg 64 :=
.mark loopBody468_66

def loopBody468_68 : HolLoopProg 64 :=
.seq loopBody468_59 loopBody468_67

def loopBody468_69 : HolLoopProg 64 :=
.mark loopBody468_68

def loopBody468_70 : HolLoopProg 64 :=
.seq loopBody468_57 loopBody468_69

def loopBody468_71 : HolLoopProg 64 :=
.mark loopBody468_70

def loopBody468_72 : HolLoopProg 64 :=
.seq loopBody468_55 loopBody468_71

def loopBody468_73 : HolLoopProg 64 :=
.mark loopBody468_72

def loopBody468_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.load
              (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
            Flapjack.HolLoopExp.const 24#64]),
      Flapjack.HolLoopExp.var 5])

def loopBody468_75 : HolLoopProg 64 :=
.mark loopBody468_74

def loopBody468_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody468_77 : HolLoopProg 64 :=
.mark loopBody468_76

def loopBody468_78 : HolLoopProg 64 :=
.call (some ([6, 7, 8, 9], Flapjack.Spt.ln)) (some 146) ([10, 11]) (some (10, loopBody468_77, loopBody468_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody468_79 : HolLoopProg 64 :=
.mark loopBody468_78

def loopBody468_80 : HolLoopProg 64 :=
.seq loopBody468_79 loopBody468_1

def loopBody468_81 : HolLoopProg 64 :=
.mark loopBody468_80

def loopBody468_82 : HolLoopProg 64 :=
.seq loopBody468_19 loopBody468_81

def loopBody468_83 : HolLoopProg 64 :=
.mark loopBody468_82

def loopBody468_84 : HolLoopProg 64 :=
.seq loopBody468_75 loopBody468_83

def loopBody468_85 : HolLoopProg 64 :=
.mark loopBody468_84

def loopBody468_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 6)

def loopBody468_87 : HolLoopProg 64 :=
.mark loopBody468_86

def loopBody468_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 7)

def loopBody468_89 : HolLoopProg 64 :=
.mark loopBody468_88

def loopBody468_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 8)

def loopBody468_91 : HolLoopProg 64 :=
.mark loopBody468_90

def loopBody468_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 9)

def loopBody468_93 : HolLoopProg 64 :=
.mark loopBody468_92

def loopBody468_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 11

def loopBody468_95 : HolLoopProg 64 :=
.mark loopBody468_94

def loopBody468_96 : HolLoopProg 64 :=
.call (some ([10], Flapjack.Spt.ln)) (some 476) ([11, 12, 13, 14]) (some (11, loopBody468_95, loopBody468_1, (Flapjack.Spt.ln)))

def loopBody468_97 : HolLoopProg 64 :=
.mark loopBody468_96

def loopBody468_98 : HolLoopProg 64 :=
.seq loopBody468_97 loopBody468_1

def loopBody468_99 : HolLoopProg 64 :=
.mark loopBody468_98

def loopBody468_100 : HolLoopProg 64 :=
.seq loopBody468_93 loopBody468_99

def loopBody468_101 : HolLoopProg 64 :=
.mark loopBody468_100

def loopBody468_102 : HolLoopProg 64 :=
.seq loopBody468_91 loopBody468_101

def loopBody468_103 : HolLoopProg 64 :=
.mark loopBody468_102

def loopBody468_104 : HolLoopProg 64 :=
.seq loopBody468_89 loopBody468_103

def loopBody468_105 : HolLoopProg 64 :=
.mark loopBody468_104

def loopBody468_106 : HolLoopProg 64 :=
.seq loopBody468_87 loopBody468_105

def loopBody468_107 : HolLoopProg 64 :=
.mark loopBody468_106

def loopBody468_108 : HolLoopProg 64 :=
.seq loopBody468_1 loopBody468_107

def loopBody468_109 : HolLoopProg 64 :=
.mark loopBody468_108

def loopBody468_110 : HolLoopProg 64 :=
.seq loopBody468_1 loopBody468_109

def loopBody468_111 : HolLoopProg 64 :=
.mark loopBody468_110

def loopBody468_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 1#64)

def loopBody468_113 : HolLoopProg 64 :=
.mark loopBody468_112

def loopBody468_114 : HolLoopProg 64 :=
.call (some ([10], Flapjack.Spt.ln)) (some 490) ([11]) (some (11, loopBody468_95, loopBody468_1, (Flapjack.Spt.ln)))

def loopBody468_115 : HolLoopProg 64 :=
.mark loopBody468_114

def loopBody468_116 : HolLoopProg 64 :=
.seq loopBody468_115 loopBody468_1

def loopBody468_117 : HolLoopProg 64 :=
.mark loopBody468_116

def loopBody468_118 : HolLoopProg 64 :=
.seq loopBody468_113 loopBody468_117

def loopBody468_119 : HolLoopProg 64 :=
.mark loopBody468_118

def loopBody468_120 : HolLoopProg 64 :=
.seq loopBody468_1 loopBody468_119

def loopBody468_121 : HolLoopProg 64 :=
.mark loopBody468_120

def loopBody468_122 : HolLoopProg 64 :=
.seq loopBody468_1 loopBody468_121

def loopBody468_123 : HolLoopProg 64 :=
.mark loopBody468_122

def loopBody468_124 : HolLoopProg 64 :=
.seq loopBody468_111 loopBody468_123

def loopBody468_125 : HolLoopProg 64 :=
.mark loopBody468_124

def loopBody468_126 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody468_127 : HolLoopProg 64 :=
.mark loopBody468_126

def loopBody468_128 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [10]

def loopBody468_129 : HolLoopProg 64 :=
.mark loopBody468_128

def loopBody468_130 : HolLoopProg 64 :=
.seq loopBody468_129 loopBody468_1

def loopBody468_131 : HolLoopProg 64 :=
.mark loopBody468_130

def loopBody468_132 : HolLoopProg 64 :=
.seq loopBody468_127 loopBody468_131

def loopBody468_133 : HolLoopProg 64 :=
.mark loopBody468_132

def loopBody468_134 : HolLoopProg 64 :=
.seq loopBody468_125 loopBody468_133

def loopBody468_135 : HolLoopProg 64 :=
.mark loopBody468_134

def loopBody468_136 : HolLoopProg 64 :=
.seq loopBody468_85 loopBody468_135

def loopBody468_137 : HolLoopProg 64 :=
.mark loopBody468_136

def loopBody468_138 : HolLoopProg 64 :=
.seq loopBody468_1 loopBody468_137

def loopBody468_139 : HolLoopProg 64 :=
.mark loopBody468_138

def loopBody468_140 : HolLoopProg 64 :=
.seq loopBody468_1 loopBody468_139

def loopBody468_141 : HolLoopProg 64 :=
.mark loopBody468_140

def loopBody468_142 : HolLoopProg 64 :=
.seq loopBody468_1 loopBody468_141

def loopBody468_143 : HolLoopProg 64 :=
.mark loopBody468_142

def loopBody468_144 : HolLoopProg 64 :=
.seq loopBody468_1 loopBody468_143

def loopBody468_145 : HolLoopProg 64 :=
.mark loopBody468_144

def loopBody468_146 : HolLoopProg 64 :=
.seq loopBody468_1 loopBody468_145

def loopBody468_147 : HolLoopProg 64 :=
.mark loopBody468_146

def loopBody468_148 : HolLoopProg 64 :=
.seq loopBody468_1 loopBody468_147

def loopBody468_149 : HolLoopProg 64 :=
.mark loopBody468_148

def loopBody468_150 : HolLoopProg 64 :=
.seq loopBody468_1 loopBody468_149

def loopBody468_151 : HolLoopProg 64 :=
.mark loopBody468_150

def loopBody468_152 : HolLoopProg 64 :=
.seq loopBody468_1 loopBody468_151

def loopBody468_153 : HolLoopProg 64 :=
.mark loopBody468_152

def loopBody468_154 : HolLoopProg 64 :=
.seq loopBody468_73 loopBody468_153

def loopBody468_155 : HolLoopProg 64 :=
.mark loopBody468_154

def loopBody468_156 : HolLoopProg 64 :=
.seq loopBody468_1 loopBody468_155

def loopBody468_157 : HolLoopProg 64 :=
.mark loopBody468_156

def loopBody468_158 : HolLoopProg 64 :=
.seq loopBody468_1 loopBody468_157

def loopBody468_159 : HolLoopProg 64 :=
.mark loopBody468_158

def loopBody468_160 : HolLoopProg 64 :=
.seq loopBody468_53 loopBody468_159

def loopBody468_161 : HolLoopProg 64 :=
.mark loopBody468_160

def loopBody468_162 : HolLoopProg 64 :=
.seq loopBody468_7 loopBody468_161

def loopBody468_163 : HolLoopProg 64 :=
.mark loopBody468_162

def loopBody468_164 : HolLoopProg 64 :=
.seq loopBody468_1 loopBody468_163

def loopBody468_165 : HolLoopProg 64 :=
.mark loopBody468_164

def loopBody468_166 : HolLoopProg 64 :=
.seq loopBody468_1 loopBody468_165

def loopBody468_167 : HolLoopProg 64 :=
.mark loopBody468_166

def loopBody468_168 : HolLoopProg 64 :=
.seq loopBody468_1 loopBody468_167

def loopBody468_169 : HolLoopProg 64 :=
.mark loopBody468_168

def loopBody468_170 : HolLoopProg 64 :=
.seq loopBody468_1 loopBody468_169

def loopBody468_171 : HolLoopProg 64 :=
.mark loopBody468_170

def loopBody468_172 : HolLoopProg 64 :=
.seq loopBody468_1 loopBody468_171

def loopBody468_173 : HolLoopProg 64 :=
.mark loopBody468_172

def loopBody468_174 : HolLoopProg 64 :=
.seq loopBody468_1 loopBody468_173

def loopBody468_175 : HolLoopProg 64 :=
.mark loopBody468_174

def loopBody468_176 : HolLoopProg 64 :=
.seq loopBody468_1 loopBody468_175

def loopBody468_177 : HolLoopProg 64 :=
.mark loopBody468_176

def loopBody468_178 : HolLoopProg 64 :=
.seq loopBody468_1 loopBody468_177

def loopBody468_179 : HolLoopProg 64 :=
.mark loopBody468_178

def output468 : Nat × List Nat × HolLoopProg 64 :=
  (532, [], loopBody468_179)
end InitECandidate.Proofs.FrontendStages.Loop
