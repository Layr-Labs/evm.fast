import InitECandidate.Proofs.FrontendStages.Loop.Translate592
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody608_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody608_1 : HolLoopProg 64 :=
.mark loopBody608_0

def loopBody608_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody608_3 : HolLoopProg 64 :=
.mark loopBody608_2

def loopBody608_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody608_5 : HolLoopProg 64 :=
.mark loopBody608_4

def loopBody608_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 0)

def loopBody608_7 : HolLoopProg 64 :=
.mark loopBody608_6

def loopBody608_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody608_9 : HolLoopProg 64 :=
.mark loopBody608_8

def loopBody608_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody608_11 : HolLoopProg 64 :=
.mark loopBody608_10

def loopBody608_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.RegImm.reg 7) loopBody608_9 loopBody608_11 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody608_13 : HolLoopProg 64 :=
.mark loopBody608_12

def loopBody608_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody608_15 : HolLoopProg 64 :=
.mark loopBody608_14

def loopBody608_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 2,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 5#64)]))

def loopBody608_17 : HolLoopProg 64 :=
.mark loopBody608_16

def loopBody608_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.var 2,
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 5#64)],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody608_19 : HolLoopProg 64 :=
.mark loopBody608_18

def loopBody608_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.var 2,
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 5#64)],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody608_21 : HolLoopProg 64 :=
.mark loopBody608_20

def loopBody608_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.var 2,
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 5#64)],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody608_23 : HolLoopProg 64 :=
.mark loopBody608_22

def loopBody608_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 3,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 5#64)]))

def loopBody608_25 : HolLoopProg 64 :=
.mark loopBody608_24

def loopBody608_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.var 3,
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 5#64)],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody608_27 : HolLoopProg 64 :=
.mark loopBody608_26

def loopBody608_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.var 3,
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 5#64)],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody608_29 : HolLoopProg 64 :=
.mark loopBody608_28

def loopBody608_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.var 3,
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 5#64)],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody608_31 : HolLoopProg 64 :=
.mark loopBody608_30

def loopBody608_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 5)

def loopBody608_33 : HolLoopProg 64 :=
.mark loopBody608_32

def loopBody608_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 6)

def loopBody608_35 : HolLoopProg 64 :=
.mark loopBody608_34

def loopBody608_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 7)

def loopBody608_37 : HolLoopProg 64 :=
.mark loopBody608_36

def loopBody608_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 8)

def loopBody608_39 : HolLoopProg 64 :=
.mark loopBody608_38

def loopBody608_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.var 9)

def loopBody608_41 : HolLoopProg 64 :=
.mark loopBody608_40

def loopBody608_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 22 (Flapjack.HolLoopExp.var 10)

def loopBody608_43 : HolLoopProg 64 :=
.mark loopBody608_42

def loopBody608_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 23 (Flapjack.HolLoopExp.var 11)

def loopBody608_45 : HolLoopProg 64 :=
.mark loopBody608_44

def loopBody608_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 24 (Flapjack.HolLoopExp.var 12)

def loopBody608_47 : HolLoopProg 64 :=
.mark loopBody608_46

def loopBody608_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 17

def loopBody608_49 : HolLoopProg 64 :=
.mark loopBody608_48

def loopBody608_50 : HolLoopProg 64 :=
.call (some
  ([13, 14, 15, 16],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 658) ([17, 18, 19, 20, 21, 22, 23, 24]) (some (17, loopBody608_49, loopBody608_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))

def loopBody608_51 : HolLoopProg 64 :=
.mark loopBody608_50

def loopBody608_52 : HolLoopProg 64 :=
.seq loopBody608_51 loopBody608_1

def loopBody608_53 : HolLoopProg 64 :=
.mark loopBody608_52

def loopBody608_54 : HolLoopProg 64 :=
.seq loopBody608_47 loopBody608_53

def loopBody608_55 : HolLoopProg 64 :=
.mark loopBody608_54

def loopBody608_56 : HolLoopProg 64 :=
.seq loopBody608_45 loopBody608_55

def loopBody608_57 : HolLoopProg 64 :=
.mark loopBody608_56

def loopBody608_58 : HolLoopProg 64 :=
.seq loopBody608_43 loopBody608_57

def loopBody608_59 : HolLoopProg 64 :=
.mark loopBody608_58

def loopBody608_60 : HolLoopProg 64 :=
.seq loopBody608_41 loopBody608_59

def loopBody608_61 : HolLoopProg 64 :=
.mark loopBody608_60

def loopBody608_62 : HolLoopProg 64 :=
.seq loopBody608_39 loopBody608_61

def loopBody608_63 : HolLoopProg 64 :=
.mark loopBody608_62

def loopBody608_64 : HolLoopProg 64 :=
.seq loopBody608_37 loopBody608_63

def loopBody608_65 : HolLoopProg 64 :=
.mark loopBody608_64

def loopBody608_66 : HolLoopProg 64 :=
.seq loopBody608_35 loopBody608_65

def loopBody608_67 : HolLoopProg 64 :=
.mark loopBody608_66

def loopBody608_68 : HolLoopProg 64 :=
.seq loopBody608_33 loopBody608_67

def loopBody608_69 : HolLoopProg 64 :=
.mark loopBody608_68

def loopBody608_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 1,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 5#64)])

def loopBody608_71 : HolLoopProg 64 :=
.mark loopBody608_70

def loopBody608_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 13)

def loopBody608_73 : HolLoopProg 64 :=
.mark loopBody608_72

def loopBody608_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 14)

def loopBody608_75 : HolLoopProg 64 :=
.mark loopBody608_74

def loopBody608_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 15)

def loopBody608_77 : HolLoopProg 64 :=
.mark loopBody608_76

def loopBody608_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.var 16)

def loopBody608_79 : HolLoopProg 64 :=
.mark loopBody608_78

def loopBody608_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 22 (Flapjack.HolLoopExp.var 18)

def loopBody608_81 : HolLoopProg 64 :=
.mark loopBody608_80

def loopBody608_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 17) 22

def loopBody608_83 : HolLoopProg 64 :=
.mark loopBody608_82

def loopBody608_84 : HolLoopProg 64 :=
.seq loopBody608_83 loopBody608_1

def loopBody608_85 : HolLoopProg 64 :=
.mark loopBody608_84

def loopBody608_86 : HolLoopProg 64 :=
.seq loopBody608_81 loopBody608_85

def loopBody608_87 : HolLoopProg 64 :=
.mark loopBody608_86

def loopBody608_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 22 (Flapjack.HolLoopExp.var 19)

def loopBody608_89 : HolLoopProg 64 :=
.mark loopBody608_88

def loopBody608_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 17, Flapjack.HolLoopExp.const 8#64]) 22

def loopBody608_91 : HolLoopProg 64 :=
.mark loopBody608_90

def loopBody608_92 : HolLoopProg 64 :=
.seq loopBody608_91 loopBody608_1

def loopBody608_93 : HolLoopProg 64 :=
.mark loopBody608_92

def loopBody608_94 : HolLoopProg 64 :=
.seq loopBody608_89 loopBody608_93

def loopBody608_95 : HolLoopProg 64 :=
.mark loopBody608_94

def loopBody608_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 22 (Flapjack.HolLoopExp.var 20)

def loopBody608_97 : HolLoopProg 64 :=
.mark loopBody608_96

def loopBody608_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 17, Flapjack.HolLoopExp.const 16#64]) 22

def loopBody608_99 : HolLoopProg 64 :=
.mark loopBody608_98

def loopBody608_100 : HolLoopProg 64 :=
.seq loopBody608_99 loopBody608_1

def loopBody608_101 : HolLoopProg 64 :=
.mark loopBody608_100

def loopBody608_102 : HolLoopProg 64 :=
.seq loopBody608_97 loopBody608_101

def loopBody608_103 : HolLoopProg 64 :=
.mark loopBody608_102

def loopBody608_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 22 (Flapjack.HolLoopExp.var 21)

def loopBody608_105 : HolLoopProg 64 :=
.mark loopBody608_104

def loopBody608_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 17, Flapjack.HolLoopExp.const 24#64]) 22

def loopBody608_107 : HolLoopProg 64 :=
.mark loopBody608_106

def loopBody608_108 : HolLoopProg 64 :=
.seq loopBody608_107 loopBody608_1

def loopBody608_109 : HolLoopProg 64 :=
.mark loopBody608_108

def loopBody608_110 : HolLoopProg 64 :=
.seq loopBody608_105 loopBody608_109

def loopBody608_111 : HolLoopProg 64 :=
.mark loopBody608_110

def loopBody608_112 : HolLoopProg 64 :=
.seq loopBody608_111 loopBody608_1

def loopBody608_113 : HolLoopProg 64 :=
.mark loopBody608_112

def loopBody608_114 : HolLoopProg 64 :=
.seq loopBody608_103 loopBody608_113

def loopBody608_115 : HolLoopProg 64 :=
.mark loopBody608_114

def loopBody608_116 : HolLoopProg 64 :=
.seq loopBody608_95 loopBody608_115

def loopBody608_117 : HolLoopProg 64 :=
.mark loopBody608_116

def loopBody608_118 : HolLoopProg 64 :=
.seq loopBody608_87 loopBody608_117

def loopBody608_119 : HolLoopProg 64 :=
.mark loopBody608_118

def loopBody608_120 : HolLoopProg 64 :=
.seq loopBody608_79 loopBody608_119

def loopBody608_121 : HolLoopProg 64 :=
.mark loopBody608_120

def loopBody608_122 : HolLoopProg 64 :=
.seq loopBody608_1 loopBody608_121

def loopBody608_123 : HolLoopProg 64 :=
.mark loopBody608_122

def loopBody608_124 : HolLoopProg 64 :=
.seq loopBody608_77 loopBody608_123

def loopBody608_125 : HolLoopProg 64 :=
.mark loopBody608_124

def loopBody608_126 : HolLoopProg 64 :=
.seq loopBody608_1 loopBody608_125

def loopBody608_127 : HolLoopProg 64 :=
.mark loopBody608_126

def loopBody608_128 : HolLoopProg 64 :=
.seq loopBody608_75 loopBody608_127

def loopBody608_129 : HolLoopProg 64 :=
.mark loopBody608_128

def loopBody608_130 : HolLoopProg 64 :=
.seq loopBody608_1 loopBody608_129

def loopBody608_131 : HolLoopProg 64 :=
.mark loopBody608_130

def loopBody608_132 : HolLoopProg 64 :=
.seq loopBody608_73 loopBody608_131

def loopBody608_133 : HolLoopProg 64 :=
.mark loopBody608_132

def loopBody608_134 : HolLoopProg 64 :=
.seq loopBody608_1 loopBody608_133

def loopBody608_135 : HolLoopProg 64 :=
.mark loopBody608_134

def loopBody608_136 : HolLoopProg 64 :=
.seq loopBody608_71 loopBody608_135

def loopBody608_137 : HolLoopProg 64 :=
.mark loopBody608_136

def loopBody608_138 : HolLoopProg 64 :=
.seq loopBody608_1 loopBody608_137

def loopBody608_139 : HolLoopProg 64 :=
.mark loopBody608_138

def loopBody608_140 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 1#64])

def loopBody608_141 : HolLoopProg 64 :=
.mark loopBody608_140

def loopBody608_142 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 17)

def loopBody608_143 : HolLoopProg 64 :=
.mark loopBody608_142

def loopBody608_144 : HolLoopProg 64 :=
.seq loopBody608_143 loopBody608_1

def loopBody608_145 : HolLoopProg 64 :=
.mark loopBody608_144

def loopBody608_146 : HolLoopProg 64 :=
.seq loopBody608_145 loopBody608_1

def loopBody608_147 : HolLoopProg 64 :=
.mark loopBody608_146

def loopBody608_148 : HolLoopProg 64 :=
.seq loopBody608_141 loopBody608_147

def loopBody608_149 : HolLoopProg 64 :=
.mark loopBody608_148

def loopBody608_150 : HolLoopProg 64 :=
.seq loopBody608_1 loopBody608_149

def loopBody608_151 : HolLoopProg 64 :=
.mark loopBody608_150

def loopBody608_152 : HolLoopProg 64 :=
.seq loopBody608_139 loopBody608_151

def loopBody608_153 : HolLoopProg 64 :=
.mark loopBody608_152

def loopBody608_154 : HolLoopProg 64 :=
.seq loopBody608_69 loopBody608_153

def loopBody608_155 : HolLoopProg 64 :=
.mark loopBody608_154

def loopBody608_156 : HolLoopProg 64 :=
.seq loopBody608_1 loopBody608_155

def loopBody608_157 : HolLoopProg 64 :=
.mark loopBody608_156

def loopBody608_158 : HolLoopProg 64 :=
.seq loopBody608_1 loopBody608_157

def loopBody608_159 : HolLoopProg 64 :=
.mark loopBody608_158

def loopBody608_160 : HolLoopProg 64 :=
.seq loopBody608_1 loopBody608_159

def loopBody608_161 : HolLoopProg 64 :=
.mark loopBody608_160

def loopBody608_162 : HolLoopProg 64 :=
.seq loopBody608_1 loopBody608_161

def loopBody608_163 : HolLoopProg 64 :=
.mark loopBody608_162

def loopBody608_164 : HolLoopProg 64 :=
.seq loopBody608_1 loopBody608_163

def loopBody608_165 : HolLoopProg 64 :=
.mark loopBody608_164

def loopBody608_166 : HolLoopProg 64 :=
.seq loopBody608_1 loopBody608_165

def loopBody608_167 : HolLoopProg 64 :=
.mark loopBody608_166

def loopBody608_168 : HolLoopProg 64 :=
.seq loopBody608_1 loopBody608_167

def loopBody608_169 : HolLoopProg 64 :=
.mark loopBody608_168

def loopBody608_170 : HolLoopProg 64 :=
.seq loopBody608_1 loopBody608_169

def loopBody608_171 : HolLoopProg 64 :=
.mark loopBody608_170

def loopBody608_172 : HolLoopProg 64 :=
.seq loopBody608_31 loopBody608_171

def loopBody608_173 : HolLoopProg 64 :=
.mark loopBody608_172

def loopBody608_174 : HolLoopProg 64 :=
.seq loopBody608_1 loopBody608_173

def loopBody608_175 : HolLoopProg 64 :=
.mark loopBody608_174

def loopBody608_176 : HolLoopProg 64 :=
.seq loopBody608_29 loopBody608_175

def loopBody608_177 : HolLoopProg 64 :=
.mark loopBody608_176

def loopBody608_178 : HolLoopProg 64 :=
.seq loopBody608_1 loopBody608_177

def loopBody608_179 : HolLoopProg 64 :=
.mark loopBody608_178

def loopBody608_180 : HolLoopProg 64 :=
.seq loopBody608_27 loopBody608_179

def loopBody608_181 : HolLoopProg 64 :=
.mark loopBody608_180

def loopBody608_182 : HolLoopProg 64 :=
.seq loopBody608_1 loopBody608_181

def loopBody608_183 : HolLoopProg 64 :=
.mark loopBody608_182

def loopBody608_184 : HolLoopProg 64 :=
.seq loopBody608_25 loopBody608_183

def loopBody608_185 : HolLoopProg 64 :=
.mark loopBody608_184

def loopBody608_186 : HolLoopProg 64 :=
.seq loopBody608_1 loopBody608_185

def loopBody608_187 : HolLoopProg 64 :=
.mark loopBody608_186

def loopBody608_188 : HolLoopProg 64 :=
.seq loopBody608_23 loopBody608_187

def loopBody608_189 : HolLoopProg 64 :=
.mark loopBody608_188

def loopBody608_190 : HolLoopProg 64 :=
.seq loopBody608_1 loopBody608_189

def loopBody608_191 : HolLoopProg 64 :=
.mark loopBody608_190

def loopBody608_192 : HolLoopProg 64 :=
.seq loopBody608_21 loopBody608_191

def loopBody608_193 : HolLoopProg 64 :=
.mark loopBody608_192

def loopBody608_194 : HolLoopProg 64 :=
.seq loopBody608_1 loopBody608_193

def loopBody608_195 : HolLoopProg 64 :=
.mark loopBody608_194

def loopBody608_196 : HolLoopProg 64 :=
.seq loopBody608_19 loopBody608_195

def loopBody608_197 : HolLoopProg 64 :=
.mark loopBody608_196

def loopBody608_198 : HolLoopProg 64 :=
.seq loopBody608_1 loopBody608_197

def loopBody608_199 : HolLoopProg 64 :=
.mark loopBody608_198

def loopBody608_200 : HolLoopProg 64 :=
.seq loopBody608_17 loopBody608_199

def loopBody608_201 : HolLoopProg 64 :=
.mark loopBody608_200

def loopBody608_202 : HolLoopProg 64 :=
.seq loopBody608_1 loopBody608_201

def loopBody608_203 : HolLoopProg 64 :=
.mark loopBody608_202

def loopBody608_204 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody608_205 : HolLoopProg 64 :=
.mark loopBody608_204

def loopBody608_206 : HolLoopProg 64 :=
.seq loopBody608_203 loopBody608_205

def loopBody608_207 : HolLoopProg 64 :=
.mark loopBody608_206

def loopBody608_208 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody608_209 : HolLoopProg 64 :=
.mark loopBody608_208

def loopBody608_210 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody608_207 loopBody608_209 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody608_211 : HolLoopProg 64 :=
.mark loopBody608_210

def loopBody608_212 : HolLoopProg 64 :=
.seq loopBody608_211 loopBody608_1

def loopBody608_213 : HolLoopProg 64 :=
.mark loopBody608_212

def loopBody608_214 : HolLoopProg 64 :=
.seq loopBody608_15 loopBody608_213

def loopBody608_215 : HolLoopProg 64 :=
.mark loopBody608_214

def loopBody608_216 : HolLoopProg 64 :=
.seq loopBody608_13 loopBody608_215

def loopBody608_217 : HolLoopProg 64 :=
.mark loopBody608_216

def loopBody608_218 : HolLoopProg 64 :=
.seq loopBody608_7 loopBody608_217

def loopBody608_219 : HolLoopProg 64 :=
.mark loopBody608_218

def loopBody608_220 : HolLoopProg 64 :=
.seq loopBody608_5 loopBody608_219

def loopBody608_221 : HolLoopProg 64 :=
.mark loopBody608_220

def loopBody608_222 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody608_221 (Flapjack.Spt.ln)

def loopBody608_223 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody608_224 : HolLoopProg 64 :=
.mark loopBody608_223

def loopBody608_225 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody608_226 : HolLoopProg 64 :=
.mark loopBody608_225

def loopBody608_227 : HolLoopProg 64 :=
.seq loopBody608_226 loopBody608_1

def loopBody608_228 : HolLoopProg 64 :=
.mark loopBody608_227

def loopBody608_229 : HolLoopProg 64 :=
.seq loopBody608_224 loopBody608_228

def loopBody608_230 : HolLoopProg 64 :=
.mark loopBody608_229

def loopBody608_231 : HolLoopProg 64 :=
.seq loopBody608_222 loopBody608_230

def loopBody608_232 : HolLoopProg 64 :=
.seq loopBody608_3 loopBody608_231

def loopBody608_233 : HolLoopProg 64 :=
.seq loopBody608_1 loopBody608_232

def output608 : Nat × List Nat × HolLoopProg 64 :=
  (672, [0, 1, 2, 3], loopBody608_233)
end InitECandidate.Proofs.FrontendStages.Loop
