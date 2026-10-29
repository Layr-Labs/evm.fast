import InitECandidate.Proofs.FrontendStages.Loop.Translate471
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody487_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody487_1 : HolLoopProg 64 :=
.mark loopBody487_0

def loopBody487_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody487_3 : HolLoopProg 64 :=
.mark loopBody487_2

def loopBody487_4 : HolLoopProg 64 :=
.call (some ([1, 2, 3, 4], Flapjack.Spt.ln)) (some 475) ([]) (some (5, loopBody487_3, loopBody487_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody487_5 : HolLoopProg 64 :=
.mark loopBody487_4

def loopBody487_6 : HolLoopProg 64 :=
.seq loopBody487_5 loopBody487_1

def loopBody487_7 : HolLoopProg 64 :=
.mark loopBody487_6

def loopBody487_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 100#64)

def loopBody487_9 : HolLoopProg 64 :=
.mark loopBody487_8

def loopBody487_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody487_11 : HolLoopProg 64 :=
.mark loopBody487_10

def loopBody487_12 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 470) ([6]) (some (6, loopBody487_11, loopBody487_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody487_13 : HolLoopProg 64 :=
.mark loopBody487_12

def loopBody487_14 : HolLoopProg 64 :=
.seq loopBody487_13 loopBody487_1

def loopBody487_15 : HolLoopProg 64 :=
.mark loopBody487_14

def loopBody487_16 : HolLoopProg 64 :=
.seq loopBody487_9 loopBody487_15

def loopBody487_17 : HolLoopProg 64 :=
.mark loopBody487_16

def loopBody487_18 : HolLoopProg 64 :=
.seq loopBody487_1 loopBody487_17

def loopBody487_19 : HolLoopProg 64 :=
.mark loopBody487_18

def loopBody487_20 : HolLoopProg 64 :=
.seq loopBody487_1 loopBody487_19

def loopBody487_21 : HolLoopProg 64 :=
.mark loopBody487_20

def loopBody487_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 280#64]))

def loopBody487_23 : HolLoopProg 64 :=
.mark loopBody487_22

def loopBody487_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody487_25 : HolLoopProg 64 :=
.mark loopBody487_24

def loopBody487_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody487_27 : HolLoopProg 64 :=
.mark loopBody487_26

def loopBody487_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 3)

def loopBody487_29 : HolLoopProg 64 :=
.mark loopBody487_28

def loopBody487_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 4)

def loopBody487_31 : HolLoopProg 64 :=
.mark loopBody487_30

def loopBody487_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 5)

def loopBody487_33 : HolLoopProg 64 :=
.mark loopBody487_32

def loopBody487_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody487_35 : HolLoopProg 64 :=
.mark loopBody487_34

def loopBody487_36 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))) (some 147) ([7, 8, 9, 10, 11]) (some (7, loopBody487_35, loopBody487_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody487_37 : HolLoopProg 64 :=
.mark loopBody487_36

def loopBody487_38 : HolLoopProg 64 :=
.seq loopBody487_37 loopBody487_1

def loopBody487_39 : HolLoopProg 64 :=
.mark loopBody487_38

def loopBody487_40 : HolLoopProg 64 :=
.seq loopBody487_33 loopBody487_39

def loopBody487_41 : HolLoopProg 64 :=
.mark loopBody487_40

def loopBody487_42 : HolLoopProg 64 :=
.seq loopBody487_31 loopBody487_41

def loopBody487_43 : HolLoopProg 64 :=
.mark loopBody487_42

def loopBody487_44 : HolLoopProg 64 :=
.seq loopBody487_29 loopBody487_43

def loopBody487_45 : HolLoopProg 64 :=
.mark loopBody487_44

def loopBody487_46 : HolLoopProg 64 :=
.seq loopBody487_27 loopBody487_45

def loopBody487_47 : HolLoopProg 64 :=
.mark loopBody487_46

def loopBody487_48 : HolLoopProg 64 :=
.seq loopBody487_25 loopBody487_47

def loopBody487_49 : HolLoopProg 64 :=
.mark loopBody487_48

def loopBody487_50 : HolLoopProg 64 :=
.seq loopBody487_1 loopBody487_49

def loopBody487_51 : HolLoopProg 64 :=
.mark loopBody487_50

def loopBody487_52 : HolLoopProg 64 :=
.seq loopBody487_1 loopBody487_51

def loopBody487_53 : HolLoopProg 64 :=
.mark loopBody487_52

def loopBody487_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.add
            [Flapjack.HolLoopExp.load
                (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                  [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
              Flapjack.HolLoopExp.const 112#64]),
        Flapjack.HolLoopExp.const 32#64]))

def loopBody487_55 : HolLoopProg 64 :=
.mark loopBody487_54

def loopBody487_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 6)

def loopBody487_57 : HolLoopProg 64 :=
.mark loopBody487_56

def loopBody487_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 5)

def loopBody487_59 : HolLoopProg 64 :=
.mark loopBody487_58

def loopBody487_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 11

def loopBody487_61 : HolLoopProg 64 :=
.mark loopBody487_60

def loopBody487_62 : HolLoopProg 64 :=
.call (some ([7, 8, 9, 10], Flapjack.Spt.ln)) (some 412) ([11, 12]) (some (11, loopBody487_61, loopBody487_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody487_63 : HolLoopProg 64 :=
.mark loopBody487_62

def loopBody487_64 : HolLoopProg 64 :=
.seq loopBody487_63 loopBody487_1

def loopBody487_65 : HolLoopProg 64 :=
.mark loopBody487_64

def loopBody487_66 : HolLoopProg 64 :=
.seq loopBody487_59 loopBody487_65

def loopBody487_67 : HolLoopProg 64 :=
.mark loopBody487_66

def loopBody487_68 : HolLoopProg 64 :=
.seq loopBody487_57 loopBody487_67

def loopBody487_69 : HolLoopProg 64 :=
.mark loopBody487_68

def loopBody487_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 7)

def loopBody487_71 : HolLoopProg 64 :=
.mark loopBody487_70

def loopBody487_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 8)

def loopBody487_73 : HolLoopProg 64 :=
.mark loopBody487_72

def loopBody487_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 9)

def loopBody487_75 : HolLoopProg 64 :=
.mark loopBody487_74

def loopBody487_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 10)

def loopBody487_77 : HolLoopProg 64 :=
.mark loopBody487_76

def loopBody487_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 12

def loopBody487_79 : HolLoopProg 64 :=
.mark loopBody487_78

def loopBody487_80 : HolLoopProg 64 :=
.call (some ([11], Flapjack.Spt.ln)) (some 476) ([12, 13, 14, 15]) (some (12, loopBody487_79, loopBody487_1, (Flapjack.Spt.ln)))

def loopBody487_81 : HolLoopProg 64 :=
.mark loopBody487_80

def loopBody487_82 : HolLoopProg 64 :=
.seq loopBody487_81 loopBody487_1

def loopBody487_83 : HolLoopProg 64 :=
.mark loopBody487_82

def loopBody487_84 : HolLoopProg 64 :=
.seq loopBody487_77 loopBody487_83

def loopBody487_85 : HolLoopProg 64 :=
.mark loopBody487_84

def loopBody487_86 : HolLoopProg 64 :=
.seq loopBody487_75 loopBody487_85

def loopBody487_87 : HolLoopProg 64 :=
.mark loopBody487_86

def loopBody487_88 : HolLoopProg 64 :=
.seq loopBody487_73 loopBody487_87

def loopBody487_89 : HolLoopProg 64 :=
.mark loopBody487_88

def loopBody487_90 : HolLoopProg 64 :=
.seq loopBody487_71 loopBody487_89

def loopBody487_91 : HolLoopProg 64 :=
.mark loopBody487_90

def loopBody487_92 : HolLoopProg 64 :=
.seq loopBody487_1 loopBody487_91

def loopBody487_93 : HolLoopProg 64 :=
.mark loopBody487_92

def loopBody487_94 : HolLoopProg 64 :=
.seq loopBody487_1 loopBody487_93

def loopBody487_95 : HolLoopProg 64 :=
.mark loopBody487_94

def loopBody487_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 1#64)

def loopBody487_97 : HolLoopProg 64 :=
.mark loopBody487_96

def loopBody487_98 : HolLoopProg 64 :=
.call (some ([11], Flapjack.Spt.ln)) (some 490) ([12]) (some (12, loopBody487_79, loopBody487_1, (Flapjack.Spt.ln)))

def loopBody487_99 : HolLoopProg 64 :=
.mark loopBody487_98

def loopBody487_100 : HolLoopProg 64 :=
.seq loopBody487_99 loopBody487_1

def loopBody487_101 : HolLoopProg 64 :=
.mark loopBody487_100

def loopBody487_102 : HolLoopProg 64 :=
.seq loopBody487_97 loopBody487_101

def loopBody487_103 : HolLoopProg 64 :=
.mark loopBody487_102

def loopBody487_104 : HolLoopProg 64 :=
.seq loopBody487_1 loopBody487_103

def loopBody487_105 : HolLoopProg 64 :=
.mark loopBody487_104

def loopBody487_106 : HolLoopProg 64 :=
.seq loopBody487_1 loopBody487_105

def loopBody487_107 : HolLoopProg 64 :=
.mark loopBody487_106

def loopBody487_108 : HolLoopProg 64 :=
.seq loopBody487_95 loopBody487_107

def loopBody487_109 : HolLoopProg 64 :=
.mark loopBody487_108

def loopBody487_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 0#64)

def loopBody487_111 : HolLoopProg 64 :=
.mark loopBody487_110

def loopBody487_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [11]

def loopBody487_113 : HolLoopProg 64 :=
.mark loopBody487_112

def loopBody487_114 : HolLoopProg 64 :=
.seq loopBody487_113 loopBody487_1

def loopBody487_115 : HolLoopProg 64 :=
.mark loopBody487_114

def loopBody487_116 : HolLoopProg 64 :=
.seq loopBody487_111 loopBody487_115

def loopBody487_117 : HolLoopProg 64 :=
.mark loopBody487_116

def loopBody487_118 : HolLoopProg 64 :=
.seq loopBody487_109 loopBody487_117

def loopBody487_119 : HolLoopProg 64 :=
.mark loopBody487_118

def loopBody487_120 : HolLoopProg 64 :=
.seq loopBody487_69 loopBody487_119

def loopBody487_121 : HolLoopProg 64 :=
.mark loopBody487_120

def loopBody487_122 : HolLoopProg 64 :=
.seq loopBody487_1 loopBody487_121

def loopBody487_123 : HolLoopProg 64 :=
.mark loopBody487_122

def loopBody487_124 : HolLoopProg 64 :=
.seq loopBody487_1 loopBody487_123

def loopBody487_125 : HolLoopProg 64 :=
.mark loopBody487_124

def loopBody487_126 : HolLoopProg 64 :=
.seq loopBody487_1 loopBody487_125

def loopBody487_127 : HolLoopProg 64 :=
.mark loopBody487_126

def loopBody487_128 : HolLoopProg 64 :=
.seq loopBody487_1 loopBody487_127

def loopBody487_129 : HolLoopProg 64 :=
.mark loopBody487_128

def loopBody487_130 : HolLoopProg 64 :=
.seq loopBody487_1 loopBody487_129

def loopBody487_131 : HolLoopProg 64 :=
.mark loopBody487_130

def loopBody487_132 : HolLoopProg 64 :=
.seq loopBody487_1 loopBody487_131

def loopBody487_133 : HolLoopProg 64 :=
.mark loopBody487_132

def loopBody487_134 : HolLoopProg 64 :=
.seq loopBody487_1 loopBody487_133

def loopBody487_135 : HolLoopProg 64 :=
.mark loopBody487_134

def loopBody487_136 : HolLoopProg 64 :=
.seq loopBody487_1 loopBody487_135

def loopBody487_137 : HolLoopProg 64 :=
.mark loopBody487_136

def loopBody487_138 : HolLoopProg 64 :=
.seq loopBody487_55 loopBody487_137

def loopBody487_139 : HolLoopProg 64 :=
.mark loopBody487_138

def loopBody487_140 : HolLoopProg 64 :=
.seq loopBody487_1 loopBody487_139

def loopBody487_141 : HolLoopProg 64 :=
.mark loopBody487_140

def loopBody487_142 : HolLoopProg 64 :=
.seq loopBody487_53 loopBody487_141

def loopBody487_143 : HolLoopProg 64 :=
.mark loopBody487_142

def loopBody487_144 : HolLoopProg 64 :=
.seq loopBody487_23 loopBody487_143

def loopBody487_145 : HolLoopProg 64 :=
.mark loopBody487_144

def loopBody487_146 : HolLoopProg 64 :=
.seq loopBody487_1 loopBody487_145

def loopBody487_147 : HolLoopProg 64 :=
.mark loopBody487_146

def loopBody487_148 : HolLoopProg 64 :=
.seq loopBody487_21 loopBody487_147

def loopBody487_149 : HolLoopProg 64 :=
.mark loopBody487_148

def loopBody487_150 : HolLoopProg 64 :=
.seq loopBody487_7 loopBody487_149

def loopBody487_151 : HolLoopProg 64 :=
.mark loopBody487_150

def loopBody487_152 : HolLoopProg 64 :=
.seq loopBody487_1 loopBody487_151

def loopBody487_153 : HolLoopProg 64 :=
.mark loopBody487_152

def loopBody487_154 : HolLoopProg 64 :=
.seq loopBody487_1 loopBody487_153

def loopBody487_155 : HolLoopProg 64 :=
.mark loopBody487_154

def loopBody487_156 : HolLoopProg 64 :=
.seq loopBody487_1 loopBody487_155

def loopBody487_157 : HolLoopProg 64 :=
.mark loopBody487_156

def loopBody487_158 : HolLoopProg 64 :=
.seq loopBody487_1 loopBody487_157

def loopBody487_159 : HolLoopProg 64 :=
.mark loopBody487_158

def loopBody487_160 : HolLoopProg 64 :=
.seq loopBody487_1 loopBody487_159

def loopBody487_161 : HolLoopProg 64 :=
.mark loopBody487_160

def loopBody487_162 : HolLoopProg 64 :=
.seq loopBody487_1 loopBody487_161

def loopBody487_163 : HolLoopProg 64 :=
.mark loopBody487_162

def loopBody487_164 : HolLoopProg 64 :=
.seq loopBody487_1 loopBody487_163

def loopBody487_165 : HolLoopProg 64 :=
.mark loopBody487_164

def loopBody487_166 : HolLoopProg 64 :=
.seq loopBody487_1 loopBody487_165

def loopBody487_167 : HolLoopProg 64 :=
.mark loopBody487_166

def output487 : Nat × List Nat × HolLoopProg 64 :=
  (551, [], loopBody487_167)
end InitECandidate.Proofs.FrontendStages.Loop
