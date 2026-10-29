import InitECandidate.Proofs.FrontendStages.Loop.Translate198
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody214_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 256#64)

def loopBody214_1 : HolLoopProg 64 :=
.mark loopBody214_0

def loopBody214_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody214_3 : HolLoopProg 64 :=
.mark loopBody214_2

def loopBody214_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody214_5 : HolLoopProg 64 :=
.mark loopBody214_4

def loopBody214_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody214_7 : HolLoopProg 64 :=
.mark loopBody214_6

def loopBody214_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.RegImm.reg 4) loopBody214_5 loopBody214_7 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody214_9 : HolLoopProg 64 :=
.mark loopBody214_8

def loopBody214_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody214_11 : HolLoopProg 64 :=
.mark loopBody214_10

def loopBody214_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody214_13 : HolLoopProg 64 :=
.mark loopBody214_12

def loopBody214_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody214_15 : HolLoopProg 64 :=
.mark loopBody214_14

def loopBody214_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 2)

def loopBody214_17 : HolLoopProg 64 :=
.mark loopBody214_16

def loopBody214_18 : HolLoopProg 64 :=
.seq loopBody214_17 loopBody214_13

def loopBody214_19 : HolLoopProg 64 :=
.mark loopBody214_18

def loopBody214_20 : HolLoopProg 64 :=
.seq loopBody214_19 loopBody214_13

def loopBody214_21 : HolLoopProg 64 :=
.mark loopBody214_20

def loopBody214_22 : HolLoopProg 64 :=
.seq loopBody214_15 loopBody214_21

def loopBody214_23 : HolLoopProg 64 :=
.mark loopBody214_22

def loopBody214_24 : HolLoopProg 64 :=
.seq loopBody214_13 loopBody214_23

def loopBody214_25 : HolLoopProg 64 :=
.mark loopBody214_24

def loopBody214_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 4#64)

def loopBody214_27 : HolLoopProg 64 :=
.mark loopBody214_26

def loopBody214_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody214_29 : HolLoopProg 64 :=
.mark loopBody214_28

def loopBody214_30 : HolLoopProg 64 :=
.seq loopBody214_27 loopBody214_29

def loopBody214_31 : HolLoopProg 64 :=
.mark loopBody214_30

def loopBody214_32 : HolLoopProg 64 :=
.seq loopBody214_25 loopBody214_31

def loopBody214_33 : HolLoopProg 64 :=
.mark loopBody214_32

def loopBody214_34 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody214_33 loopBody214_13 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody214_35 : HolLoopProg 64 :=
.mark loopBody214_34

def loopBody214_36 : HolLoopProg 64 :=
.seq loopBody214_35 loopBody214_13

def loopBody214_37 : HolLoopProg 64 :=
.mark loopBody214_36

def loopBody214_38 : HolLoopProg 64 :=
.seq loopBody214_11 loopBody214_37

def loopBody214_39 : HolLoopProg 64 :=
.mark loopBody214_38

def loopBody214_40 : HolLoopProg 64 :=
.seq loopBody214_9 loopBody214_39

def loopBody214_41 : HolLoopProg 64 :=
.mark loopBody214_40

def loopBody214_42 : HolLoopProg 64 :=
.seq loopBody214_3 loopBody214_41

def loopBody214_43 : HolLoopProg 64 :=
.mark loopBody214_42

def loopBody214_44 : HolLoopProg 64 :=
.seq loopBody214_1 loopBody214_43

def loopBody214_45 : HolLoopProg 64 :=
.mark loopBody214_44

def loopBody214_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 3#64),
      Flapjack.HolLoopExp.const 8#64])

def loopBody214_47 : HolLoopProg 64 :=
.mark loopBody214_46

def loopBody214_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody214_49 : HolLoopProg 64 :=
.mark loopBody214_48

def loopBody214_50 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([3]) (some (3, loopBody214_49, loopBody214_13, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody214_51 : HolLoopProg 64 :=
.mark loopBody214_50

def loopBody214_52 : HolLoopProg 64 :=
.seq loopBody214_51 loopBody214_13

def loopBody214_53 : HolLoopProg 64 :=
.mark loopBody214_52

def loopBody214_54 : HolLoopProg 64 :=
.seq loopBody214_47 loopBody214_53

def loopBody214_55 : HolLoopProg 64 :=
.mark loopBody214_54

def loopBody214_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 5#64),
      Flapjack.HolLoopExp.const 32#64])

def loopBody214_57 : HolLoopProg 64 :=
.mark loopBody214_56

def loopBody214_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody214_59 : HolLoopProg 64 :=
.mark loopBody214_58

def loopBody214_60 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([4]) (some (4, loopBody214_59, loopBody214_13, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody214_61 : HolLoopProg 64 :=
.mark loopBody214_60

def loopBody214_62 : HolLoopProg 64 :=
.seq loopBody214_61 loopBody214_13

def loopBody214_63 : HolLoopProg 64 :=
.mark loopBody214_62

def loopBody214_64 : HolLoopProg 64 :=
.seq loopBody214_57 loopBody214_63

def loopBody214_65 : HolLoopProg 64 :=
.mark loopBody214_64

def loopBody214_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody214_67 : HolLoopProg 64 :=
.mark loopBody214_66

def loopBody214_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody214_69 : HolLoopProg 64 :=
.mark loopBody214_68

def loopBody214_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody214_71 : HolLoopProg 64 :=
.mark loopBody214_70

def loopBody214_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody214_73 : HolLoopProg 64 :=
.mark loopBody214_72

def loopBody214_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody214_75 : HolLoopProg 64 :=
.mark loopBody214_74

def loopBody214_76 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.less) 6 (Flapjack.RegImm.reg 7) loopBody214_73 loopBody214_75 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody214_77 : HolLoopProg 64 :=
.mark loopBody214_76

def loopBody214_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody214_79 : HolLoopProg 64 :=
.mark loopBody214_78

def loopBody214_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 4#64)]))

def loopBody214_81 : HolLoopProg 64 :=
.mark loopBody214_80

def loopBody214_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 4#64),
        Flapjack.HolLoopExp.const 8#64]))

def loopBody214_83 : HolLoopProg 64 :=
.mark loopBody214_82

def loopBody214_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody214_85 : HolLoopProg 64 :=
.mark loopBody214_84

def loopBody214_86 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 274) ([6, 7]) (some (6, loopBody214_85, loopBody214_13, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody214_87 : HolLoopProg 64 :=
.mark loopBody214_86

def loopBody214_88 : HolLoopProg 64 :=
.seq loopBody214_87 loopBody214_13

def loopBody214_89 : HolLoopProg 64 :=
.mark loopBody214_88

def loopBody214_90 : HolLoopProg 64 :=
.seq loopBody214_83 loopBody214_89

def loopBody214_91 : HolLoopProg 64 :=
.mark loopBody214_90

def loopBody214_92 : HolLoopProg 64 :=
.seq loopBody214_81 loopBody214_91

def loopBody214_93 : HolLoopProg 64 :=
.mark loopBody214_92

def loopBody214_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 2,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 3#64)])

def loopBody214_95 : HolLoopProg 64 :=
.mark loopBody214_94

def loopBody214_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody214_97 : HolLoopProg 64 :=
.mark loopBody214_96

def loopBody214_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 7)

def loopBody214_99 : HolLoopProg 64 :=
.mark loopBody214_98

def loopBody214_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 6) 8

def loopBody214_101 : HolLoopProg 64 :=
.mark loopBody214_100

def loopBody214_102 : HolLoopProg 64 :=
.seq loopBody214_101 loopBody214_13

def loopBody214_103 : HolLoopProg 64 :=
.mark loopBody214_102

def loopBody214_104 : HolLoopProg 64 :=
.seq loopBody214_99 loopBody214_103

def loopBody214_105 : HolLoopProg 64 :=
.mark loopBody214_104

def loopBody214_106 : HolLoopProg 64 :=
.seq loopBody214_105 loopBody214_13

def loopBody214_107 : HolLoopProg 64 :=
.mark loopBody214_106

def loopBody214_108 : HolLoopProg 64 :=
.seq loopBody214_97 loopBody214_107

def loopBody214_109 : HolLoopProg 64 :=
.mark loopBody214_108

def loopBody214_110 : HolLoopProg 64 :=
.seq loopBody214_13 loopBody214_109

def loopBody214_111 : HolLoopProg 64 :=
.mark loopBody214_110

def loopBody214_112 : HolLoopProg 64 :=
.seq loopBody214_95 loopBody214_111

def loopBody214_113 : HolLoopProg 64 :=
.mark loopBody214_112

def loopBody214_114 : HolLoopProg 64 :=
.seq loopBody214_13 loopBody214_113

def loopBody214_115 : HolLoopProg 64 :=
.mark loopBody214_114

def loopBody214_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 4#64)]))

def loopBody214_117 : HolLoopProg 64 :=
.mark loopBody214_116

def loopBody214_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 4#64),
        Flapjack.HolLoopExp.const 8#64]))

def loopBody214_119 : HolLoopProg 64 :=
.mark loopBody214_118

def loopBody214_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 3,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 5#64)])

def loopBody214_121 : HolLoopProg 64 :=
.mark loopBody214_120

def loopBody214_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody214_123 : HolLoopProg 64 :=
.mark loopBody214_122

def loopBody214_124 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 158) ([7, 8, 9]) (some (7, loopBody214_123, loopBody214_13, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody214_125 : HolLoopProg 64 :=
.mark loopBody214_124

def loopBody214_126 : HolLoopProg 64 :=
.seq loopBody214_125 loopBody214_13

def loopBody214_127 : HolLoopProg 64 :=
.mark loopBody214_126

def loopBody214_128 : HolLoopProg 64 :=
.seq loopBody214_121 loopBody214_127

def loopBody214_129 : HolLoopProg 64 :=
.mark loopBody214_128

def loopBody214_130 : HolLoopProg 64 :=
.seq loopBody214_119 loopBody214_129

def loopBody214_131 : HolLoopProg 64 :=
.mark loopBody214_130

def loopBody214_132 : HolLoopProg 64 :=
.seq loopBody214_117 loopBody214_131

def loopBody214_133 : HolLoopProg 64 :=
.mark loopBody214_132

def loopBody214_134 : HolLoopProg 64 :=
.seq loopBody214_13 loopBody214_133

def loopBody214_135 : HolLoopProg 64 :=
.mark loopBody214_134

def loopBody214_136 : HolLoopProg 64 :=
.seq loopBody214_13 loopBody214_135

def loopBody214_137 : HolLoopProg 64 :=
.mark loopBody214_136

def loopBody214_138 : HolLoopProg 64 :=
.seq loopBody214_115 loopBody214_137

def loopBody214_139 : HolLoopProg 64 :=
.mark loopBody214_138

def loopBody214_140 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 1#64])

def loopBody214_141 : HolLoopProg 64 :=
.mark loopBody214_140

def loopBody214_142 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 6)

def loopBody214_143 : HolLoopProg 64 :=
.mark loopBody214_142

def loopBody214_144 : HolLoopProg 64 :=
.seq loopBody214_143 loopBody214_13

def loopBody214_145 : HolLoopProg 64 :=
.mark loopBody214_144

def loopBody214_146 : HolLoopProg 64 :=
.seq loopBody214_145 loopBody214_13

def loopBody214_147 : HolLoopProg 64 :=
.mark loopBody214_146

def loopBody214_148 : HolLoopProg 64 :=
.seq loopBody214_141 loopBody214_147

def loopBody214_149 : HolLoopProg 64 :=
.mark loopBody214_148

def loopBody214_150 : HolLoopProg 64 :=
.seq loopBody214_13 loopBody214_149

def loopBody214_151 : HolLoopProg 64 :=
.mark loopBody214_150

def loopBody214_152 : HolLoopProg 64 :=
.seq loopBody214_139 loopBody214_151

def loopBody214_153 : HolLoopProg 64 :=
.mark loopBody214_152

def loopBody214_154 : HolLoopProg 64 :=
.seq loopBody214_93 loopBody214_153

def loopBody214_155 : HolLoopProg 64 :=
.mark loopBody214_154

def loopBody214_156 : HolLoopProg 64 :=
.seq loopBody214_13 loopBody214_155

def loopBody214_157 : HolLoopProg 64 :=
.mark loopBody214_156

def loopBody214_158 : HolLoopProg 64 :=
.seq loopBody214_13 loopBody214_157

def loopBody214_159 : HolLoopProg 64 :=
.mark loopBody214_158

def loopBody214_160 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody214_161 : HolLoopProg 64 :=
.mark loopBody214_160

def loopBody214_162 : HolLoopProg 64 :=
.seq loopBody214_159 loopBody214_161

def loopBody214_163 : HolLoopProg 64 :=
.mark loopBody214_162

def loopBody214_164 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody214_165 : HolLoopProg 64 :=
.mark loopBody214_164

def loopBody214_166 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody214_163 loopBody214_165 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody214_167 : HolLoopProg 64 :=
.mark loopBody214_166

def loopBody214_168 : HolLoopProg 64 :=
.seq loopBody214_167 loopBody214_13

def loopBody214_169 : HolLoopProg 64 :=
.mark loopBody214_168

def loopBody214_170 : HolLoopProg 64 :=
.seq loopBody214_79 loopBody214_169

def loopBody214_171 : HolLoopProg 64 :=
.mark loopBody214_170

def loopBody214_172 : HolLoopProg 64 :=
.seq loopBody214_77 loopBody214_171

def loopBody214_173 : HolLoopProg 64 :=
.mark loopBody214_172

def loopBody214_174 : HolLoopProg 64 :=
.seq loopBody214_71 loopBody214_173

def loopBody214_175 : HolLoopProg 64 :=
.mark loopBody214_174

def loopBody214_176 : HolLoopProg 64 :=
.seq loopBody214_69 loopBody214_175

def loopBody214_177 : HolLoopProg 64 :=
.mark loopBody214_176

def loopBody214_178 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody214_177 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody214_179 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody214_180 : HolLoopProg 64 :=
.mark loopBody214_179

def loopBody214_181 : HolLoopProg 64 :=
.seq loopBody214_180 loopBody214_13

def loopBody214_182 : HolLoopProg 64 :=
.mark loopBody214_181

def loopBody214_183 : HolLoopProg 64 :=
.seq loopBody214_182 loopBody214_13

def loopBody214_184 : HolLoopProg 64 :=
.mark loopBody214_183

def loopBody214_185 : HolLoopProg 64 :=
.seq loopBody214_178 loopBody214_184

def loopBody214_186 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.add
            [Flapjack.HolLoopExp.var 2,
              Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4)
                (Flapjack.HolLoopExp.const 3#64)]),
        Flapjack.HolLoopExp.const 8#64]))

def loopBody214_187 : HolLoopProg 64 :=
.mark loopBody214_186

def loopBody214_188 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 3,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 1#64])
        (Flapjack.HolLoopExp.const 5#64)])

def loopBody214_189 : HolLoopProg 64 :=
.mark loopBody214_188

def loopBody214_190 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 32#64)

def loopBody214_191 : HolLoopProg 64 :=
.mark loopBody214_190

def loopBody214_192 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 79) ([6, 7, 8]) (some (6, loopBody214_85, loopBody214_13, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody214_193 : HolLoopProg 64 :=
.mark loopBody214_192

def loopBody214_194 : HolLoopProg 64 :=
.seq loopBody214_193 loopBody214_13

def loopBody214_195 : HolLoopProg 64 :=
.mark loopBody214_194

def loopBody214_196 : HolLoopProg 64 :=
.seq loopBody214_191 loopBody214_195

def loopBody214_197 : HolLoopProg 64 :=
.mark loopBody214_196

def loopBody214_198 : HolLoopProg 64 :=
.seq loopBody214_189 loopBody214_197

def loopBody214_199 : HolLoopProg 64 :=
.mark loopBody214_198

def loopBody214_200 : HolLoopProg 64 :=
.seq loopBody214_187 loopBody214_199

def loopBody214_201 : HolLoopProg 64 :=
.mark loopBody214_200

def loopBody214_202 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody214_203 : HolLoopProg 64 :=
.mark loopBody214_202

def loopBody214_204 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody214_205 : HolLoopProg 64 :=
.mark loopBody214_204

def loopBody214_206 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody214_207 : HolLoopProg 64 :=
.mark loopBody214_206

def loopBody214_208 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.RegImm.reg 8) loopBody214_205 loopBody214_207 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody214_209 : HolLoopProg 64 :=
.mark loopBody214_208

def loopBody214_210 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody214_211 : HolLoopProg 64 :=
.mark loopBody214_210

def loopBody214_212 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 2#64)

def loopBody214_213 : HolLoopProg 64 :=
.mark loopBody214_212

def loopBody214_214 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 6)

def loopBody214_215 : HolLoopProg 64 :=
.mark loopBody214_214

def loopBody214_216 : HolLoopProg 64 :=
.seq loopBody214_215 loopBody214_13

def loopBody214_217 : HolLoopProg 64 :=
.mark loopBody214_216

def loopBody214_218 : HolLoopProg 64 :=
.seq loopBody214_217 loopBody214_13

def loopBody214_219 : HolLoopProg 64 :=
.mark loopBody214_218

def loopBody214_220 : HolLoopProg 64 :=
.seq loopBody214_213 loopBody214_219

def loopBody214_221 : HolLoopProg 64 :=
.mark loopBody214_220

def loopBody214_222 : HolLoopProg 64 :=
.seq loopBody214_13 loopBody214_221

def loopBody214_223 : HolLoopProg 64 :=
.mark loopBody214_222

def loopBody214_224 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 4#64)

def loopBody214_225 : HolLoopProg 64 :=
.mark loopBody214_224

def loopBody214_226 : HolLoopProg 64 :=
.seq loopBody214_225 loopBody214_85

def loopBody214_227 : HolLoopProg 64 :=
.mark loopBody214_226

def loopBody214_228 : HolLoopProg 64 :=
.seq loopBody214_223 loopBody214_227

def loopBody214_229 : HolLoopProg 64 :=
.mark loopBody214_228

def loopBody214_230 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody214_229 loopBody214_13 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody214_231 : HolLoopProg 64 :=
.mark loopBody214_230

def loopBody214_232 : HolLoopProg 64 :=
.seq loopBody214_231 loopBody214_13

def loopBody214_233 : HolLoopProg 64 :=
.mark loopBody214_232

def loopBody214_234 : HolLoopProg 64 :=
.seq loopBody214_211 loopBody214_233

def loopBody214_235 : HolLoopProg 64 :=
.mark loopBody214_234

def loopBody214_236 : HolLoopProg 64 :=
.seq loopBody214_209 loopBody214_235

def loopBody214_237 : HolLoopProg 64 :=
.mark loopBody214_236

def loopBody214_238 : HolLoopProg 64 :=
.seq loopBody214_203 loopBody214_237

def loopBody214_239 : HolLoopProg 64 :=
.mark loopBody214_238

def loopBody214_240 : HolLoopProg 64 :=
.seq loopBody214_97 loopBody214_239

def loopBody214_241 : HolLoopProg 64 :=
.mark loopBody214_240

def loopBody214_242 : HolLoopProg 64 :=
.seq loopBody214_241 loopBody214_151

def loopBody214_243 : HolLoopProg 64 :=
.mark loopBody214_242

def loopBody214_244 : HolLoopProg 64 :=
.seq loopBody214_201 loopBody214_243

def loopBody214_245 : HolLoopProg 64 :=
.mark loopBody214_244

def loopBody214_246 : HolLoopProg 64 :=
.seq loopBody214_13 loopBody214_245

def loopBody214_247 : HolLoopProg 64 :=
.mark loopBody214_246

def loopBody214_248 : HolLoopProg 64 :=
.seq loopBody214_13 loopBody214_247

def loopBody214_249 : HolLoopProg 64 :=
.mark loopBody214_248

def loopBody214_250 : HolLoopProg 64 :=
.seq loopBody214_249 loopBody214_161

def loopBody214_251 : HolLoopProg 64 :=
.mark loopBody214_250

def loopBody214_252 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody214_251 loopBody214_165 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody214_253 : HolLoopProg 64 :=
.mark loopBody214_252

def loopBody214_254 : HolLoopProg 64 :=
.seq loopBody214_253 loopBody214_13

def loopBody214_255 : HolLoopProg 64 :=
.mark loopBody214_254

def loopBody214_256 : HolLoopProg 64 :=
.seq loopBody214_79 loopBody214_255

def loopBody214_257 : HolLoopProg 64 :=
.mark loopBody214_256

def loopBody214_258 : HolLoopProg 64 :=
.seq loopBody214_77 loopBody214_257

def loopBody214_259 : HolLoopProg 64 :=
.mark loopBody214_258

def loopBody214_260 : HolLoopProg 64 :=
.seq loopBody214_71 loopBody214_259

def loopBody214_261 : HolLoopProg 64 :=
.mark loopBody214_260

def loopBody214_262 : HolLoopProg 64 :=
.seq loopBody214_69 loopBody214_261

def loopBody214_263 : HolLoopProg 64 :=
.mark loopBody214_262

def loopBody214_264 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody214_263 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody214_265 : HolLoopProg 64 :=
.seq loopBody214_185 loopBody214_264

def loopBody214_266 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody214_267 : HolLoopProg 64 :=
.mark loopBody214_266

def loopBody214_268 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody214_269 : HolLoopProg 64 :=
.mark loopBody214_268

def loopBody214_270 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5, 6]

def loopBody214_271 : HolLoopProg 64 :=
.mark loopBody214_270

def loopBody214_272 : HolLoopProg 64 :=
.seq loopBody214_271 loopBody214_13

def loopBody214_273 : HolLoopProg 64 :=
.mark loopBody214_272

def loopBody214_274 : HolLoopProg 64 :=
.seq loopBody214_269 loopBody214_273

def loopBody214_275 : HolLoopProg 64 :=
.mark loopBody214_274

def loopBody214_276 : HolLoopProg 64 :=
.seq loopBody214_267 loopBody214_275

def loopBody214_277 : HolLoopProg 64 :=
.mark loopBody214_276

def loopBody214_278 : HolLoopProg 64 :=
.seq loopBody214_265 loopBody214_277

def loopBody214_279 : HolLoopProg 64 :=
.seq loopBody214_67 loopBody214_278

def loopBody214_280 : HolLoopProg 64 :=
.seq loopBody214_13 loopBody214_279

def loopBody214_281 : HolLoopProg 64 :=
.seq loopBody214_65 loopBody214_280

def loopBody214_282 : HolLoopProg 64 :=
.seq loopBody214_13 loopBody214_281

def loopBody214_283 : HolLoopProg 64 :=
.seq loopBody214_13 loopBody214_282

def loopBody214_284 : HolLoopProg 64 :=
.seq loopBody214_55 loopBody214_283

def loopBody214_285 : HolLoopProg 64 :=
.seq loopBody214_13 loopBody214_284

def loopBody214_286 : HolLoopProg 64 :=
.seq loopBody214_13 loopBody214_285

def loopBody214_287 : HolLoopProg 64 :=
.seq loopBody214_45 loopBody214_286

def output214 : Nat × List Nat × HolLoopProg 64 :=
  (278, [0, 1], loopBody214_287)
end InitECandidate.Proofs.FrontendStages.Loop
