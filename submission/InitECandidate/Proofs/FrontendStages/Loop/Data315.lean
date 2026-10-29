import InitECandidate.Proofs.FrontendStages.Loop.Translate299
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody315_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody315_1 : HolLoopProg 64 :=
.mark loopBody315_0

def loopBody315_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody315_3 : HolLoopProg 64 :=
.mark loopBody315_2

def loopBody315_4 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 69) ([]) (some (4, loopBody315_3, loopBody315_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody315_5 : HolLoopProg 64 :=
.mark loopBody315_4

def loopBody315_6 : HolLoopProg 64 :=
.seq loopBody315_5 loopBody315_1

def loopBody315_7 : HolLoopProg 64 :=
.mark loopBody315_6

def loopBody315_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 32#64)

def loopBody315_9 : HolLoopProg 64 :=
.mark loopBody315_8

def loopBody315_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody315_11 : HolLoopProg 64 :=
.mark loopBody315_10

def loopBody315_12 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([5]) (some (5, loopBody315_11, loopBody315_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody315_13 : HolLoopProg 64 :=
.mark loopBody315_12

def loopBody315_14 : HolLoopProg 64 :=
.seq loopBody315_13 loopBody315_1

def loopBody315_15 : HolLoopProg 64 :=
.mark loopBody315_14

def loopBody315_16 : HolLoopProg 64 :=
.seq loopBody315_9 loopBody315_15

def loopBody315_17 : HolLoopProg 64 :=
.mark loopBody315_16

def loopBody315_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody315_19 : HolLoopProg 64 :=
.mark loopBody315_18

def loopBody315_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody315_21 : HolLoopProg 64 :=
.mark loopBody315_20

def loopBody315_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 4)

def loopBody315_23 : HolLoopProg 64 :=
.mark loopBody315_22

def loopBody315_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody315_25 : HolLoopProg 64 :=
.mark loopBody315_24

def loopBody315_26 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 378) ([6, 7, 8]) (some (6, loopBody315_25, loopBody315_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))

def loopBody315_27 : HolLoopProg 64 :=
.mark loopBody315_26

def loopBody315_28 : HolLoopProg 64 :=
.seq loopBody315_27 loopBody315_1

def loopBody315_29 : HolLoopProg 64 :=
.mark loopBody315_28

def loopBody315_30 : HolLoopProg 64 :=
.seq loopBody315_23 loopBody315_29

def loopBody315_31 : HolLoopProg 64 :=
.mark loopBody315_30

def loopBody315_32 : HolLoopProg 64 :=
.seq loopBody315_21 loopBody315_31

def loopBody315_33 : HolLoopProg 64 :=
.mark loopBody315_32

def loopBody315_34 : HolLoopProg 64 :=
.seq loopBody315_19 loopBody315_33

def loopBody315_35 : HolLoopProg 64 :=
.mark loopBody315_34

def loopBody315_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody315_37 : HolLoopProg 64 :=
.mark loopBody315_36

def loopBody315_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 320#64]))

def loopBody315_39 : HolLoopProg 64 :=
.mark loopBody315_38

def loopBody315_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 320#64],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody315_41 : HolLoopProg 64 :=
.mark loopBody315_40

def loopBody315_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 320#64],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody315_43 : HolLoopProg 64 :=
.mark loopBody315_42

def loopBody315_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 320#64],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody315_45 : HolLoopProg 64 :=
.mark loopBody315_44

def loopBody315_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 352#64]))

def loopBody315_47 : HolLoopProg 64 :=
.mark loopBody315_46

def loopBody315_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 352#64],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody315_49 : HolLoopProg 64 :=
.mark loopBody315_48

def loopBody315_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 352#64],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody315_51 : HolLoopProg 64 :=
.mark loopBody315_50

def loopBody315_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 352#64],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody315_53 : HolLoopProg 64 :=
.mark loopBody315_52

def loopBody315_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 5)

def loopBody315_55 : HolLoopProg 64 :=
.mark loopBody315_54

def loopBody315_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 2)

def loopBody315_57 : HolLoopProg 64 :=
.mark loopBody315_56

def loopBody315_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody315_59 : HolLoopProg 64 :=
.mark loopBody315_58

def loopBody315_60 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 231) ([7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17]) (some (7, loopBody315_59, loopBody315_1, (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody315_61 : HolLoopProg 64 :=
.mark loopBody315_60

def loopBody315_62 : HolLoopProg 64 :=
.seq loopBody315_61 loopBody315_1

def loopBody315_63 : HolLoopProg 64 :=
.mark loopBody315_62

def loopBody315_64 : HolLoopProg 64 :=
.seq loopBody315_57 loopBody315_63

def loopBody315_65 : HolLoopProg 64 :=
.mark loopBody315_64

def loopBody315_66 : HolLoopProg 64 :=
.seq loopBody315_55 loopBody315_65

def loopBody315_67 : HolLoopProg 64 :=
.mark loopBody315_66

def loopBody315_68 : HolLoopProg 64 :=
.seq loopBody315_53 loopBody315_67

def loopBody315_69 : HolLoopProg 64 :=
.mark loopBody315_68

def loopBody315_70 : HolLoopProg 64 :=
.seq loopBody315_51 loopBody315_69

def loopBody315_71 : HolLoopProg 64 :=
.mark loopBody315_70

def loopBody315_72 : HolLoopProg 64 :=
.seq loopBody315_49 loopBody315_71

def loopBody315_73 : HolLoopProg 64 :=
.mark loopBody315_72

def loopBody315_74 : HolLoopProg 64 :=
.seq loopBody315_47 loopBody315_73

def loopBody315_75 : HolLoopProg 64 :=
.mark loopBody315_74

def loopBody315_76 : HolLoopProg 64 :=
.seq loopBody315_45 loopBody315_75

def loopBody315_77 : HolLoopProg 64 :=
.mark loopBody315_76

def loopBody315_78 : HolLoopProg 64 :=
.seq loopBody315_43 loopBody315_77

def loopBody315_79 : HolLoopProg 64 :=
.mark loopBody315_78

def loopBody315_80 : HolLoopProg 64 :=
.seq loopBody315_41 loopBody315_79

def loopBody315_81 : HolLoopProg 64 :=
.mark loopBody315_80

def loopBody315_82 : HolLoopProg 64 :=
.seq loopBody315_39 loopBody315_81

def loopBody315_83 : HolLoopProg 64 :=
.mark loopBody315_82

def loopBody315_84 : HolLoopProg 64 :=
.seq loopBody315_37 loopBody315_83

def loopBody315_85 : HolLoopProg 64 :=
.mark loopBody315_84

def loopBody315_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody315_87 : HolLoopProg 64 :=
.mark loopBody315_86

def loopBody315_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody315_89 : HolLoopProg 64 :=
.mark loopBody315_88

def loopBody315_90 : HolLoopProg 64 :=
.call (some ([7], Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)) (some 70) ([8]) (some (8, loopBody315_89, loopBody315_1, (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))

def loopBody315_91 : HolLoopProg 64 :=
.mark loopBody315_90

def loopBody315_92 : HolLoopProg 64 :=
.seq loopBody315_91 loopBody315_1

def loopBody315_93 : HolLoopProg 64 :=
.mark loopBody315_92

def loopBody315_94 : HolLoopProg 64 :=
.seq loopBody315_87 loopBody315_93

def loopBody315_95 : HolLoopProg 64 :=
.mark loopBody315_94

def loopBody315_96 : HolLoopProg 64 :=
.seq loopBody315_1 loopBody315_95

def loopBody315_97 : HolLoopProg 64 :=
.mark loopBody315_96

def loopBody315_98 : HolLoopProg 64 :=
.seq loopBody315_1 loopBody315_97

def loopBody315_99 : HolLoopProg 64 :=
.mark loopBody315_98

def loopBody315_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody315_101 : HolLoopProg 64 :=
.mark loopBody315_100

def loopBody315_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody315_103 : HolLoopProg 64 :=
.mark loopBody315_102

def loopBody315_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody315_105 : HolLoopProg 64 :=
.mark loopBody315_104

def loopBody315_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody315_107 : HolLoopProg 64 :=
.mark loopBody315_106

def loopBody315_108 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.RegImm.reg 9) loopBody315_105 loopBody315_107 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  Flapjack.Spt.ln)

def loopBody315_109 : HolLoopProg 64 :=
.mark loopBody315_108

def loopBody315_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody315_111 : HolLoopProg 64 :=
.mark loopBody315_110

def loopBody315_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 46#64)

def loopBody315_113 : HolLoopProg 64 :=
.mark loopBody315_112

def loopBody315_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 7)

def loopBody315_115 : HolLoopProg 64 :=
.mark loopBody315_114

def loopBody315_116 : HolLoopProg 64 :=
.seq loopBody315_115 loopBody315_1

def loopBody315_117 : HolLoopProg 64 :=
.mark loopBody315_116

def loopBody315_118 : HolLoopProg 64 :=
.seq loopBody315_117 loopBody315_1

def loopBody315_119 : HolLoopProg 64 :=
.mark loopBody315_118

def loopBody315_120 : HolLoopProg 64 :=
.seq loopBody315_113 loopBody315_119

def loopBody315_121 : HolLoopProg 64 :=
.mark loopBody315_120

def loopBody315_122 : HolLoopProg 64 :=
.seq loopBody315_1 loopBody315_121

def loopBody315_123 : HolLoopProg 64 :=
.mark loopBody315_122

def loopBody315_124 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 6#64)

def loopBody315_125 : HolLoopProg 64 :=
.mark loopBody315_124

def loopBody315_126 : HolLoopProg 64 :=
.seq loopBody315_125 loopBody315_59

def loopBody315_127 : HolLoopProg 64 :=
.mark loopBody315_126

def loopBody315_128 : HolLoopProg 64 :=
.seq loopBody315_123 loopBody315_127

def loopBody315_129 : HolLoopProg 64 :=
.mark loopBody315_128

def loopBody315_130 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody315_129 loopBody315_1 (Flapjack.Spt.ln)

def loopBody315_131 : HolLoopProg 64 :=
.mark loopBody315_130

def loopBody315_132 : HolLoopProg 64 :=
.seq loopBody315_131 loopBody315_1

def loopBody315_133 : HolLoopProg 64 :=
.mark loopBody315_132

def loopBody315_134 : HolLoopProg 64 :=
.seq loopBody315_111 loopBody315_133

def loopBody315_135 : HolLoopProg 64 :=
.mark loopBody315_134

def loopBody315_136 : HolLoopProg 64 :=
.seq loopBody315_109 loopBody315_135

def loopBody315_137 : HolLoopProg 64 :=
.mark loopBody315_136

def loopBody315_138 : HolLoopProg 64 :=
.seq loopBody315_103 loopBody315_137

def loopBody315_139 : HolLoopProg 64 :=
.mark loopBody315_138

def loopBody315_140 : HolLoopProg 64 :=
.seq loopBody315_101 loopBody315_139

def loopBody315_141 : HolLoopProg 64 :=
.mark loopBody315_140

def loopBody315_142 : HolLoopProg 64 :=
.seq loopBody315_99 loopBody315_141

def loopBody315_143 : HolLoopProg 64 :=
.mark loopBody315_142

def loopBody315_144 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody315_145 : HolLoopProg 64 :=
.mark loopBody315_144

def loopBody315_146 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [7]

def loopBody315_147 : HolLoopProg 64 :=
.mark loopBody315_146

def loopBody315_148 : HolLoopProg 64 :=
.seq loopBody315_147 loopBody315_1

def loopBody315_149 : HolLoopProg 64 :=
.mark loopBody315_148

def loopBody315_150 : HolLoopProg 64 :=
.seq loopBody315_145 loopBody315_149

def loopBody315_151 : HolLoopProg 64 :=
.mark loopBody315_150

def loopBody315_152 : HolLoopProg 64 :=
.seq loopBody315_143 loopBody315_151

def loopBody315_153 : HolLoopProg 64 :=
.mark loopBody315_152

def loopBody315_154 : HolLoopProg 64 :=
.seq loopBody315_85 loopBody315_153

def loopBody315_155 : HolLoopProg 64 :=
.mark loopBody315_154

def loopBody315_156 : HolLoopProg 64 :=
.seq loopBody315_1 loopBody315_155

def loopBody315_157 : HolLoopProg 64 :=
.mark loopBody315_156

def loopBody315_158 : HolLoopProg 64 :=
.seq loopBody315_1 loopBody315_157

def loopBody315_159 : HolLoopProg 64 :=
.mark loopBody315_158

def loopBody315_160 : HolLoopProg 64 :=
.seq loopBody315_35 loopBody315_159

def loopBody315_161 : HolLoopProg 64 :=
.mark loopBody315_160

def loopBody315_162 : HolLoopProg 64 :=
.seq loopBody315_1 loopBody315_161

def loopBody315_163 : HolLoopProg 64 :=
.mark loopBody315_162

def loopBody315_164 : HolLoopProg 64 :=
.seq loopBody315_1 loopBody315_163

def loopBody315_165 : HolLoopProg 64 :=
.mark loopBody315_164

def loopBody315_166 : HolLoopProg 64 :=
.seq loopBody315_17 loopBody315_165

def loopBody315_167 : HolLoopProg 64 :=
.mark loopBody315_166

def loopBody315_168 : HolLoopProg 64 :=
.seq loopBody315_1 loopBody315_167

def loopBody315_169 : HolLoopProg 64 :=
.mark loopBody315_168

def loopBody315_170 : HolLoopProg 64 :=
.seq loopBody315_1 loopBody315_169

def loopBody315_171 : HolLoopProg 64 :=
.mark loopBody315_170

def loopBody315_172 : HolLoopProg 64 :=
.seq loopBody315_7 loopBody315_171

def loopBody315_173 : HolLoopProg 64 :=
.mark loopBody315_172

def loopBody315_174 : HolLoopProg 64 :=
.seq loopBody315_1 loopBody315_173

def loopBody315_175 : HolLoopProg 64 :=
.mark loopBody315_174

def loopBody315_176 : HolLoopProg 64 :=
.seq loopBody315_1 loopBody315_175

def loopBody315_177 : HolLoopProg 64 :=
.mark loopBody315_176

def output315 : Nat × List Nat × HolLoopProg 64 :=
  (379, [0, 1, 2], loopBody315_177)
end InitECandidate.Proofs.FrontendStages.Loop
