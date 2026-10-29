import InitECandidate.Proofs.FrontendStages.Loop.Translate450
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody466_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody466_1 : HolLoopProg 64 :=
.mark loopBody466_0

def loopBody466_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody466_3 : HolLoopProg 64 :=
.mark loopBody466_2

def loopBody466_4 : HolLoopProg 64 :=
.call (some ([1, 2, 3, 4], Flapjack.Spt.ln)) (some 475) ([]) (some (5, loopBody466_3, loopBody466_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody466_5 : HolLoopProg 64 :=
.mark loopBody466_4

def loopBody466_6 : HolLoopProg 64 :=
.seq loopBody466_5 loopBody466_1

def loopBody466_7 : HolLoopProg 64 :=
.mark loopBody466_6

def loopBody466_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody466_9 : HolLoopProg 64 :=
.mark loopBody466_8

def loopBody466_10 : HolLoopProg 64 :=
.call (some
  ([5, 6, 7, 8],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 475) ([]) (some (9, loopBody466_9, loopBody466_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody466_11 : HolLoopProg 64 :=
.mark loopBody466_10

def loopBody466_12 : HolLoopProg 64 :=
.seq loopBody466_11 loopBody466_1

def loopBody466_13 : HolLoopProg 64 :=
.mark loopBody466_12

def loopBody466_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 3#64)

def loopBody466_15 : HolLoopProg 64 :=
.mark loopBody466_14

def loopBody466_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 1)

def loopBody466_17 : HolLoopProg 64 :=
.mark loopBody466_16

def loopBody466_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 2)

def loopBody466_19 : HolLoopProg 64 :=
.mark loopBody466_18

def loopBody466_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 3)

def loopBody466_21 : HolLoopProg 64 :=
.mark loopBody466_20

def loopBody466_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 4)

def loopBody466_23 : HolLoopProg 64 :=
.mark loopBody466_22

def loopBody466_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.const 32#64)

def loopBody466_25 : HolLoopProg 64 :=
.mark loopBody466_24

def loopBody466_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.const 0#64)

def loopBody466_27 : HolLoopProg 64 :=
.mark loopBody466_26

def loopBody466_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.const 0#64)

def loopBody466_29 : HolLoopProg 64 :=
.mark loopBody466_28

def loopBody466_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.const 0#64)

def loopBody466_31 : HolLoopProg 64 :=
.mark loopBody466_30

def loopBody466_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody466_33 : HolLoopProg 64 :=
.mark loopBody466_32

def loopBody466_34 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 483) ([10, 11, 12, 13, 14, 15, 16, 17, 18]) (some (10, loopBody466_33, loopBody466_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody466_35 : HolLoopProg 64 :=
.mark loopBody466_34

def loopBody466_36 : HolLoopProg 64 :=
.seq loopBody466_35 loopBody466_1

def loopBody466_37 : HolLoopProg 64 :=
.mark loopBody466_36

def loopBody466_38 : HolLoopProg 64 :=
.seq loopBody466_31 loopBody466_37

def loopBody466_39 : HolLoopProg 64 :=
.mark loopBody466_38

def loopBody466_40 : HolLoopProg 64 :=
.seq loopBody466_29 loopBody466_39

def loopBody466_41 : HolLoopProg 64 :=
.mark loopBody466_40

def loopBody466_42 : HolLoopProg 64 :=
.seq loopBody466_27 loopBody466_41

def loopBody466_43 : HolLoopProg 64 :=
.mark loopBody466_42

def loopBody466_44 : HolLoopProg 64 :=
.seq loopBody466_25 loopBody466_43

def loopBody466_45 : HolLoopProg 64 :=
.mark loopBody466_44

def loopBody466_46 : HolLoopProg 64 :=
.seq loopBody466_23 loopBody466_45

def loopBody466_47 : HolLoopProg 64 :=
.mark loopBody466_46

def loopBody466_48 : HolLoopProg 64 :=
.seq loopBody466_21 loopBody466_47

def loopBody466_49 : HolLoopProg 64 :=
.mark loopBody466_48

def loopBody466_50 : HolLoopProg 64 :=
.seq loopBody466_19 loopBody466_49

def loopBody466_51 : HolLoopProg 64 :=
.mark loopBody466_50

def loopBody466_52 : HolLoopProg 64 :=
.seq loopBody466_17 loopBody466_51

def loopBody466_53 : HolLoopProg 64 :=
.mark loopBody466_52

def loopBody466_54 : HolLoopProg 64 :=
.seq loopBody466_15 loopBody466_53

def loopBody466_55 : HolLoopProg 64 :=
.mark loopBody466_54

def loopBody466_56 : HolLoopProg 64 :=
.seq loopBody466_1 loopBody466_55

def loopBody466_57 : HolLoopProg 64 :=
.mark loopBody466_56

def loopBody466_58 : HolLoopProg 64 :=
.seq loopBody466_1 loopBody466_57

def loopBody466_59 : HolLoopProg 64 :=
.mark loopBody466_58

def loopBody466_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 1)

def loopBody466_61 : HolLoopProg 64 :=
.mark loopBody466_60

def loopBody466_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 2)

def loopBody466_63 : HolLoopProg 64 :=
.mark loopBody466_62

def loopBody466_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 3)

def loopBody466_65 : HolLoopProg 64 :=
.mark loopBody466_64

def loopBody466_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 4)

def loopBody466_67 : HolLoopProg 64 :=
.mark loopBody466_66

def loopBody466_68 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))) (some 462) ([10, 11, 12, 13]) (some (10, loopBody466_33, loopBody466_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody466_69 : HolLoopProg 64 :=
.mark loopBody466_68

def loopBody466_70 : HolLoopProg 64 :=
.seq loopBody466_69 loopBody466_1

def loopBody466_71 : HolLoopProg 64 :=
.mark loopBody466_70

def loopBody466_72 : HolLoopProg 64 :=
.seq loopBody466_67 loopBody466_71

def loopBody466_73 : HolLoopProg 64 :=
.mark loopBody466_72

def loopBody466_74 : HolLoopProg 64 :=
.seq loopBody466_65 loopBody466_73

def loopBody466_75 : HolLoopProg 64 :=
.mark loopBody466_74

def loopBody466_76 : HolLoopProg 64 :=
.seq loopBody466_63 loopBody466_75

def loopBody466_77 : HolLoopProg 64 :=
.mark loopBody466_76

def loopBody466_78 : HolLoopProg 64 :=
.seq loopBody466_61 loopBody466_77

def loopBody466_79 : HolLoopProg 64 :=
.mark loopBody466_78

def loopBody466_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 5)

def loopBody466_81 : HolLoopProg 64 :=
.mark loopBody466_80

def loopBody466_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 6)

def loopBody466_83 : HolLoopProg 64 :=
.mark loopBody466_82

def loopBody466_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 7)

def loopBody466_85 : HolLoopProg 64 :=
.mark loopBody466_84

def loopBody466_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 8)

def loopBody466_87 : HolLoopProg 64 :=
.mark loopBody466_86

def loopBody466_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.load
              (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
            Flapjack.HolLoopExp.const 24#64]),
      Flapjack.HolLoopExp.var 9])

def loopBody466_89 : HolLoopProg 64 :=
.mark loopBody466_88

def loopBody466_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 11

def loopBody466_91 : HolLoopProg 64 :=
.mark loopBody466_90

def loopBody466_92 : HolLoopProg 64 :=
.call (some ([10], Flapjack.Spt.ln)) (some 147) ([11, 12, 13, 14, 15]) (some (11, loopBody466_91, loopBody466_1, (Flapjack.Spt.ln)))

def loopBody466_93 : HolLoopProg 64 :=
.mark loopBody466_92

def loopBody466_94 : HolLoopProg 64 :=
.seq loopBody466_93 loopBody466_1

def loopBody466_95 : HolLoopProg 64 :=
.mark loopBody466_94

def loopBody466_96 : HolLoopProg 64 :=
.seq loopBody466_89 loopBody466_95

def loopBody466_97 : HolLoopProg 64 :=
.mark loopBody466_96

def loopBody466_98 : HolLoopProg 64 :=
.seq loopBody466_87 loopBody466_97

def loopBody466_99 : HolLoopProg 64 :=
.mark loopBody466_98

def loopBody466_100 : HolLoopProg 64 :=
.seq loopBody466_85 loopBody466_99

def loopBody466_101 : HolLoopProg 64 :=
.mark loopBody466_100

def loopBody466_102 : HolLoopProg 64 :=
.seq loopBody466_83 loopBody466_101

def loopBody466_103 : HolLoopProg 64 :=
.mark loopBody466_102

def loopBody466_104 : HolLoopProg 64 :=
.seq loopBody466_81 loopBody466_103

def loopBody466_105 : HolLoopProg 64 :=
.mark loopBody466_104

def loopBody466_106 : HolLoopProg 64 :=
.seq loopBody466_1 loopBody466_105

def loopBody466_107 : HolLoopProg 64 :=
.mark loopBody466_106

def loopBody466_108 : HolLoopProg 64 :=
.seq loopBody466_1 loopBody466_107

def loopBody466_109 : HolLoopProg 64 :=
.mark loopBody466_108

def loopBody466_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 1#64)

def loopBody466_111 : HolLoopProg 64 :=
.mark loopBody466_110

def loopBody466_112 : HolLoopProg 64 :=
.call (some ([10], Flapjack.Spt.ln)) (some 490) ([11]) (some (11, loopBody466_91, loopBody466_1, (Flapjack.Spt.ln)))

def loopBody466_113 : HolLoopProg 64 :=
.mark loopBody466_112

def loopBody466_114 : HolLoopProg 64 :=
.seq loopBody466_113 loopBody466_1

def loopBody466_115 : HolLoopProg 64 :=
.mark loopBody466_114

def loopBody466_116 : HolLoopProg 64 :=
.seq loopBody466_111 loopBody466_115

def loopBody466_117 : HolLoopProg 64 :=
.mark loopBody466_116

def loopBody466_118 : HolLoopProg 64 :=
.seq loopBody466_1 loopBody466_117

def loopBody466_119 : HolLoopProg 64 :=
.mark loopBody466_118

def loopBody466_120 : HolLoopProg 64 :=
.seq loopBody466_1 loopBody466_119

def loopBody466_121 : HolLoopProg 64 :=
.mark loopBody466_120

def loopBody466_122 : HolLoopProg 64 :=
.seq loopBody466_109 loopBody466_121

def loopBody466_123 : HolLoopProg 64 :=
.mark loopBody466_122

def loopBody466_124 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody466_125 : HolLoopProg 64 :=
.mark loopBody466_124

def loopBody466_126 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [10]

def loopBody466_127 : HolLoopProg 64 :=
.mark loopBody466_126

def loopBody466_128 : HolLoopProg 64 :=
.seq loopBody466_127 loopBody466_1

def loopBody466_129 : HolLoopProg 64 :=
.mark loopBody466_128

def loopBody466_130 : HolLoopProg 64 :=
.seq loopBody466_125 loopBody466_129

def loopBody466_131 : HolLoopProg 64 :=
.mark loopBody466_130

def loopBody466_132 : HolLoopProg 64 :=
.seq loopBody466_123 loopBody466_131

def loopBody466_133 : HolLoopProg 64 :=
.mark loopBody466_132

def loopBody466_134 : HolLoopProg 64 :=
.seq loopBody466_79 loopBody466_133

def loopBody466_135 : HolLoopProg 64 :=
.mark loopBody466_134

def loopBody466_136 : HolLoopProg 64 :=
.seq loopBody466_1 loopBody466_135

def loopBody466_137 : HolLoopProg 64 :=
.mark loopBody466_136

def loopBody466_138 : HolLoopProg 64 :=
.seq loopBody466_1 loopBody466_137

def loopBody466_139 : HolLoopProg 64 :=
.mark loopBody466_138

def loopBody466_140 : HolLoopProg 64 :=
.seq loopBody466_59 loopBody466_139

def loopBody466_141 : HolLoopProg 64 :=
.mark loopBody466_140

def loopBody466_142 : HolLoopProg 64 :=
.seq loopBody466_13 loopBody466_141

def loopBody466_143 : HolLoopProg 64 :=
.mark loopBody466_142

def loopBody466_144 : HolLoopProg 64 :=
.seq loopBody466_1 loopBody466_143

def loopBody466_145 : HolLoopProg 64 :=
.mark loopBody466_144

def loopBody466_146 : HolLoopProg 64 :=
.seq loopBody466_1 loopBody466_145

def loopBody466_147 : HolLoopProg 64 :=
.mark loopBody466_146

def loopBody466_148 : HolLoopProg 64 :=
.seq loopBody466_1 loopBody466_147

def loopBody466_149 : HolLoopProg 64 :=
.mark loopBody466_148

def loopBody466_150 : HolLoopProg 64 :=
.seq loopBody466_1 loopBody466_149

def loopBody466_151 : HolLoopProg 64 :=
.mark loopBody466_150

def loopBody466_152 : HolLoopProg 64 :=
.seq loopBody466_1 loopBody466_151

def loopBody466_153 : HolLoopProg 64 :=
.mark loopBody466_152

def loopBody466_154 : HolLoopProg 64 :=
.seq loopBody466_1 loopBody466_153

def loopBody466_155 : HolLoopProg 64 :=
.mark loopBody466_154

def loopBody466_156 : HolLoopProg 64 :=
.seq loopBody466_1 loopBody466_155

def loopBody466_157 : HolLoopProg 64 :=
.mark loopBody466_156

def loopBody466_158 : HolLoopProg 64 :=
.seq loopBody466_1 loopBody466_157

def loopBody466_159 : HolLoopProg 64 :=
.mark loopBody466_158

def loopBody466_160 : HolLoopProg 64 :=
.seq loopBody466_7 loopBody466_159

def loopBody466_161 : HolLoopProg 64 :=
.mark loopBody466_160

def loopBody466_162 : HolLoopProg 64 :=
.seq loopBody466_1 loopBody466_161

def loopBody466_163 : HolLoopProg 64 :=
.mark loopBody466_162

def loopBody466_164 : HolLoopProg 64 :=
.seq loopBody466_1 loopBody466_163

def loopBody466_165 : HolLoopProg 64 :=
.mark loopBody466_164

def loopBody466_166 : HolLoopProg 64 :=
.seq loopBody466_1 loopBody466_165

def loopBody466_167 : HolLoopProg 64 :=
.mark loopBody466_166

def loopBody466_168 : HolLoopProg 64 :=
.seq loopBody466_1 loopBody466_167

def loopBody466_169 : HolLoopProg 64 :=
.mark loopBody466_168

def loopBody466_170 : HolLoopProg 64 :=
.seq loopBody466_1 loopBody466_169

def loopBody466_171 : HolLoopProg 64 :=
.mark loopBody466_170

def loopBody466_172 : HolLoopProg 64 :=
.seq loopBody466_1 loopBody466_171

def loopBody466_173 : HolLoopProg 64 :=
.mark loopBody466_172

def loopBody466_174 : HolLoopProg 64 :=
.seq loopBody466_1 loopBody466_173

def loopBody466_175 : HolLoopProg 64 :=
.mark loopBody466_174

def loopBody466_176 : HolLoopProg 64 :=
.seq loopBody466_1 loopBody466_175

def loopBody466_177 : HolLoopProg 64 :=
.mark loopBody466_176

def output466 : Nat × List Nat × HolLoopProg 64 :=
  (530, [], loopBody466_177)
end InitECandidate.Proofs.FrontendStages.Loop
