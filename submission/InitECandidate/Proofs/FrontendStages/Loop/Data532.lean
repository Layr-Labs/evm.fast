import InitECandidate.Proofs.FrontendStages.Loop.Translate516
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody532_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody532_1 : HolLoopProg 64 :=
.mark loopBody532_0

def loopBody532_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]))

def loopBody532_3 : HolLoopProg 64 :=
.mark loopBody532_2

def loopBody532_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody532_5 : HolLoopProg 64 :=
.mark loopBody532_4

def loopBody532_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody532_7 : HolLoopProg 64 :=
.mark loopBody532_6

def loopBody532_8 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 489) ([4]) (some (4, loopBody532_7, loopBody532_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody532_9 : HolLoopProg 64 :=
.mark loopBody532_8

def loopBody532_10 : HolLoopProg 64 :=
.seq loopBody532_9 loopBody532_1

def loopBody532_11 : HolLoopProg 64 :=
.mark loopBody532_10

def loopBody532_12 : HolLoopProg 64 :=
.seq loopBody532_5 loopBody532_11

def loopBody532_13 : HolLoopProg 64 :=
.mark loopBody532_12

def loopBody532_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 104#64)

def loopBody532_15 : HolLoopProg 64 :=
.mark loopBody532_14

def loopBody532_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody532_17 : HolLoopProg 64 :=
.mark loopBody532_16

def loopBody532_18 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 74) ([5]) (some (5, loopBody532_17, loopBody532_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody532_19 : HolLoopProg 64 :=
.mark loopBody532_18

def loopBody532_20 : HolLoopProg 64 :=
.seq loopBody532_19 loopBody532_1

def loopBody532_21 : HolLoopProg 64 :=
.mark loopBody532_20

def loopBody532_22 : HolLoopProg 64 :=
.seq loopBody532_15 loopBody532_21

def loopBody532_23 : HolLoopProg 64 :=
.mark loopBody532_22

def loopBody532_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody532_25 : HolLoopProg 64 :=
.mark loopBody532_24

def loopBody532_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 104#64)

def loopBody532_27 : HolLoopProg 64 :=
.mark loopBody532_26

def loopBody532_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody532_29 : HolLoopProg 64 :=
.mark loopBody532_28

def loopBody532_30 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 78) ([6, 7]) (some (6, loopBody532_29, loopBody532_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody532_31 : HolLoopProg 64 :=
.mark loopBody532_30

def loopBody532_32 : HolLoopProg 64 :=
.seq loopBody532_31 loopBody532_1

def loopBody532_33 : HolLoopProg 64 :=
.mark loopBody532_32

def loopBody532_34 : HolLoopProg 64 :=
.seq loopBody532_27 loopBody532_33

def loopBody532_35 : HolLoopProg 64 :=
.mark loopBody532_34

def loopBody532_36 : HolLoopProg 64 :=
.seq loopBody532_25 loopBody532_35

def loopBody532_37 : HolLoopProg 64 :=
.mark loopBody532_36

def loopBody532_38 : HolLoopProg 64 :=
.seq loopBody532_1 loopBody532_37

def loopBody532_39 : HolLoopProg 64 :=
.mark loopBody532_38

def loopBody532_40 : HolLoopProg 64 :=
.seq loopBody532_1 loopBody532_39

def loopBody532_41 : HolLoopProg 64 :=
.mark loopBody532_40

def loopBody532_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 0#64])

def loopBody532_43 : HolLoopProg 64 :=
.mark loopBody532_42

def loopBody532_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody532_45 : HolLoopProg 64 :=
.mark loopBody532_44

def loopBody532_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 6)

def loopBody532_47 : HolLoopProg 64 :=
.mark loopBody532_46

def loopBody532_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 5) 7

def loopBody532_49 : HolLoopProg 64 :=
.mark loopBody532_48

def loopBody532_50 : HolLoopProg 64 :=
.seq loopBody532_49 loopBody532_1

def loopBody532_51 : HolLoopProg 64 :=
.mark loopBody532_50

def loopBody532_52 : HolLoopProg 64 :=
.seq loopBody532_47 loopBody532_51

def loopBody532_53 : HolLoopProg 64 :=
.mark loopBody532_52

def loopBody532_54 : HolLoopProg 64 :=
.seq loopBody532_53 loopBody532_1

def loopBody532_55 : HolLoopProg 64 :=
.mark loopBody532_54

def loopBody532_56 : HolLoopProg 64 :=
.seq loopBody532_45 loopBody532_55

def loopBody532_57 : HolLoopProg 64 :=
.mark loopBody532_56

def loopBody532_58 : HolLoopProg 64 :=
.seq loopBody532_1 loopBody532_57

def loopBody532_59 : HolLoopProg 64 :=
.mark loopBody532_58

def loopBody532_60 : HolLoopProg 64 :=
.seq loopBody532_43 loopBody532_59

def loopBody532_61 : HolLoopProg 64 :=
.mark loopBody532_60

def loopBody532_62 : HolLoopProg 64 :=
.seq loopBody532_1 loopBody532_61

def loopBody532_63 : HolLoopProg 64 :=
.mark loopBody532_62

def loopBody532_64 : HolLoopProg 64 :=
.seq loopBody532_41 loopBody532_63

def loopBody532_65 : HolLoopProg 64 :=
.mark loopBody532_64

def loopBody532_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 8#64])

def loopBody532_67 : HolLoopProg 64 :=
.mark loopBody532_66

def loopBody532_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 288#64]))

def loopBody532_69 : HolLoopProg 64 :=
.mark loopBody532_68

def loopBody532_70 : HolLoopProg 64 :=
.seq loopBody532_69 loopBody532_55

def loopBody532_71 : HolLoopProg 64 :=
.mark loopBody532_70

def loopBody532_72 : HolLoopProg 64 :=
.seq loopBody532_1 loopBody532_71

def loopBody532_73 : HolLoopProg 64 :=
.mark loopBody532_72

def loopBody532_74 : HolLoopProg 64 :=
.seq loopBody532_67 loopBody532_73

def loopBody532_75 : HolLoopProg 64 :=
.mark loopBody532_74

def loopBody532_76 : HolLoopProg 64 :=
.seq loopBody532_1 loopBody532_75

def loopBody532_77 : HolLoopProg 64 :=
.mark loopBody532_76

def loopBody532_78 : HolLoopProg 64 :=
.seq loopBody532_65 loopBody532_77

def loopBody532_79 : HolLoopProg 64 :=
.mark loopBody532_78

def loopBody532_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 16#64])

def loopBody532_81 : HolLoopProg 64 :=
.mark loopBody532_80

def loopBody532_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody532_83 : HolLoopProg 64 :=
.mark loopBody532_82

def loopBody532_84 : HolLoopProg 64 :=
.seq loopBody532_83 loopBody532_55

def loopBody532_85 : HolLoopProg 64 :=
.mark loopBody532_84

def loopBody532_86 : HolLoopProg 64 :=
.seq loopBody532_1 loopBody532_85

def loopBody532_87 : HolLoopProg 64 :=
.mark loopBody532_86

def loopBody532_88 : HolLoopProg 64 :=
.seq loopBody532_81 loopBody532_87

def loopBody532_89 : HolLoopProg 64 :=
.mark loopBody532_88

def loopBody532_90 : HolLoopProg 64 :=
.seq loopBody532_1 loopBody532_89

def loopBody532_91 : HolLoopProg 64 :=
.mark loopBody532_90

def loopBody532_92 : HolLoopProg 64 :=
.seq loopBody532_79 loopBody532_91

def loopBody532_93 : HolLoopProg 64 :=
.mark loopBody532_92

def loopBody532_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 40#64])

def loopBody532_95 : HolLoopProg 64 :=
.mark loopBody532_94

def loopBody532_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody532_97 : HolLoopProg 64 :=
.mark loopBody532_96

def loopBody532_98 : HolLoopProg 64 :=
.seq loopBody532_97 loopBody532_55

def loopBody532_99 : HolLoopProg 64 :=
.mark loopBody532_98

def loopBody532_100 : HolLoopProg 64 :=
.seq loopBody532_1 loopBody532_99

def loopBody532_101 : HolLoopProg 64 :=
.mark loopBody532_100

def loopBody532_102 : HolLoopProg 64 :=
.seq loopBody532_95 loopBody532_101

def loopBody532_103 : HolLoopProg 64 :=
.mark loopBody532_102

def loopBody532_104 : HolLoopProg 64 :=
.seq loopBody532_1 loopBody532_103

def loopBody532_105 : HolLoopProg 64 :=
.mark loopBody532_104

def loopBody532_106 : HolLoopProg 64 :=
.seq loopBody532_93 loopBody532_105

def loopBody532_107 : HolLoopProg 64 :=
.mark loopBody532_106

def loopBody532_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64])

def loopBody532_109 : HolLoopProg 64 :=
.mark loopBody532_108

def loopBody532_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody532_111 : HolLoopProg 64 :=
.mark loopBody532_110

def loopBody532_112 : HolLoopProg 64 :=
.seq loopBody532_111 loopBody532_55

def loopBody532_113 : HolLoopProg 64 :=
.mark loopBody532_112

def loopBody532_114 : HolLoopProg 64 :=
.seq loopBody532_1 loopBody532_113

def loopBody532_115 : HolLoopProg 64 :=
.mark loopBody532_114

def loopBody532_116 : HolLoopProg 64 :=
.seq loopBody532_109 loopBody532_115

def loopBody532_117 : HolLoopProg 64 :=
.mark loopBody532_116

def loopBody532_118 : HolLoopProg 64 :=
.seq loopBody532_1 loopBody532_117

def loopBody532_119 : HolLoopProg 64 :=
.mark loopBody532_118

def loopBody532_120 : HolLoopProg 64 :=
.seq loopBody532_107 loopBody532_119

def loopBody532_121 : HolLoopProg 64 :=
.mark loopBody532_120

def loopBody532_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 288#64])

def loopBody532_123 : HolLoopProg 64 :=
.mark loopBody532_122

def loopBody532_124 : HolLoopProg 64 :=
.seq loopBody532_25 loopBody532_55

def loopBody532_125 : HolLoopProg 64 :=
.mark loopBody532_124

def loopBody532_126 : HolLoopProg 64 :=
.seq loopBody532_1 loopBody532_125

def loopBody532_127 : HolLoopProg 64 :=
.mark loopBody532_126

def loopBody532_128 : HolLoopProg 64 :=
.seq loopBody532_123 loopBody532_127

def loopBody532_129 : HolLoopProg 64 :=
.mark loopBody532_128

def loopBody532_130 : HolLoopProg 64 :=
.seq loopBody532_1 loopBody532_129

def loopBody532_131 : HolLoopProg 64 :=
.mark loopBody532_130

def loopBody532_132 : HolLoopProg 64 :=
.seq loopBody532_121 loopBody532_131

def loopBody532_133 : HolLoopProg 64 :=
.mark loopBody532_132

def loopBody532_134 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody532_135 : HolLoopProg 64 :=
.mark loopBody532_134

def loopBody532_136 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody532_137 : HolLoopProg 64 :=
.mark loopBody532_136

def loopBody532_138 : HolLoopProg 64 :=
.seq loopBody532_137 loopBody532_1

def loopBody532_139 : HolLoopProg 64 :=
.mark loopBody532_138

def loopBody532_140 : HolLoopProg 64 :=
.seq loopBody532_135 loopBody532_139

def loopBody532_141 : HolLoopProg 64 :=
.mark loopBody532_140

def loopBody532_142 : HolLoopProg 64 :=
.seq loopBody532_133 loopBody532_141

def loopBody532_143 : HolLoopProg 64 :=
.mark loopBody532_142

def loopBody532_144 : HolLoopProg 64 :=
.seq loopBody532_23 loopBody532_143

def loopBody532_145 : HolLoopProg 64 :=
.mark loopBody532_144

def loopBody532_146 : HolLoopProg 64 :=
.seq loopBody532_1 loopBody532_145

def loopBody532_147 : HolLoopProg 64 :=
.mark loopBody532_146

def loopBody532_148 : HolLoopProg 64 :=
.seq loopBody532_1 loopBody532_147

def loopBody532_149 : HolLoopProg 64 :=
.mark loopBody532_148

def loopBody532_150 : HolLoopProg 64 :=
.seq loopBody532_13 loopBody532_149

def loopBody532_151 : HolLoopProg 64 :=
.mark loopBody532_150

def loopBody532_152 : HolLoopProg 64 :=
.seq loopBody532_1 loopBody532_151

def loopBody532_153 : HolLoopProg 64 :=
.mark loopBody532_152

def loopBody532_154 : HolLoopProg 64 :=
.seq loopBody532_1 loopBody532_153

def loopBody532_155 : HolLoopProg 64 :=
.mark loopBody532_154

def loopBody532_156 : HolLoopProg 64 :=
.seq loopBody532_3 loopBody532_155

def loopBody532_157 : HolLoopProg 64 :=
.mark loopBody532_156

def loopBody532_158 : HolLoopProg 64 :=
.seq loopBody532_1 loopBody532_157

def loopBody532_159 : HolLoopProg 64 :=
.mark loopBody532_158

def output532 : Nat × List Nat × HolLoopProg 64 :=
  (596, [0, 1], loopBody532_159)
end InitECandidate.Proofs.FrontendStages.Loop
