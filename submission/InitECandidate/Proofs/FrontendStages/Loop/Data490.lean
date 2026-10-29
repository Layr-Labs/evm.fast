import InitECandidate.Proofs.FrontendStages.Loop.Translate474
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody490_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody490_1 : HolLoopProg 64 :=
.mark loopBody490_0

def loopBody490_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody490_3 : HolLoopProg 64 :=
.mark loopBody490_2

def loopBody490_4 : HolLoopProg 64 :=
.call (some ([1, 2, 3, 4], Flapjack.Spt.ln)) (some 475) ([]) (some (5, loopBody490_3, loopBody490_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody490_5 : HolLoopProg 64 :=
.mark loopBody490_4

def loopBody490_6 : HolLoopProg 64 :=
.seq loopBody490_5 loopBody490_1

def loopBody490_7 : HolLoopProg 64 :=
.mark loopBody490_6

def loopBody490_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody490_9 : HolLoopProg 64 :=
.mark loopBody490_8

def loopBody490_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody490_11 : HolLoopProg 64 :=
.mark loopBody490_10

def loopBody490_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody490_13 : HolLoopProg 64 :=
.mark loopBody490_12

def loopBody490_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 4)

def loopBody490_15 : HolLoopProg 64 :=
.mark loopBody490_14

def loopBody490_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody490_17 : HolLoopProg 64 :=
.mark loopBody490_16

def loopBody490_18 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.ln)) (some 466) ([6, 7, 8, 9]) (some (6, loopBody490_17, loopBody490_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody490_19 : HolLoopProg 64 :=
.mark loopBody490_18

def loopBody490_20 : HolLoopProg 64 :=
.seq loopBody490_19 loopBody490_1

def loopBody490_21 : HolLoopProg 64 :=
.mark loopBody490_20

def loopBody490_22 : HolLoopProg 64 :=
.seq loopBody490_15 loopBody490_21

def loopBody490_23 : HolLoopProg 64 :=
.mark loopBody490_22

def loopBody490_24 : HolLoopProg 64 :=
.seq loopBody490_13 loopBody490_23

def loopBody490_25 : HolLoopProg 64 :=
.mark loopBody490_24

def loopBody490_26 : HolLoopProg 64 :=
.seq loopBody490_11 loopBody490_25

def loopBody490_27 : HolLoopProg 64 :=
.mark loopBody490_26

def loopBody490_28 : HolLoopProg 64 :=
.seq loopBody490_9 loopBody490_27

def loopBody490_29 : HolLoopProg 64 :=
.mark loopBody490_28

def loopBody490_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody490_31 : HolLoopProg 64 :=
.mark loopBody490_30

def loopBody490_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody490_33 : HolLoopProg 64 :=
.mark loopBody490_32

def loopBody490_34 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))) (some 495) ([7]) (some (7, loopBody490_33, loopBody490_1, (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody490_35 : HolLoopProg 64 :=
.mark loopBody490_34

def loopBody490_36 : HolLoopProg 64 :=
.seq loopBody490_35 loopBody490_1

def loopBody490_37 : HolLoopProg 64 :=
.mark loopBody490_36

def loopBody490_38 : HolLoopProg 64 :=
.seq loopBody490_31 loopBody490_37

def loopBody490_39 : HolLoopProg 64 :=
.mark loopBody490_38

def loopBody490_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody490_41 : HolLoopProg 64 :=
.mark loopBody490_40

def loopBody490_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody490_43 : HolLoopProg 64 :=
.mark loopBody490_42

def loopBody490_44 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))) (some 470) ([8]) (some (8, loopBody490_43, loopBody490_1, (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody490_45 : HolLoopProg 64 :=
.mark loopBody490_44

def loopBody490_46 : HolLoopProg 64 :=
.seq loopBody490_45 loopBody490_1

def loopBody490_47 : HolLoopProg 64 :=
.mark loopBody490_46

def loopBody490_48 : HolLoopProg 64 :=
.seq loopBody490_41 loopBody490_47

def loopBody490_49 : HolLoopProg 64 :=
.mark loopBody490_48

def loopBody490_50 : HolLoopProg 64 :=
.seq loopBody490_1 loopBody490_49

def loopBody490_51 : HolLoopProg 64 :=
.mark loopBody490_50

def loopBody490_52 : HolLoopProg 64 :=
.seq loopBody490_1 loopBody490_51

def loopBody490_53 : HolLoopProg 64 :=
.mark loopBody490_52

def loopBody490_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody490_55 : HolLoopProg 64 :=
.mark loopBody490_54

def loopBody490_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 6)

def loopBody490_57 : HolLoopProg 64 :=
.mark loopBody490_56

def loopBody490_58 : HolLoopProg 64 :=
.call (some ([7], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))) (some 496) ([8, 9]) (some (8, loopBody490_43, loopBody490_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody490_59 : HolLoopProg 64 :=
.mark loopBody490_58

def loopBody490_60 : HolLoopProg 64 :=
.seq loopBody490_59 loopBody490_1

def loopBody490_61 : HolLoopProg 64 :=
.mark loopBody490_60

def loopBody490_62 : HolLoopProg 64 :=
.seq loopBody490_57 loopBody490_61

def loopBody490_63 : HolLoopProg 64 :=
.mark loopBody490_62

def loopBody490_64 : HolLoopProg 64 :=
.seq loopBody490_55 loopBody490_63

def loopBody490_65 : HolLoopProg 64 :=
.mark loopBody490_64

def loopBody490_66 : HolLoopProg 64 :=
.seq loopBody490_1 loopBody490_65

def loopBody490_67 : HolLoopProg 64 :=
.mark loopBody490_66

def loopBody490_68 : HolLoopProg 64 :=
.seq loopBody490_1 loopBody490_67

def loopBody490_69 : HolLoopProg 64 :=
.mark loopBody490_68

def loopBody490_70 : HolLoopProg 64 :=
.seq loopBody490_53 loopBody490_69

def loopBody490_71 : HolLoopProg 64 :=
.mark loopBody490_70

def loopBody490_72 : HolLoopProg 64 :=
.call (some ([7], Flapjack.Spt.ln)) (some 407) ([8]) (some (8, loopBody490_43, loopBody490_1, (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody490_73 : HolLoopProg 64 :=
.mark loopBody490_72

def loopBody490_74 : HolLoopProg 64 :=
.seq loopBody490_73 loopBody490_1

def loopBody490_75 : HolLoopProg 64 :=
.mark loopBody490_74

def loopBody490_76 : HolLoopProg 64 :=
.seq loopBody490_55 loopBody490_75

def loopBody490_77 : HolLoopProg 64 :=
.mark loopBody490_76

def loopBody490_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.const 8#64]))

def loopBody490_79 : HolLoopProg 64 :=
.mark loopBody490_78

def loopBody490_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.const 8#64],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody490_81 : HolLoopProg 64 :=
.mark loopBody490_80

def loopBody490_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.const 8#64],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody490_83 : HolLoopProg 64 :=
.mark loopBody490_82

def loopBody490_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.const 8#64],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody490_85 : HolLoopProg 64 :=
.mark loopBody490_84

def loopBody490_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody490_87 : HolLoopProg 64 :=
.mark loopBody490_86

def loopBody490_88 : HolLoopProg 64 :=
.call (some ([8], Flapjack.Spt.ln)) (some 476) ([9, 10, 11, 12]) (some (9, loopBody490_87, loopBody490_1, (Flapjack.Spt.ln)))

def loopBody490_89 : HolLoopProg 64 :=
.mark loopBody490_88

def loopBody490_90 : HolLoopProg 64 :=
.seq loopBody490_89 loopBody490_1

def loopBody490_91 : HolLoopProg 64 :=
.mark loopBody490_90

def loopBody490_92 : HolLoopProg 64 :=
.seq loopBody490_85 loopBody490_91

def loopBody490_93 : HolLoopProg 64 :=
.mark loopBody490_92

def loopBody490_94 : HolLoopProg 64 :=
.seq loopBody490_83 loopBody490_93

def loopBody490_95 : HolLoopProg 64 :=
.mark loopBody490_94

def loopBody490_96 : HolLoopProg 64 :=
.seq loopBody490_81 loopBody490_95

def loopBody490_97 : HolLoopProg 64 :=
.mark loopBody490_96

def loopBody490_98 : HolLoopProg 64 :=
.seq loopBody490_79 loopBody490_97

def loopBody490_99 : HolLoopProg 64 :=
.mark loopBody490_98

def loopBody490_100 : HolLoopProg 64 :=
.seq loopBody490_1 loopBody490_99

def loopBody490_101 : HolLoopProg 64 :=
.mark loopBody490_100

def loopBody490_102 : HolLoopProg 64 :=
.seq loopBody490_1 loopBody490_101

def loopBody490_103 : HolLoopProg 64 :=
.mark loopBody490_102

def loopBody490_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 1#64)

def loopBody490_105 : HolLoopProg 64 :=
.mark loopBody490_104

def loopBody490_106 : HolLoopProg 64 :=
.call (some ([8], Flapjack.Spt.ln)) (some 490) ([9]) (some (9, loopBody490_87, loopBody490_1, (Flapjack.Spt.ln)))

def loopBody490_107 : HolLoopProg 64 :=
.mark loopBody490_106

def loopBody490_108 : HolLoopProg 64 :=
.seq loopBody490_107 loopBody490_1

def loopBody490_109 : HolLoopProg 64 :=
.mark loopBody490_108

def loopBody490_110 : HolLoopProg 64 :=
.seq loopBody490_105 loopBody490_109

def loopBody490_111 : HolLoopProg 64 :=
.mark loopBody490_110

def loopBody490_112 : HolLoopProg 64 :=
.seq loopBody490_1 loopBody490_111

def loopBody490_113 : HolLoopProg 64 :=
.mark loopBody490_112

def loopBody490_114 : HolLoopProg 64 :=
.seq loopBody490_1 loopBody490_113

def loopBody490_115 : HolLoopProg 64 :=
.mark loopBody490_114

def loopBody490_116 : HolLoopProg 64 :=
.seq loopBody490_103 loopBody490_115

def loopBody490_117 : HolLoopProg 64 :=
.mark loopBody490_116

def loopBody490_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody490_119 : HolLoopProg 64 :=
.mark loopBody490_118

def loopBody490_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [8]

def loopBody490_121 : HolLoopProg 64 :=
.mark loopBody490_120

def loopBody490_122 : HolLoopProg 64 :=
.seq loopBody490_121 loopBody490_1

def loopBody490_123 : HolLoopProg 64 :=
.mark loopBody490_122

def loopBody490_124 : HolLoopProg 64 :=
.seq loopBody490_119 loopBody490_123

def loopBody490_125 : HolLoopProg 64 :=
.mark loopBody490_124

def loopBody490_126 : HolLoopProg 64 :=
.seq loopBody490_117 loopBody490_125

def loopBody490_127 : HolLoopProg 64 :=
.mark loopBody490_126

def loopBody490_128 : HolLoopProg 64 :=
.seq loopBody490_77 loopBody490_127

def loopBody490_129 : HolLoopProg 64 :=
.mark loopBody490_128

def loopBody490_130 : HolLoopProg 64 :=
.seq loopBody490_1 loopBody490_129

def loopBody490_131 : HolLoopProg 64 :=
.mark loopBody490_130

def loopBody490_132 : HolLoopProg 64 :=
.seq loopBody490_1 loopBody490_131

def loopBody490_133 : HolLoopProg 64 :=
.mark loopBody490_132

def loopBody490_134 : HolLoopProg 64 :=
.seq loopBody490_71 loopBody490_133

def loopBody490_135 : HolLoopProg 64 :=
.mark loopBody490_134

def loopBody490_136 : HolLoopProg 64 :=
.seq loopBody490_39 loopBody490_135

def loopBody490_137 : HolLoopProg 64 :=
.mark loopBody490_136

def loopBody490_138 : HolLoopProg 64 :=
.seq loopBody490_1 loopBody490_137

def loopBody490_139 : HolLoopProg 64 :=
.mark loopBody490_138

def loopBody490_140 : HolLoopProg 64 :=
.seq loopBody490_1 loopBody490_139

def loopBody490_141 : HolLoopProg 64 :=
.mark loopBody490_140

def loopBody490_142 : HolLoopProg 64 :=
.seq loopBody490_29 loopBody490_141

def loopBody490_143 : HolLoopProg 64 :=
.mark loopBody490_142

def loopBody490_144 : HolLoopProg 64 :=
.seq loopBody490_1 loopBody490_143

def loopBody490_145 : HolLoopProg 64 :=
.mark loopBody490_144

def loopBody490_146 : HolLoopProg 64 :=
.seq loopBody490_1 loopBody490_145

def loopBody490_147 : HolLoopProg 64 :=
.mark loopBody490_146

def loopBody490_148 : HolLoopProg 64 :=
.seq loopBody490_7 loopBody490_147

def loopBody490_149 : HolLoopProg 64 :=
.mark loopBody490_148

def loopBody490_150 : HolLoopProg 64 :=
.seq loopBody490_1 loopBody490_149

def loopBody490_151 : HolLoopProg 64 :=
.mark loopBody490_150

def loopBody490_152 : HolLoopProg 64 :=
.seq loopBody490_1 loopBody490_151

def loopBody490_153 : HolLoopProg 64 :=
.mark loopBody490_152

def loopBody490_154 : HolLoopProg 64 :=
.seq loopBody490_1 loopBody490_153

def loopBody490_155 : HolLoopProg 64 :=
.mark loopBody490_154

def loopBody490_156 : HolLoopProg 64 :=
.seq loopBody490_1 loopBody490_155

def loopBody490_157 : HolLoopProg 64 :=
.mark loopBody490_156

def loopBody490_158 : HolLoopProg 64 :=
.seq loopBody490_1 loopBody490_157

def loopBody490_159 : HolLoopProg 64 :=
.mark loopBody490_158

def loopBody490_160 : HolLoopProg 64 :=
.seq loopBody490_1 loopBody490_159

def loopBody490_161 : HolLoopProg 64 :=
.mark loopBody490_160

def loopBody490_162 : HolLoopProg 64 :=
.seq loopBody490_1 loopBody490_161

def loopBody490_163 : HolLoopProg 64 :=
.mark loopBody490_162

def loopBody490_164 : HolLoopProg 64 :=
.seq loopBody490_1 loopBody490_163

def loopBody490_165 : HolLoopProg 64 :=
.mark loopBody490_164

def output490 : Nat × List Nat × HolLoopProg 64 :=
  (554, [], loopBody490_165)
end InitECandidate.Proofs.FrontendStages.Loop
