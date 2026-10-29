import InitECandidate.Proofs.FrontendStages.Loop.Translate456
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody472_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody472_1 : HolLoopProg 64 :=
.mark loopBody472_0

def loopBody472_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody472_3 : HolLoopProg 64 :=
.mark loopBody472_2

def loopBody472_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody472_5 : HolLoopProg 64 :=
.mark loopBody472_4

def loopBody472_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody472_7 : HolLoopProg 64 :=
.mark loopBody472_6

def loopBody472_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.RegImm.reg 3) loopBody472_5 loopBody472_7 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def loopBody472_9 : HolLoopProg 64 :=
.mark loopBody472_8

def loopBody472_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody472_11 : HolLoopProg 64 :=
.mark loopBody472_10

def loopBody472_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody472_13 : HolLoopProg 64 :=
.mark loopBody472_12

def loopBody472_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 2#64)

def loopBody472_15 : HolLoopProg 64 :=
.mark loopBody472_14

def loopBody472_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody472_17 : HolLoopProg 64 :=
.mark loopBody472_16

def loopBody472_18 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 470) ([2]) (some (2, loopBody472_17, loopBody472_13, (Flapjack.Spt.ls PUnit.unit)))

def loopBody472_19 : HolLoopProg 64 :=
.mark loopBody472_18

def loopBody472_20 : HolLoopProg 64 :=
.seq loopBody472_19 loopBody472_13

def loopBody472_21 : HolLoopProg 64 :=
.mark loopBody472_20

def loopBody472_22 : HolLoopProg 64 :=
.seq loopBody472_15 loopBody472_21

def loopBody472_23 : HolLoopProg 64 :=
.mark loopBody472_22

def loopBody472_24 : HolLoopProg 64 :=
.seq loopBody472_13 loopBody472_23

def loopBody472_25 : HolLoopProg 64 :=
.mark loopBody472_24

def loopBody472_26 : HolLoopProg 64 :=
.seq loopBody472_13 loopBody472_25

def loopBody472_27 : HolLoopProg 64 :=
.mark loopBody472_26

def loopBody472_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 3#64)

def loopBody472_29 : HolLoopProg 64 :=
.mark loopBody472_28

def loopBody472_30 : HolLoopProg 64 :=
.seq loopBody472_29 loopBody472_21

def loopBody472_31 : HolLoopProg 64 :=
.mark loopBody472_30

def loopBody472_32 : HolLoopProg 64 :=
.seq loopBody472_13 loopBody472_31

def loopBody472_33 : HolLoopProg 64 :=
.mark loopBody472_32

def loopBody472_34 : HolLoopProg 64 :=
.seq loopBody472_13 loopBody472_33

def loopBody472_35 : HolLoopProg 64 :=
.mark loopBody472_34

def loopBody472_36 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody472_27 loopBody472_35 (Flapjack.Spt.ls PUnit.unit)

def loopBody472_37 : HolLoopProg 64 :=
.mark loopBody472_36

def loopBody472_38 : HolLoopProg 64 :=
.seq loopBody472_37 loopBody472_13

def loopBody472_39 : HolLoopProg 64 :=
.mark loopBody472_38

def loopBody472_40 : HolLoopProg 64 :=
.seq loopBody472_11 loopBody472_39

def loopBody472_41 : HolLoopProg 64 :=
.mark loopBody472_40

def loopBody472_42 : HolLoopProg 64 :=
.seq loopBody472_9 loopBody472_41

def loopBody472_43 : HolLoopProg 64 :=
.mark loopBody472_42

def loopBody472_44 : HolLoopProg 64 :=
.seq loopBody472_3 loopBody472_43

def loopBody472_45 : HolLoopProg 64 :=
.mark loopBody472_44

def loopBody472_46 : HolLoopProg 64 :=
.seq loopBody472_1 loopBody472_45

def loopBody472_47 : HolLoopProg 64 :=
.mark loopBody472_46

def loopBody472_48 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 69) ([]) (some (2, loopBody472_17, loopBody472_13, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody472_49 : HolLoopProg 64 :=
.mark loopBody472_48

def loopBody472_50 : HolLoopProg 64 :=
.seq loopBody472_49 loopBody472_13

def loopBody472_51 : HolLoopProg 64 :=
.mark loopBody472_50

def loopBody472_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 32#64)

def loopBody472_53 : HolLoopProg 64 :=
.mark loopBody472_52

def loopBody472_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody472_55 : HolLoopProg 64 :=
.mark loopBody472_54

def loopBody472_56 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([3]) (some (3, loopBody472_55, loopBody472_13, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody472_57 : HolLoopProg 64 :=
.mark loopBody472_56

def loopBody472_58 : HolLoopProg 64 :=
.seq loopBody472_57 loopBody472_13

def loopBody472_59 : HolLoopProg 64 :=
.mark loopBody472_58

def loopBody472_60 : HolLoopProg 64 :=
.seq loopBody472_53 loopBody472_59

def loopBody472_61 : HolLoopProg 64 :=
.mark loopBody472_60

def loopBody472_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 48#64]))

def loopBody472_63 : HolLoopProg 64 :=
.mark loopBody472_62

def loopBody472_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 56#64]))

def loopBody472_65 : HolLoopProg 64 :=
.mark loopBody472_64

def loopBody472_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.load
              (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
            Flapjack.HolLoopExp.const 0#64]),
      Flapjack.HolLoopExp.const 1#64])

def loopBody472_67 : HolLoopProg 64 :=
.mark loopBody472_66

def loopBody472_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 0)

def loopBody472_69 : HolLoopProg 64 :=
.mark loopBody472_68

def loopBody472_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody472_71 : HolLoopProg 64 :=
.mark loopBody472_70

def loopBody472_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody472_73 : HolLoopProg 64 :=
.mark loopBody472_72

def loopBody472_74 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 484) ([4, 5, 6, 7, 8]) (some (4, loopBody472_73, loopBody472_13, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody472_75 : HolLoopProg 64 :=
.mark loopBody472_74

def loopBody472_76 : HolLoopProg 64 :=
.seq loopBody472_75 loopBody472_13

def loopBody472_77 : HolLoopProg 64 :=
.mark loopBody472_76

def loopBody472_78 : HolLoopProg 64 :=
.seq loopBody472_71 loopBody472_77

def loopBody472_79 : HolLoopProg 64 :=
.mark loopBody472_78

def loopBody472_80 : HolLoopProg 64 :=
.seq loopBody472_69 loopBody472_79

def loopBody472_81 : HolLoopProg 64 :=
.mark loopBody472_80

def loopBody472_82 : HolLoopProg 64 :=
.seq loopBody472_67 loopBody472_81

def loopBody472_83 : HolLoopProg 64 :=
.mark loopBody472_82

def loopBody472_84 : HolLoopProg 64 :=
.seq loopBody472_65 loopBody472_83

def loopBody472_85 : HolLoopProg 64 :=
.mark loopBody472_84

def loopBody472_86 : HolLoopProg 64 :=
.seq loopBody472_63 loopBody472_85

def loopBody472_87 : HolLoopProg 64 :=
.mark loopBody472_86

def loopBody472_88 : HolLoopProg 64 :=
.seq loopBody472_13 loopBody472_87

def loopBody472_89 : HolLoopProg 64 :=
.mark loopBody472_88

def loopBody472_90 : HolLoopProg 64 :=
.seq loopBody472_13 loopBody472_89

def loopBody472_91 : HolLoopProg 64 :=
.mark loopBody472_90

def loopBody472_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody472_93 : HolLoopProg 64 :=
.mark loopBody472_92

def loopBody472_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 0)

def loopBody472_95 : HolLoopProg 64 :=
.mark loopBody472_94

def loopBody472_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody472_97 : HolLoopProg 64 :=
.mark loopBody472_96

def loopBody472_98 : HolLoopProg 64 :=
.call (some ([3, 4, 5, 6], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 146) ([7, 8]) (some (7, loopBody472_97, loopBody472_13, (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody472_99 : HolLoopProg 64 :=
.mark loopBody472_98

def loopBody472_100 : HolLoopProg 64 :=
.seq loopBody472_99 loopBody472_13

def loopBody472_101 : HolLoopProg 64 :=
.mark loopBody472_100

def loopBody472_102 : HolLoopProg 64 :=
.seq loopBody472_95 loopBody472_101

def loopBody472_103 : HolLoopProg 64 :=
.mark loopBody472_102

def loopBody472_104 : HolLoopProg 64 :=
.seq loopBody472_93 loopBody472_103

def loopBody472_105 : HolLoopProg 64 :=
.mark loopBody472_104

def loopBody472_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody472_107 : HolLoopProg 64 :=
.mark loopBody472_106

def loopBody472_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody472_109 : HolLoopProg 64 :=
.mark loopBody472_108

def loopBody472_110 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))) (some 70) ([8]) (some (8, loopBody472_109, loopBody472_13, (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))

def loopBody472_111 : HolLoopProg 64 :=
.mark loopBody472_110

def loopBody472_112 : HolLoopProg 64 :=
.seq loopBody472_111 loopBody472_13

def loopBody472_113 : HolLoopProg 64 :=
.mark loopBody472_112

def loopBody472_114 : HolLoopProg 64 :=
.seq loopBody472_107 loopBody472_113

def loopBody472_115 : HolLoopProg 64 :=
.mark loopBody472_114

def loopBody472_116 : HolLoopProg 64 :=
.seq loopBody472_13 loopBody472_115

def loopBody472_117 : HolLoopProg 64 :=
.mark loopBody472_116

def loopBody472_118 : HolLoopProg 64 :=
.seq loopBody472_13 loopBody472_117

def loopBody472_119 : HolLoopProg 64 :=
.mark loopBody472_118

def loopBody472_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody472_121 : HolLoopProg 64 :=
.mark loopBody472_120

def loopBody472_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 4)

def loopBody472_123 : HolLoopProg 64 :=
.mark loopBody472_122

def loopBody472_124 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 5)

def loopBody472_125 : HolLoopProg 64 :=
.mark loopBody472_124

def loopBody472_126 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 6)

def loopBody472_127 : HolLoopProg 64 :=
.mark loopBody472_126

def loopBody472_128 : HolLoopProg 64 :=
.call (some ([7], Flapjack.Spt.ls PUnit.unit)) (some 476) ([8, 9, 10, 11]) (some (8, loopBody472_109, loopBody472_13, (Flapjack.Spt.ls PUnit.unit)))

def loopBody472_129 : HolLoopProg 64 :=
.mark loopBody472_128

def loopBody472_130 : HolLoopProg 64 :=
.seq loopBody472_129 loopBody472_13

def loopBody472_131 : HolLoopProg 64 :=
.mark loopBody472_130

def loopBody472_132 : HolLoopProg 64 :=
.seq loopBody472_127 loopBody472_131

def loopBody472_133 : HolLoopProg 64 :=
.mark loopBody472_132

def loopBody472_134 : HolLoopProg 64 :=
.seq loopBody472_125 loopBody472_133

def loopBody472_135 : HolLoopProg 64 :=
.mark loopBody472_134

def loopBody472_136 : HolLoopProg 64 :=
.seq loopBody472_123 loopBody472_135

def loopBody472_137 : HolLoopProg 64 :=
.mark loopBody472_136

def loopBody472_138 : HolLoopProg 64 :=
.seq loopBody472_121 loopBody472_137

def loopBody472_139 : HolLoopProg 64 :=
.mark loopBody472_138

def loopBody472_140 : HolLoopProg 64 :=
.seq loopBody472_13 loopBody472_139

def loopBody472_141 : HolLoopProg 64 :=
.mark loopBody472_140

def loopBody472_142 : HolLoopProg 64 :=
.seq loopBody472_13 loopBody472_141

def loopBody472_143 : HolLoopProg 64 :=
.mark loopBody472_142

def loopBody472_144 : HolLoopProg 64 :=
.seq loopBody472_119 loopBody472_143

def loopBody472_145 : HolLoopProg 64 :=
.mark loopBody472_144

def loopBody472_146 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.const 1#64, Flapjack.HolLoopExp.var 0])

def loopBody472_147 : HolLoopProg 64 :=
.mark loopBody472_146

def loopBody472_148 : HolLoopProg 64 :=
.call (some ([7], Flapjack.Spt.ln)) (some 490) ([8]) (some (8, loopBody472_109, loopBody472_13, (Flapjack.Spt.ln)))

def loopBody472_149 : HolLoopProg 64 :=
.mark loopBody472_148

def loopBody472_150 : HolLoopProg 64 :=
.seq loopBody472_149 loopBody472_13

def loopBody472_151 : HolLoopProg 64 :=
.mark loopBody472_150

def loopBody472_152 : HolLoopProg 64 :=
.seq loopBody472_147 loopBody472_151

def loopBody472_153 : HolLoopProg 64 :=
.mark loopBody472_152

def loopBody472_154 : HolLoopProg 64 :=
.seq loopBody472_13 loopBody472_153

def loopBody472_155 : HolLoopProg 64 :=
.mark loopBody472_154

def loopBody472_156 : HolLoopProg 64 :=
.seq loopBody472_13 loopBody472_155

def loopBody472_157 : HolLoopProg 64 :=
.mark loopBody472_156

def loopBody472_158 : HolLoopProg 64 :=
.seq loopBody472_145 loopBody472_157

def loopBody472_159 : HolLoopProg 64 :=
.mark loopBody472_158

def loopBody472_160 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody472_161 : HolLoopProg 64 :=
.mark loopBody472_160

def loopBody472_162 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [7]

def loopBody472_163 : HolLoopProg 64 :=
.mark loopBody472_162

def loopBody472_164 : HolLoopProg 64 :=
.seq loopBody472_163 loopBody472_13

def loopBody472_165 : HolLoopProg 64 :=
.mark loopBody472_164

def loopBody472_166 : HolLoopProg 64 :=
.seq loopBody472_161 loopBody472_165

def loopBody472_167 : HolLoopProg 64 :=
.mark loopBody472_166

def loopBody472_168 : HolLoopProg 64 :=
.seq loopBody472_159 loopBody472_167

def loopBody472_169 : HolLoopProg 64 :=
.mark loopBody472_168

def loopBody472_170 : HolLoopProg 64 :=
.seq loopBody472_105 loopBody472_169

def loopBody472_171 : HolLoopProg 64 :=
.mark loopBody472_170

def loopBody472_172 : HolLoopProg 64 :=
.seq loopBody472_13 loopBody472_171

def loopBody472_173 : HolLoopProg 64 :=
.mark loopBody472_172

def loopBody472_174 : HolLoopProg 64 :=
.seq loopBody472_13 loopBody472_173

def loopBody472_175 : HolLoopProg 64 :=
.mark loopBody472_174

def loopBody472_176 : HolLoopProg 64 :=
.seq loopBody472_13 loopBody472_175

def loopBody472_177 : HolLoopProg 64 :=
.mark loopBody472_176

def loopBody472_178 : HolLoopProg 64 :=
.seq loopBody472_13 loopBody472_177

def loopBody472_179 : HolLoopProg 64 :=
.mark loopBody472_178

def loopBody472_180 : HolLoopProg 64 :=
.seq loopBody472_13 loopBody472_179

def loopBody472_181 : HolLoopProg 64 :=
.mark loopBody472_180

def loopBody472_182 : HolLoopProg 64 :=
.seq loopBody472_13 loopBody472_181

def loopBody472_183 : HolLoopProg 64 :=
.mark loopBody472_182

def loopBody472_184 : HolLoopProg 64 :=
.seq loopBody472_13 loopBody472_183

def loopBody472_185 : HolLoopProg 64 :=
.mark loopBody472_184

def loopBody472_186 : HolLoopProg 64 :=
.seq loopBody472_13 loopBody472_185

def loopBody472_187 : HolLoopProg 64 :=
.mark loopBody472_186

def loopBody472_188 : HolLoopProg 64 :=
.seq loopBody472_91 loopBody472_187

def loopBody472_189 : HolLoopProg 64 :=
.mark loopBody472_188

def loopBody472_190 : HolLoopProg 64 :=
.seq loopBody472_61 loopBody472_189

def loopBody472_191 : HolLoopProg 64 :=
.mark loopBody472_190

def loopBody472_192 : HolLoopProg 64 :=
.seq loopBody472_13 loopBody472_191

def loopBody472_193 : HolLoopProg 64 :=
.mark loopBody472_192

def loopBody472_194 : HolLoopProg 64 :=
.seq loopBody472_13 loopBody472_193

def loopBody472_195 : HolLoopProg 64 :=
.mark loopBody472_194

def loopBody472_196 : HolLoopProg 64 :=
.seq loopBody472_51 loopBody472_195

def loopBody472_197 : HolLoopProg 64 :=
.mark loopBody472_196

def loopBody472_198 : HolLoopProg 64 :=
.seq loopBody472_13 loopBody472_197

def loopBody472_199 : HolLoopProg 64 :=
.mark loopBody472_198

def loopBody472_200 : HolLoopProg 64 :=
.seq loopBody472_13 loopBody472_199

def loopBody472_201 : HolLoopProg 64 :=
.mark loopBody472_200

def loopBody472_202 : HolLoopProg 64 :=
.seq loopBody472_47 loopBody472_201

def loopBody472_203 : HolLoopProg 64 :=
.mark loopBody472_202

def output472 : Nat × List Nat × HolLoopProg 64 :=
  (536, [0], loopBody472_203)
end InitECandidate.Proofs.FrontendStages.Loop
