import InitECandidate.Proofs.FrontendStages.Loop.Translate157
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody173_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody173_1 : HolLoopProg 64 :=
.mark loopBody173_0

def loopBody173_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody173_3 : HolLoopProg 64 :=
.mark loopBody173_2

def loopBody173_4 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 69) ([]) (some (4, loopBody173_3, loopBody173_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody173_5 : HolLoopProg 64 :=
.mark loopBody173_4

def loopBody173_6 : HolLoopProg 64 :=
.seq loopBody173_5 loopBody173_1

def loopBody173_7 : HolLoopProg 64 :=
.mark loopBody173_6

def loopBody173_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 768#64)

def loopBody173_9 : HolLoopProg 64 :=
.mark loopBody173_8

def loopBody173_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody173_11 : HolLoopProg 64 :=
.mark loopBody173_10

def loopBody173_12 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([5]) (some (5, loopBody173_11, loopBody173_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody173_13 : HolLoopProg 64 :=
.mark loopBody173_12

def loopBody173_14 : HolLoopProg 64 :=
.seq loopBody173_13 loopBody173_1

def loopBody173_15 : HolLoopProg 64 :=
.mark loopBody173_14

def loopBody173_16 : HolLoopProg 64 :=
.seq loopBody173_9 loopBody173_15

def loopBody173_17 : HolLoopProg 64 :=
.mark loopBody173_16

def loopBody173_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 32#64)

def loopBody173_19 : HolLoopProg 64 :=
.mark loopBody173_18

def loopBody173_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody173_21 : HolLoopProg 64 :=
.mark loopBody173_20

def loopBody173_22 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([6]) (some (6, loopBody173_21, loopBody173_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody173_23 : HolLoopProg 64 :=
.mark loopBody173_22

def loopBody173_24 : HolLoopProg 64 :=
.seq loopBody173_23 loopBody173_1

def loopBody173_25 : HolLoopProg 64 :=
.mark loopBody173_24

def loopBody173_26 : HolLoopProg 64 :=
.seq loopBody173_19 loopBody173_25

def loopBody173_27 : HolLoopProg 64 :=
.mark loopBody173_26

def loopBody173_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody173_29 : HolLoopProg 64 :=
.mark loopBody173_28

def loopBody173_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody173_31 : HolLoopProg 64 :=
.mark loopBody173_30

def loopBody173_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody173_33 : HolLoopProg 64 :=
.mark loopBody173_32

def loopBody173_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 7)

def loopBody173_35 : HolLoopProg 64 :=
.mark loopBody173_34

def loopBody173_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 1)

def loopBody173_37 : HolLoopProg 64 :=
.mark loopBody173_36

def loopBody173_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 1#64)

def loopBody173_39 : HolLoopProg 64 :=
.mark loopBody173_38

def loopBody173_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody173_41 : HolLoopProg 64 :=
.mark loopBody173_40

def loopBody173_42 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.RegImm.reg 11) loopBody173_39 loopBody173_41 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody173_43 : HolLoopProg 64 :=
.mark loopBody173_42

def loopBody173_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 10)

def loopBody173_45 : HolLoopProg 64 :=
.mark loopBody173_44

def loopBody173_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 7])

def loopBody173_47 : HolLoopProg 64 :=
.mark loopBody173_46

def loopBody173_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 8)

def loopBody173_49 : HolLoopProg 64 :=
.mark loopBody173_48

def loopBody173_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 9)

def loopBody173_51 : HolLoopProg 64 :=
.mark loopBody173_50

def loopBody173_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 1#64)

def loopBody173_53 : HolLoopProg 64 :=
.mark loopBody173_52

def loopBody173_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 0#64)

def loopBody173_55 : HolLoopProg 64 :=
.mark loopBody173_54

def loopBody173_56 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.RegImm.reg 12) loopBody173_53 loopBody173_55 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody173_57 : HolLoopProg 64 :=
.mark loopBody173_56

def loopBody173_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 11)

def loopBody173_59 : HolLoopProg 64 :=
.mark loopBody173_58

def loopBody173_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 8)

def loopBody173_61 : HolLoopProg 64 :=
.mark loopBody173_60

def loopBody173_62 : HolLoopProg 64 :=
.seq loopBody173_61 loopBody173_1

def loopBody173_63 : HolLoopProg 64 :=
.mark loopBody173_62

def loopBody173_64 : HolLoopProg 64 :=
.seq loopBody173_63 loopBody173_1

def loopBody173_65 : HolLoopProg 64 :=
.mark loopBody173_64

def loopBody173_66 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.RegImm.imm 0#64) loopBody173_65 loopBody173_1 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody173_67 : HolLoopProg 64 :=
.mark loopBody173_66

def loopBody173_68 : HolLoopProg 64 :=
.seq loopBody173_67 loopBody173_1

def loopBody173_69 : HolLoopProg 64 :=
.mark loopBody173_68

def loopBody173_70 : HolLoopProg 64 :=
.seq loopBody173_59 loopBody173_69

def loopBody173_71 : HolLoopProg 64 :=
.mark loopBody173_70

def loopBody173_72 : HolLoopProg 64 :=
.seq loopBody173_57 loopBody173_71

def loopBody173_73 : HolLoopProg 64 :=
.mark loopBody173_72

def loopBody173_74 : HolLoopProg 64 :=
.seq loopBody173_51 loopBody173_73

def loopBody173_75 : HolLoopProg 64 :=
.mark loopBody173_74

def loopBody173_76 : HolLoopProg 64 :=
.seq loopBody173_49 loopBody173_75

def loopBody173_77 : HolLoopProg 64 :=
.mark loopBody173_76

def loopBody173_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 7) (Flapjack.HolLoopExp.const 5#64)])

def loopBody173_79 : HolLoopProg 64 :=
.mark loopBody173_78

def loopBody173_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 8)

def loopBody173_81 : HolLoopProg 64 :=
.mark loopBody173_80

def loopBody173_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 4,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 6) (Flapjack.HolLoopExp.const 5#64)])

def loopBody173_83 : HolLoopProg 64 :=
.mark loopBody173_82

def loopBody173_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 11

def loopBody173_85 : HolLoopProg 64 :=
.mark loopBody173_84

def loopBody173_86 : HolLoopProg 64 :=
.call (some
  ([10],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 235) ([11, 12, 13, 14]) (some (11, loopBody173_85, loopBody173_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody173_87 : HolLoopProg 64 :=
.mark loopBody173_86

def loopBody173_88 : HolLoopProg 64 :=
.seq loopBody173_87 loopBody173_1

def loopBody173_89 : HolLoopProg 64 :=
.mark loopBody173_88

def loopBody173_90 : HolLoopProg 64 :=
.seq loopBody173_83 loopBody173_89

def loopBody173_91 : HolLoopProg 64 :=
.mark loopBody173_90

def loopBody173_92 : HolLoopProg 64 :=
.seq loopBody173_81 loopBody173_91

def loopBody173_93 : HolLoopProg 64 :=
.mark loopBody173_92

def loopBody173_94 : HolLoopProg 64 :=
.seq loopBody173_51 loopBody173_93

def loopBody173_95 : HolLoopProg 64 :=
.mark loopBody173_94

def loopBody173_96 : HolLoopProg 64 :=
.seq loopBody173_79 loopBody173_95

def loopBody173_97 : HolLoopProg 64 :=
.mark loopBody173_96

def loopBody173_98 : HolLoopProg 64 :=
.seq loopBody173_1 loopBody173_97

def loopBody173_99 : HolLoopProg 64 :=
.mark loopBody173_98

def loopBody173_100 : HolLoopProg 64 :=
.seq loopBody173_1 loopBody173_99

def loopBody173_101 : HolLoopProg 64 :=
.mark loopBody173_100

def loopBody173_102 : HolLoopProg 64 :=
.seq loopBody173_77 loopBody173_101

def loopBody173_103 : HolLoopProg 64 :=
.mark loopBody173_102

def loopBody173_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.var 8])

def loopBody173_105 : HolLoopProg 64 :=
.mark loopBody173_104

def loopBody173_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 10)

def loopBody173_107 : HolLoopProg 64 :=
.mark loopBody173_106

def loopBody173_108 : HolLoopProg 64 :=
.seq loopBody173_107 loopBody173_1

def loopBody173_109 : HolLoopProg 64 :=
.mark loopBody173_108

def loopBody173_110 : HolLoopProg 64 :=
.seq loopBody173_109 loopBody173_1

def loopBody173_111 : HolLoopProg 64 :=
.mark loopBody173_110

def loopBody173_112 : HolLoopProg 64 :=
.seq loopBody173_105 loopBody173_111

def loopBody173_113 : HolLoopProg 64 :=
.mark loopBody173_112

def loopBody173_114 : HolLoopProg 64 :=
.seq loopBody173_1 loopBody173_113

def loopBody173_115 : HolLoopProg 64 :=
.mark loopBody173_114

def loopBody173_116 : HolLoopProg 64 :=
.seq loopBody173_103 loopBody173_115

def loopBody173_117 : HolLoopProg 64 :=
.mark loopBody173_116

def loopBody173_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 8) (Flapjack.HolLoopExp.const 2#64))

def loopBody173_119 : HolLoopProg 64 :=
.mark loopBody173_118

def loopBody173_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 10)

def loopBody173_121 : HolLoopProg 64 :=
.mark loopBody173_120

def loopBody173_122 : HolLoopProg 64 :=
.seq loopBody173_121 loopBody173_1

def loopBody173_123 : HolLoopProg 64 :=
.mark loopBody173_122

def loopBody173_124 : HolLoopProg 64 :=
.seq loopBody173_123 loopBody173_1

def loopBody173_125 : HolLoopProg 64 :=
.mark loopBody173_124

def loopBody173_126 : HolLoopProg 64 :=
.seq loopBody173_119 loopBody173_125

def loopBody173_127 : HolLoopProg 64 :=
.mark loopBody173_126

def loopBody173_128 : HolLoopProg 64 :=
.seq loopBody173_1 loopBody173_127

def loopBody173_129 : HolLoopProg 64 :=
.mark loopBody173_128

def loopBody173_130 : HolLoopProg 64 :=
.seq loopBody173_117 loopBody173_129

def loopBody173_131 : HolLoopProg 64 :=
.mark loopBody173_130

def loopBody173_132 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 1#64])

def loopBody173_133 : HolLoopProg 64 :=
.mark loopBody173_132

def loopBody173_134 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 10)

def loopBody173_135 : HolLoopProg 64 :=
.mark loopBody173_134

def loopBody173_136 : HolLoopProg 64 :=
.seq loopBody173_135 loopBody173_1

def loopBody173_137 : HolLoopProg 64 :=
.mark loopBody173_136

def loopBody173_138 : HolLoopProg 64 :=
.seq loopBody173_137 loopBody173_1

def loopBody173_139 : HolLoopProg 64 :=
.mark loopBody173_138

def loopBody173_140 : HolLoopProg 64 :=
.seq loopBody173_133 loopBody173_139

def loopBody173_141 : HolLoopProg 64 :=
.mark loopBody173_140

def loopBody173_142 : HolLoopProg 64 :=
.seq loopBody173_1 loopBody173_141

def loopBody173_143 : HolLoopProg 64 :=
.mark loopBody173_142

def loopBody173_144 : HolLoopProg 64 :=
.seq loopBody173_131 loopBody173_143

def loopBody173_145 : HolLoopProg 64 :=
.mark loopBody173_144

def loopBody173_146 : HolLoopProg 64 :=
.seq loopBody173_47 loopBody173_145

def loopBody173_147 : HolLoopProg 64 :=
.mark loopBody173_146

def loopBody173_148 : HolLoopProg 64 :=
.seq loopBody173_1 loopBody173_147

def loopBody173_149 : HolLoopProg 64 :=
.mark loopBody173_148

def loopBody173_150 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody173_151 : HolLoopProg 64 :=
.mark loopBody173_150

def loopBody173_152 : HolLoopProg 64 :=
.seq loopBody173_149 loopBody173_151

def loopBody173_153 : HolLoopProg 64 :=
.mark loopBody173_152

def loopBody173_154 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody173_155 : HolLoopProg 64 :=
.mark loopBody173_154

def loopBody173_156 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.RegImm.imm 0#64) loopBody173_153 loopBody173_155 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody173_157 : HolLoopProg 64 :=
.mark loopBody173_156

def loopBody173_158 : HolLoopProg 64 :=
.seq loopBody173_157 loopBody173_1

def loopBody173_159 : HolLoopProg 64 :=
.mark loopBody173_158

def loopBody173_160 : HolLoopProg 64 :=
.seq loopBody173_45 loopBody173_159

def loopBody173_161 : HolLoopProg 64 :=
.mark loopBody173_160

def loopBody173_162 : HolLoopProg 64 :=
.seq loopBody173_43 loopBody173_161

def loopBody173_163 : HolLoopProg 64 :=
.mark loopBody173_162

def loopBody173_164 : HolLoopProg 64 :=
.seq loopBody173_37 loopBody173_163

def loopBody173_165 : HolLoopProg 64 :=
.mark loopBody173_164

def loopBody173_166 : HolLoopProg 64 :=
.seq loopBody173_35 loopBody173_165

def loopBody173_167 : HolLoopProg 64 :=
.mark loopBody173_166

def loopBody173_168 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) loopBody173_167 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody173_169 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 5)

def loopBody173_170 : HolLoopProg 64 :=
.mark loopBody173_169

def loopBody173_171 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 32#64)

def loopBody173_172 : HolLoopProg 64 :=
.mark loopBody173_171

def loopBody173_173 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody173_174 : HolLoopProg 64 :=
.mark loopBody173_173

def loopBody173_175 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 78) ([10, 11]) (some (10, loopBody173_174, loopBody173_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody173_176 : HolLoopProg 64 :=
.mark loopBody173_175

def loopBody173_177 : HolLoopProg 64 :=
.seq loopBody173_176 loopBody173_1

def loopBody173_178 : HolLoopProg 64 :=
.mark loopBody173_177

def loopBody173_179 : HolLoopProg 64 :=
.seq loopBody173_172 loopBody173_178

def loopBody173_180 : HolLoopProg 64 :=
.mark loopBody173_179

def loopBody173_181 : HolLoopProg 64 :=
.seq loopBody173_170 loopBody173_180

def loopBody173_182 : HolLoopProg 64 :=
.mark loopBody173_181

def loopBody173_183 : HolLoopProg 64 :=
.seq loopBody173_1 loopBody173_182

def loopBody173_184 : HolLoopProg 64 :=
.mark loopBody173_183

def loopBody173_185 : HolLoopProg 64 :=
.seq loopBody173_1 loopBody173_184

def loopBody173_186 : HolLoopProg 64 :=
.mark loopBody173_185

def loopBody173_187 : HolLoopProg 64 :=
.seq loopBody173_168 loopBody173_186

def loopBody173_188 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 6)

def loopBody173_189 : HolLoopProg 64 :=
.mark loopBody173_188

def loopBody173_190 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.reg 11) loopBody173_39 loopBody173_41 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody173_191 : HolLoopProg 64 :=
.mark loopBody173_190

def loopBody173_192 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 1#64])

def loopBody173_193 : HolLoopProg 64 :=
.mark loopBody173_192

def loopBody173_194 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 9)

def loopBody173_195 : HolLoopProg 64 :=
.mark loopBody173_194

def loopBody173_196 : HolLoopProg 64 :=
.seq loopBody173_195 loopBody173_1

def loopBody173_197 : HolLoopProg 64 :=
.mark loopBody173_196

def loopBody173_198 : HolLoopProg 64 :=
.seq loopBody173_197 loopBody173_1

def loopBody173_199 : HolLoopProg 64 :=
.mark loopBody173_198

def loopBody173_200 : HolLoopProg 64 :=
.seq loopBody173_193 loopBody173_199

def loopBody173_201 : HolLoopProg 64 :=
.mark loopBody173_200

def loopBody173_202 : HolLoopProg 64 :=
.seq loopBody173_1 loopBody173_201

def loopBody173_203 : HolLoopProg 64 :=
.mark loopBody173_202

def loopBody173_204 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 4,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 6) (Flapjack.HolLoopExp.const 5#64)])

def loopBody173_205 : HolLoopProg 64 :=
.mark loopBody173_204

def loopBody173_206 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 5)

def loopBody173_207 : HolLoopProg 64 :=
.mark loopBody173_206

def loopBody173_208 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 5)

def loopBody173_209 : HolLoopProg 64 :=
.mark loopBody173_208

def loopBody173_210 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 154) ([10, 11, 12]) (some (10, loopBody173_174, loopBody173_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody173_211 : HolLoopProg 64 :=
.mark loopBody173_210

def loopBody173_212 : HolLoopProg 64 :=
.seq loopBody173_211 loopBody173_1

def loopBody173_213 : HolLoopProg 64 :=
.mark loopBody173_212

def loopBody173_214 : HolLoopProg 64 :=
.seq loopBody173_209 loopBody173_213

def loopBody173_215 : HolLoopProg 64 :=
.mark loopBody173_214

def loopBody173_216 : HolLoopProg 64 :=
.seq loopBody173_207 loopBody173_215

def loopBody173_217 : HolLoopProg 64 :=
.mark loopBody173_216

def loopBody173_218 : HolLoopProg 64 :=
.seq loopBody173_205 loopBody173_217

def loopBody173_219 : HolLoopProg 64 :=
.mark loopBody173_218

def loopBody173_220 : HolLoopProg 64 :=
.seq loopBody173_1 loopBody173_219

def loopBody173_221 : HolLoopProg 64 :=
.mark loopBody173_220

def loopBody173_222 : HolLoopProg 64 :=
.seq loopBody173_1 loopBody173_221

def loopBody173_223 : HolLoopProg 64 :=
.mark loopBody173_222

def loopBody173_224 : HolLoopProg 64 :=
.seq loopBody173_203 loopBody173_223

def loopBody173_225 : HolLoopProg 64 :=
.mark loopBody173_224

def loopBody173_226 : HolLoopProg 64 :=
.seq loopBody173_225 loopBody173_151

def loopBody173_227 : HolLoopProg 64 :=
.mark loopBody173_226

def loopBody173_228 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.RegImm.imm 0#64) loopBody173_227 loopBody173_155 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody173_229 : HolLoopProg 64 :=
.mark loopBody173_228

def loopBody173_230 : HolLoopProg 64 :=
.seq loopBody173_229 loopBody173_1

def loopBody173_231 : HolLoopProg 64 :=
.mark loopBody173_230

def loopBody173_232 : HolLoopProg 64 :=
.seq loopBody173_45 loopBody173_231

def loopBody173_233 : HolLoopProg 64 :=
.mark loopBody173_232

def loopBody173_234 : HolLoopProg 64 :=
.seq loopBody173_191 loopBody173_233

def loopBody173_235 : HolLoopProg 64 :=
.mark loopBody173_234

def loopBody173_236 : HolLoopProg 64 :=
.seq loopBody173_55 loopBody173_235

def loopBody173_237 : HolLoopProg 64 :=
.mark loopBody173_236

def loopBody173_238 : HolLoopProg 64 :=
.seq loopBody173_189 loopBody173_237

def loopBody173_239 : HolLoopProg 64 :=
.mark loopBody173_238

def loopBody173_240 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) loopBody173_239 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))

def loopBody173_241 : HolLoopProg 64 :=
.seq loopBody173_187 loopBody173_240

def loopBody173_242 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 2)

def loopBody173_243 : HolLoopProg 64 :=
.mark loopBody173_242

def loopBody173_244 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 32#64)

def loopBody173_245 : HolLoopProg 64 :=
.mark loopBody173_244

def loopBody173_246 : HolLoopProg 64 :=
.call (some ([9], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 77) ([10, 11, 12]) (some (10, loopBody173_174, loopBody173_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody173_247 : HolLoopProg 64 :=
.mark loopBody173_246

def loopBody173_248 : HolLoopProg 64 :=
.seq loopBody173_247 loopBody173_1

def loopBody173_249 : HolLoopProg 64 :=
.mark loopBody173_248

def loopBody173_250 : HolLoopProg 64 :=
.seq loopBody173_245 loopBody173_249

def loopBody173_251 : HolLoopProg 64 :=
.mark loopBody173_250

def loopBody173_252 : HolLoopProg 64 :=
.seq loopBody173_207 loopBody173_251

def loopBody173_253 : HolLoopProg 64 :=
.mark loopBody173_252

def loopBody173_254 : HolLoopProg 64 :=
.seq loopBody173_243 loopBody173_253

def loopBody173_255 : HolLoopProg 64 :=
.mark loopBody173_254

def loopBody173_256 : HolLoopProg 64 :=
.seq loopBody173_1 loopBody173_255

def loopBody173_257 : HolLoopProg 64 :=
.mark loopBody173_256

def loopBody173_258 : HolLoopProg 64 :=
.seq loopBody173_1 loopBody173_257

def loopBody173_259 : HolLoopProg 64 :=
.mark loopBody173_258

def loopBody173_260 : HolLoopProg 64 :=
.seq loopBody173_241 loopBody173_259

def loopBody173_261 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 3)

def loopBody173_262 : HolLoopProg 64 :=
.mark loopBody173_261

def loopBody173_263 : HolLoopProg 64 :=
.call (some ([9], Flapjack.Spt.ln)) (some 70) ([10]) (some (10, loopBody173_174, loopBody173_1, (Flapjack.Spt.ln)))

def loopBody173_264 : HolLoopProg 64 :=
.mark loopBody173_263

def loopBody173_265 : HolLoopProg 64 :=
.seq loopBody173_264 loopBody173_1

def loopBody173_266 : HolLoopProg 64 :=
.mark loopBody173_265

def loopBody173_267 : HolLoopProg 64 :=
.seq loopBody173_262 loopBody173_266

def loopBody173_268 : HolLoopProg 64 :=
.mark loopBody173_267

def loopBody173_269 : HolLoopProg 64 :=
.seq loopBody173_1 loopBody173_268

def loopBody173_270 : HolLoopProg 64 :=
.mark loopBody173_269

def loopBody173_271 : HolLoopProg 64 :=
.seq loopBody173_1 loopBody173_270

def loopBody173_272 : HolLoopProg 64 :=
.mark loopBody173_271

def loopBody173_273 : HolLoopProg 64 :=
.seq loopBody173_260 loopBody173_272

def loopBody173_274 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody173_275 : HolLoopProg 64 :=
.mark loopBody173_274

def loopBody173_276 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [9]

def loopBody173_277 : HolLoopProg 64 :=
.mark loopBody173_276

def loopBody173_278 : HolLoopProg 64 :=
.seq loopBody173_277 loopBody173_1

def loopBody173_279 : HolLoopProg 64 :=
.mark loopBody173_278

def loopBody173_280 : HolLoopProg 64 :=
.seq loopBody173_275 loopBody173_279

def loopBody173_281 : HolLoopProg 64 :=
.mark loopBody173_280

def loopBody173_282 : HolLoopProg 64 :=
.seq loopBody173_273 loopBody173_281

def loopBody173_283 : HolLoopProg 64 :=
.seq loopBody173_33 loopBody173_282

def loopBody173_284 : HolLoopProg 64 :=
.seq loopBody173_1 loopBody173_283

def loopBody173_285 : HolLoopProg 64 :=
.seq loopBody173_31 loopBody173_284

def loopBody173_286 : HolLoopProg 64 :=
.seq loopBody173_1 loopBody173_285

def loopBody173_287 : HolLoopProg 64 :=
.seq loopBody173_29 loopBody173_286

def loopBody173_288 : HolLoopProg 64 :=
.seq loopBody173_1 loopBody173_287

def loopBody173_289 : HolLoopProg 64 :=
.seq loopBody173_27 loopBody173_288

def loopBody173_290 : HolLoopProg 64 :=
.seq loopBody173_1 loopBody173_289

def loopBody173_291 : HolLoopProg 64 :=
.seq loopBody173_1 loopBody173_290

def loopBody173_292 : HolLoopProg 64 :=
.seq loopBody173_17 loopBody173_291

def loopBody173_293 : HolLoopProg 64 :=
.seq loopBody173_1 loopBody173_292

def loopBody173_294 : HolLoopProg 64 :=
.seq loopBody173_1 loopBody173_293

def loopBody173_295 : HolLoopProg 64 :=
.seq loopBody173_7 loopBody173_294

def loopBody173_296 : HolLoopProg 64 :=
.seq loopBody173_1 loopBody173_295

def loopBody173_297 : HolLoopProg 64 :=
.seq loopBody173_1 loopBody173_296

def output173 : Nat × List Nat × HolLoopProg 64 :=
  (237, [0, 1, 2], loopBody173_297)
end InitECandidate.Proofs.FrontendStages.Loop
