import InitECandidate.Proofs.FrontendStages.Loop.Translate187
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody203_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody203_1 : HolLoopProg 64 :=
.mark loopBody203_0

def loopBody203_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody203_3 : HolLoopProg 64 :=
.mark loopBody203_2

def loopBody203_4 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 69) ([]) (some (3, loopBody203_3, loopBody203_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody203_5 : HolLoopProg 64 :=
.mark loopBody203_4

def loopBody203_6 : HolLoopProg 64 :=
.seq loopBody203_5 loopBody203_1

def loopBody203_7 : HolLoopProg 64 :=
.mark loopBody203_6

def loopBody203_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 128#64)

def loopBody203_9 : HolLoopProg 64 :=
.mark loopBody203_8

def loopBody203_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody203_11 : HolLoopProg 64 :=
.mark loopBody203_10

def loopBody203_12 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([4]) (some (4, loopBody203_11, loopBody203_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody203_13 : HolLoopProg 64 :=
.mark loopBody203_12

def loopBody203_14 : HolLoopProg 64 :=
.seq loopBody203_13 loopBody203_1

def loopBody203_15 : HolLoopProg 64 :=
.mark loopBody203_14

def loopBody203_16 : HolLoopProg 64 :=
.seq loopBody203_9 loopBody203_15

def loopBody203_17 : HolLoopProg 64 :=
.mark loopBody203_16

def loopBody203_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64]))

def loopBody203_19 : HolLoopProg 64 :=
.mark loopBody203_18

def loopBody203_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody203_21 : HolLoopProg 64 :=
.mark loopBody203_20

def loopBody203_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody203_23 : HolLoopProg 64 :=
.mark loopBody203_22

def loopBody203_24 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 259) ([5, 6]) (some (5, loopBody203_23, loopBody203_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody203_25 : HolLoopProg 64 :=
.mark loopBody203_24

def loopBody203_26 : HolLoopProg 64 :=
.seq loopBody203_25 loopBody203_1

def loopBody203_27 : HolLoopProg 64 :=
.mark loopBody203_26

def loopBody203_28 : HolLoopProg 64 :=
.seq loopBody203_21 loopBody203_27

def loopBody203_29 : HolLoopProg 64 :=
.mark loopBody203_28

def loopBody203_30 : HolLoopProg 64 :=
.seq loopBody203_19 loopBody203_29

def loopBody203_31 : HolLoopProg 64 :=
.mark loopBody203_30

def loopBody203_32 : HolLoopProg 64 :=
.seq loopBody203_1 loopBody203_31

def loopBody203_33 : HolLoopProg 64 :=
.mark loopBody203_32

def loopBody203_34 : HolLoopProg 64 :=
.seq loopBody203_1 loopBody203_33

def loopBody203_35 : HolLoopProg 64 :=
.mark loopBody203_34

def loopBody203_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64]))

def loopBody203_37 : HolLoopProg 64 :=
.mark loopBody203_36

def loopBody203_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 16#64]))

def loopBody203_39 : HolLoopProg 64 :=
.mark loopBody203_38

def loopBody203_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 16#64]))

def loopBody203_41 : HolLoopProg 64 :=
.mark loopBody203_40

def loopBody203_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 32#64])

def loopBody203_43 : HolLoopProg 64 :=
.mark loopBody203_42

def loopBody203_44 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 238) ([5, 6, 7, 8]) (some (5, loopBody203_23, loopBody203_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody203_45 : HolLoopProg 64 :=
.mark loopBody203_44

def loopBody203_46 : HolLoopProg 64 :=
.seq loopBody203_45 loopBody203_1

def loopBody203_47 : HolLoopProg 64 :=
.mark loopBody203_46

def loopBody203_48 : HolLoopProg 64 :=
.seq loopBody203_43 loopBody203_47

def loopBody203_49 : HolLoopProg 64 :=
.mark loopBody203_48

def loopBody203_50 : HolLoopProg 64 :=
.seq loopBody203_41 loopBody203_49

def loopBody203_51 : HolLoopProg 64 :=
.mark loopBody203_50

def loopBody203_52 : HolLoopProg 64 :=
.seq loopBody203_39 loopBody203_51

def loopBody203_53 : HolLoopProg 64 :=
.mark loopBody203_52

def loopBody203_54 : HolLoopProg 64 :=
.seq loopBody203_37 loopBody203_53

def loopBody203_55 : HolLoopProg 64 :=
.mark loopBody203_54

def loopBody203_56 : HolLoopProg 64 :=
.seq loopBody203_1 loopBody203_55

def loopBody203_57 : HolLoopProg 64 :=
.mark loopBody203_56

def loopBody203_58 : HolLoopProg 64 :=
.seq loopBody203_1 loopBody203_57

def loopBody203_59 : HolLoopProg 64 :=
.mark loopBody203_58

def loopBody203_60 : HolLoopProg 64 :=
.seq loopBody203_35 loopBody203_59

def loopBody203_61 : HolLoopProg 64 :=
.mark loopBody203_60

def loopBody203_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 64#64])

def loopBody203_63 : HolLoopProg 64 :=
.mark loopBody203_62

def loopBody203_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 24#64]))

def loopBody203_65 : HolLoopProg 64 :=
.mark loopBody203_64

def loopBody203_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 32#64)

def loopBody203_67 : HolLoopProg 64 :=
.mark loopBody203_66

def loopBody203_68 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 77) ([5, 6, 7]) (some (5, loopBody203_23, loopBody203_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody203_69 : HolLoopProg 64 :=
.mark loopBody203_68

def loopBody203_70 : HolLoopProg 64 :=
.seq loopBody203_69 loopBody203_1

def loopBody203_71 : HolLoopProg 64 :=
.mark loopBody203_70

def loopBody203_72 : HolLoopProg 64 :=
.seq loopBody203_67 loopBody203_71

def loopBody203_73 : HolLoopProg 64 :=
.mark loopBody203_72

def loopBody203_74 : HolLoopProg 64 :=
.seq loopBody203_65 loopBody203_73

def loopBody203_75 : HolLoopProg 64 :=
.mark loopBody203_74

def loopBody203_76 : HolLoopProg 64 :=
.seq loopBody203_63 loopBody203_75

def loopBody203_77 : HolLoopProg 64 :=
.mark loopBody203_76

def loopBody203_78 : HolLoopProg 64 :=
.seq loopBody203_1 loopBody203_77

def loopBody203_79 : HolLoopProg 64 :=
.mark loopBody203_78

def loopBody203_80 : HolLoopProg 64 :=
.seq loopBody203_1 loopBody203_79

def loopBody203_81 : HolLoopProg 64 :=
.mark loopBody203_80

def loopBody203_82 : HolLoopProg 64 :=
.seq loopBody203_61 loopBody203_81

def loopBody203_83 : HolLoopProg 64 :=
.mark loopBody203_82

def loopBody203_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 32#64]))

def loopBody203_85 : HolLoopProg 64 :=
.mark loopBody203_84

def loopBody203_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 96#64])

def loopBody203_87 : HolLoopProg 64 :=
.mark loopBody203_86

def loopBody203_88 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 266) ([5, 6]) (some (5, loopBody203_23, loopBody203_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody203_89 : HolLoopProg 64 :=
.mark loopBody203_88

def loopBody203_90 : HolLoopProg 64 :=
.seq loopBody203_89 loopBody203_1

def loopBody203_91 : HolLoopProg 64 :=
.mark loopBody203_90

def loopBody203_92 : HolLoopProg 64 :=
.seq loopBody203_87 loopBody203_91

def loopBody203_93 : HolLoopProg 64 :=
.mark loopBody203_92

def loopBody203_94 : HolLoopProg 64 :=
.seq loopBody203_85 loopBody203_93

def loopBody203_95 : HolLoopProg 64 :=
.mark loopBody203_94

def loopBody203_96 : HolLoopProg 64 :=
.seq loopBody203_1 loopBody203_95

def loopBody203_97 : HolLoopProg 64 :=
.mark loopBody203_96

def loopBody203_98 : HolLoopProg 64 :=
.seq loopBody203_1 loopBody203_97

def loopBody203_99 : HolLoopProg 64 :=
.mark loopBody203_98

def loopBody203_100 : HolLoopProg 64 :=
.seq loopBody203_83 loopBody203_99

def loopBody203_101 : HolLoopProg 64 :=
.mark loopBody203_100

def loopBody203_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody203_103 : HolLoopProg 64 :=
.mark loopBody203_102

def loopBody203_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 4#64)

def loopBody203_105 : HolLoopProg 64 :=
.mark loopBody203_104

def loopBody203_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 4#64)

def loopBody203_107 : HolLoopProg 64 :=
.mark loopBody203_106

def loopBody203_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody203_109 : HolLoopProg 64 :=
.mark loopBody203_108

def loopBody203_110 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 235) ([5, 6, 7, 8]) (some (5, loopBody203_23, loopBody203_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody203_111 : HolLoopProg 64 :=
.mark loopBody203_110

def loopBody203_112 : HolLoopProg 64 :=
.seq loopBody203_111 loopBody203_1

def loopBody203_113 : HolLoopProg 64 :=
.mark loopBody203_112

def loopBody203_114 : HolLoopProg 64 :=
.seq loopBody203_109 loopBody203_113

def loopBody203_115 : HolLoopProg 64 :=
.mark loopBody203_114

def loopBody203_116 : HolLoopProg 64 :=
.seq loopBody203_107 loopBody203_115

def loopBody203_117 : HolLoopProg 64 :=
.mark loopBody203_116

def loopBody203_118 : HolLoopProg 64 :=
.seq loopBody203_105 loopBody203_117

def loopBody203_119 : HolLoopProg 64 :=
.mark loopBody203_118

def loopBody203_120 : HolLoopProg 64 :=
.seq loopBody203_103 loopBody203_119

def loopBody203_121 : HolLoopProg 64 :=
.mark loopBody203_120

def loopBody203_122 : HolLoopProg 64 :=
.seq loopBody203_1 loopBody203_121

def loopBody203_123 : HolLoopProg 64 :=
.mark loopBody203_122

def loopBody203_124 : HolLoopProg 64 :=
.seq loopBody203_1 loopBody203_123

def loopBody203_125 : HolLoopProg 64 :=
.mark loopBody203_124

def loopBody203_126 : HolLoopProg 64 :=
.seq loopBody203_101 loopBody203_125

def loopBody203_127 : HolLoopProg 64 :=
.mark loopBody203_126

def loopBody203_128 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody203_129 : HolLoopProg 64 :=
.mark loopBody203_128

def loopBody203_130 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.ln)) (some 70) ([5]) (some (5, loopBody203_23, loopBody203_1, (Flapjack.Spt.ln)))

def loopBody203_131 : HolLoopProg 64 :=
.mark loopBody203_130

def loopBody203_132 : HolLoopProg 64 :=
.seq loopBody203_131 loopBody203_1

def loopBody203_133 : HolLoopProg 64 :=
.mark loopBody203_132

def loopBody203_134 : HolLoopProg 64 :=
.seq loopBody203_129 loopBody203_133

def loopBody203_135 : HolLoopProg 64 :=
.mark loopBody203_134

def loopBody203_136 : HolLoopProg 64 :=
.seq loopBody203_1 loopBody203_135

def loopBody203_137 : HolLoopProg 64 :=
.mark loopBody203_136

def loopBody203_138 : HolLoopProg 64 :=
.seq loopBody203_1 loopBody203_137

def loopBody203_139 : HolLoopProg 64 :=
.mark loopBody203_138

def loopBody203_140 : HolLoopProg 64 :=
.seq loopBody203_127 loopBody203_139

def loopBody203_141 : HolLoopProg 64 :=
.mark loopBody203_140

def loopBody203_142 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody203_143 : HolLoopProg 64 :=
.mark loopBody203_142

def loopBody203_144 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody203_145 : HolLoopProg 64 :=
.mark loopBody203_144

def loopBody203_146 : HolLoopProg 64 :=
.seq loopBody203_145 loopBody203_1

def loopBody203_147 : HolLoopProg 64 :=
.mark loopBody203_146

def loopBody203_148 : HolLoopProg 64 :=
.seq loopBody203_143 loopBody203_147

def loopBody203_149 : HolLoopProg 64 :=
.mark loopBody203_148

def loopBody203_150 : HolLoopProg 64 :=
.seq loopBody203_141 loopBody203_149

def loopBody203_151 : HolLoopProg 64 :=
.mark loopBody203_150

def loopBody203_152 : HolLoopProg 64 :=
.seq loopBody203_17 loopBody203_151

def loopBody203_153 : HolLoopProg 64 :=
.mark loopBody203_152

def loopBody203_154 : HolLoopProg 64 :=
.seq loopBody203_1 loopBody203_153

def loopBody203_155 : HolLoopProg 64 :=
.mark loopBody203_154

def loopBody203_156 : HolLoopProg 64 :=
.seq loopBody203_1 loopBody203_155

def loopBody203_157 : HolLoopProg 64 :=
.mark loopBody203_156

def loopBody203_158 : HolLoopProg 64 :=
.seq loopBody203_7 loopBody203_157

def loopBody203_159 : HolLoopProg 64 :=
.mark loopBody203_158

def loopBody203_160 : HolLoopProg 64 :=
.seq loopBody203_1 loopBody203_159

def loopBody203_161 : HolLoopProg 64 :=
.mark loopBody203_160

def loopBody203_162 : HolLoopProg 64 :=
.seq loopBody203_1 loopBody203_161

def loopBody203_163 : HolLoopProg 64 :=
.mark loopBody203_162

def output203 : Nat × List Nat × HolLoopProg 64 :=
  (267, [0, 1], loopBody203_163)
end InitECandidate.Proofs.FrontendStages.Loop
