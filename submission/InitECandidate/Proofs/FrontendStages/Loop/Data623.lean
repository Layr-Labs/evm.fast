import InitECandidate.Proofs.FrontendStages.Loop.Translate607
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody623_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody623_1 : HolLoopProg 64 :=
.mark loopBody623_0

def loopBody623_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody623_3 : HolLoopProg 64 :=
.mark loopBody623_2

def loopBody623_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1152#64)

def loopBody623_5 : HolLoopProg 64 :=
.mark loopBody623_4

def loopBody623_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody623_7 : HolLoopProg 64 :=
.mark loopBody623_6

def loopBody623_8 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 78) ([3, 4]) (some (3, loopBody623_7, loopBody623_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody623_9 : HolLoopProg 64 :=
.mark loopBody623_8

def loopBody623_10 : HolLoopProg 64 :=
.seq loopBody623_9 loopBody623_1

def loopBody623_11 : HolLoopProg 64 :=
.mark loopBody623_10

def loopBody623_12 : HolLoopProg 64 :=
.seq loopBody623_5 loopBody623_11

def loopBody623_13 : HolLoopProg 64 :=
.mark loopBody623_12

def loopBody623_14 : HolLoopProg 64 :=
.seq loopBody623_3 loopBody623_13

def loopBody623_15 : HolLoopProg 64 :=
.mark loopBody623_14

def loopBody623_16 : HolLoopProg 64 :=
.seq loopBody623_1 loopBody623_15

def loopBody623_17 : HolLoopProg 64 :=
.mark loopBody623_16

def loopBody623_18 : HolLoopProg 64 :=
.seq loopBody623_1 loopBody623_17

def loopBody623_19 : HolLoopProg 64 :=
.mark loopBody623_18

def loopBody623_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody623_21 : HolLoopProg 64 :=
.mark loopBody623_20

def loopBody623_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.load (Flapjack.HolLoopExp.var 1))

def loopBody623_23 : HolLoopProg 64 :=
.mark loopBody623_22

def loopBody623_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 8#64]))

def loopBody623_25 : HolLoopProg 64 :=
.mark loopBody623_24

def loopBody623_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 16#64]))

def loopBody623_27 : HolLoopProg 64 :=
.mark loopBody623_26

def loopBody623_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 24#64]))

def loopBody623_29 : HolLoopProg 64 :=
.mark loopBody623_28

def loopBody623_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody623_31 : HolLoopProg 64 :=
.mark loopBody623_30

def loopBody623_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 2) 7

def loopBody623_33 : HolLoopProg 64 :=
.mark loopBody623_32

def loopBody623_34 : HolLoopProg 64 :=
.seq loopBody623_33 loopBody623_1

def loopBody623_35 : HolLoopProg 64 :=
.mark loopBody623_34

def loopBody623_36 : HolLoopProg 64 :=
.seq loopBody623_31 loopBody623_35

def loopBody623_37 : HolLoopProg 64 :=
.mark loopBody623_36

def loopBody623_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody623_39 : HolLoopProg 64 :=
.mark loopBody623_38

def loopBody623_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 8#64]) 7

def loopBody623_41 : HolLoopProg 64 :=
.mark loopBody623_40

def loopBody623_42 : HolLoopProg 64 :=
.seq loopBody623_41 loopBody623_1

def loopBody623_43 : HolLoopProg 64 :=
.mark loopBody623_42

def loopBody623_44 : HolLoopProg 64 :=
.seq loopBody623_39 loopBody623_43

def loopBody623_45 : HolLoopProg 64 :=
.mark loopBody623_44

def loopBody623_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody623_47 : HolLoopProg 64 :=
.mark loopBody623_46

def loopBody623_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 16#64]) 7

def loopBody623_49 : HolLoopProg 64 :=
.mark loopBody623_48

def loopBody623_50 : HolLoopProg 64 :=
.seq loopBody623_49 loopBody623_1

def loopBody623_51 : HolLoopProg 64 :=
.mark loopBody623_50

def loopBody623_52 : HolLoopProg 64 :=
.seq loopBody623_47 loopBody623_51

def loopBody623_53 : HolLoopProg 64 :=
.mark loopBody623_52

def loopBody623_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 6)

def loopBody623_55 : HolLoopProg 64 :=
.mark loopBody623_54

def loopBody623_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 24#64]) 7

def loopBody623_57 : HolLoopProg 64 :=
.mark loopBody623_56

def loopBody623_58 : HolLoopProg 64 :=
.seq loopBody623_57 loopBody623_1

def loopBody623_59 : HolLoopProg 64 :=
.mark loopBody623_58

def loopBody623_60 : HolLoopProg 64 :=
.seq loopBody623_55 loopBody623_59

def loopBody623_61 : HolLoopProg 64 :=
.mark loopBody623_60

def loopBody623_62 : HolLoopProg 64 :=
.seq loopBody623_61 loopBody623_1

def loopBody623_63 : HolLoopProg 64 :=
.mark loopBody623_62

def loopBody623_64 : HolLoopProg 64 :=
.seq loopBody623_53 loopBody623_63

def loopBody623_65 : HolLoopProg 64 :=
.mark loopBody623_64

def loopBody623_66 : HolLoopProg 64 :=
.seq loopBody623_45 loopBody623_65

def loopBody623_67 : HolLoopProg 64 :=
.mark loopBody623_66

def loopBody623_68 : HolLoopProg 64 :=
.seq loopBody623_37 loopBody623_67

def loopBody623_69 : HolLoopProg 64 :=
.mark loopBody623_68

def loopBody623_70 : HolLoopProg 64 :=
.seq loopBody623_29 loopBody623_69

def loopBody623_71 : HolLoopProg 64 :=
.mark loopBody623_70

def loopBody623_72 : HolLoopProg 64 :=
.seq loopBody623_1 loopBody623_71

def loopBody623_73 : HolLoopProg 64 :=
.mark loopBody623_72

def loopBody623_74 : HolLoopProg 64 :=
.seq loopBody623_27 loopBody623_73

def loopBody623_75 : HolLoopProg 64 :=
.mark loopBody623_74

def loopBody623_76 : HolLoopProg 64 :=
.seq loopBody623_1 loopBody623_75

def loopBody623_77 : HolLoopProg 64 :=
.mark loopBody623_76

def loopBody623_78 : HolLoopProg 64 :=
.seq loopBody623_25 loopBody623_77

def loopBody623_79 : HolLoopProg 64 :=
.mark loopBody623_78

def loopBody623_80 : HolLoopProg 64 :=
.seq loopBody623_1 loopBody623_79

def loopBody623_81 : HolLoopProg 64 :=
.mark loopBody623_80

def loopBody623_82 : HolLoopProg 64 :=
.seq loopBody623_23 loopBody623_81

def loopBody623_83 : HolLoopProg 64 :=
.mark loopBody623_82

def loopBody623_84 : HolLoopProg 64 :=
.seq loopBody623_1 loopBody623_83

def loopBody623_85 : HolLoopProg 64 :=
.mark loopBody623_84

def loopBody623_86 : HolLoopProg 64 :=
.seq loopBody623_21 loopBody623_85

def loopBody623_87 : HolLoopProg 64 :=
.mark loopBody623_86

def loopBody623_88 : HolLoopProg 64 :=
.seq loopBody623_1 loopBody623_87

def loopBody623_89 : HolLoopProg 64 :=
.mark loopBody623_88

def loopBody623_90 : HolLoopProg 64 :=
.seq loopBody623_19 loopBody623_89

def loopBody623_91 : HolLoopProg 64 :=
.mark loopBody623_90

def loopBody623_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 384#64])

def loopBody623_93 : HolLoopProg 64 :=
.mark loopBody623_92

def loopBody623_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 32#64]))

def loopBody623_95 : HolLoopProg 64 :=
.mark loopBody623_94

def loopBody623_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 32#64],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody623_97 : HolLoopProg 64 :=
.mark loopBody623_96

def loopBody623_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 32#64],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody623_99 : HolLoopProg 64 :=
.mark loopBody623_98

def loopBody623_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 32#64],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody623_101 : HolLoopProg 64 :=
.mark loopBody623_100

def loopBody623_102 : HolLoopProg 64 :=
.seq loopBody623_101 loopBody623_69

def loopBody623_103 : HolLoopProg 64 :=
.mark loopBody623_102

def loopBody623_104 : HolLoopProg 64 :=
.seq loopBody623_1 loopBody623_103

def loopBody623_105 : HolLoopProg 64 :=
.mark loopBody623_104

def loopBody623_106 : HolLoopProg 64 :=
.seq loopBody623_99 loopBody623_105

def loopBody623_107 : HolLoopProg 64 :=
.mark loopBody623_106

def loopBody623_108 : HolLoopProg 64 :=
.seq loopBody623_1 loopBody623_107

def loopBody623_109 : HolLoopProg 64 :=
.mark loopBody623_108

def loopBody623_110 : HolLoopProg 64 :=
.seq loopBody623_97 loopBody623_109

def loopBody623_111 : HolLoopProg 64 :=
.mark loopBody623_110

def loopBody623_112 : HolLoopProg 64 :=
.seq loopBody623_1 loopBody623_111

def loopBody623_113 : HolLoopProg 64 :=
.mark loopBody623_112

def loopBody623_114 : HolLoopProg 64 :=
.seq loopBody623_95 loopBody623_113

def loopBody623_115 : HolLoopProg 64 :=
.mark loopBody623_114

def loopBody623_116 : HolLoopProg 64 :=
.seq loopBody623_1 loopBody623_115

def loopBody623_117 : HolLoopProg 64 :=
.mark loopBody623_116

def loopBody623_118 : HolLoopProg 64 :=
.seq loopBody623_93 loopBody623_117

def loopBody623_119 : HolLoopProg 64 :=
.mark loopBody623_118

def loopBody623_120 : HolLoopProg 64 :=
.seq loopBody623_1 loopBody623_119

def loopBody623_121 : HolLoopProg 64 :=
.mark loopBody623_120

def loopBody623_122 : HolLoopProg 64 :=
.seq loopBody623_91 loopBody623_121

def loopBody623_123 : HolLoopProg 64 :=
.mark loopBody623_122

def loopBody623_124 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 768#64])

def loopBody623_125 : HolLoopProg 64 :=
.mark loopBody623_124

def loopBody623_126 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 64#64]))

def loopBody623_127 : HolLoopProg 64 :=
.mark loopBody623_126

def loopBody623_128 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 64#64],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody623_129 : HolLoopProg 64 :=
.mark loopBody623_128

def loopBody623_130 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 64#64],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody623_131 : HolLoopProg 64 :=
.mark loopBody623_130

def loopBody623_132 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 64#64],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody623_133 : HolLoopProg 64 :=
.mark loopBody623_132

def loopBody623_134 : HolLoopProg 64 :=
.seq loopBody623_133 loopBody623_69

def loopBody623_135 : HolLoopProg 64 :=
.mark loopBody623_134

def loopBody623_136 : HolLoopProg 64 :=
.seq loopBody623_1 loopBody623_135

def loopBody623_137 : HolLoopProg 64 :=
.mark loopBody623_136

def loopBody623_138 : HolLoopProg 64 :=
.seq loopBody623_131 loopBody623_137

def loopBody623_139 : HolLoopProg 64 :=
.mark loopBody623_138

def loopBody623_140 : HolLoopProg 64 :=
.seq loopBody623_1 loopBody623_139

def loopBody623_141 : HolLoopProg 64 :=
.mark loopBody623_140

def loopBody623_142 : HolLoopProg 64 :=
.seq loopBody623_129 loopBody623_141

def loopBody623_143 : HolLoopProg 64 :=
.mark loopBody623_142

def loopBody623_144 : HolLoopProg 64 :=
.seq loopBody623_1 loopBody623_143

def loopBody623_145 : HolLoopProg 64 :=
.mark loopBody623_144

def loopBody623_146 : HolLoopProg 64 :=
.seq loopBody623_127 loopBody623_145

def loopBody623_147 : HolLoopProg 64 :=
.mark loopBody623_146

def loopBody623_148 : HolLoopProg 64 :=
.seq loopBody623_1 loopBody623_147

def loopBody623_149 : HolLoopProg 64 :=
.mark loopBody623_148

def loopBody623_150 : HolLoopProg 64 :=
.seq loopBody623_125 loopBody623_149

def loopBody623_151 : HolLoopProg 64 :=
.mark loopBody623_150

def loopBody623_152 : HolLoopProg 64 :=
.seq loopBody623_1 loopBody623_151

def loopBody623_153 : HolLoopProg 64 :=
.mark loopBody623_152

def loopBody623_154 : HolLoopProg 64 :=
.seq loopBody623_123 loopBody623_153

def loopBody623_155 : HolLoopProg 64 :=
.mark loopBody623_154

def loopBody623_156 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody623_157 : HolLoopProg 64 :=
.mark loopBody623_156

def loopBody623_158 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody623_159 : HolLoopProg 64 :=
.mark loopBody623_158

def loopBody623_160 : HolLoopProg 64 :=
.seq loopBody623_159 loopBody623_1

def loopBody623_161 : HolLoopProg 64 :=
.mark loopBody623_160

def loopBody623_162 : HolLoopProg 64 :=
.seq loopBody623_157 loopBody623_161

def loopBody623_163 : HolLoopProg 64 :=
.mark loopBody623_162

def loopBody623_164 : HolLoopProg 64 :=
.seq loopBody623_155 loopBody623_163

def loopBody623_165 : HolLoopProg 64 :=
.mark loopBody623_164

def output623 : Nat × List Nat × HolLoopProg 64 :=
  (687, [0, 1], loopBody623_165)
end InitECandidate.Proofs.FrontendStages.Loop
