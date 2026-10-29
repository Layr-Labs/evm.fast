import InitECandidate.Proofs.FrontendStages.Loop.Translate522
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody538_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody538_1 : HolLoopProg 64 :=
.mark loopBody538_0

def loopBody538_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 1#64)

def loopBody538_3 : HolLoopProg 64 :=
.mark loopBody538_2

def loopBody538_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody538_5 : HolLoopProg 64 :=
.mark loopBody538_4

def loopBody538_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody538_7 : HolLoopProg 64 :=
.mark loopBody538_6

def loopBody538_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody538_9 : HolLoopProg 64 :=
.mark loopBody538_8

def loopBody538_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody538_11 : HolLoopProg 64 :=
.mark loopBody538_10

def loopBody538_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.RegImm.reg 4) loopBody538_9 loopBody538_11 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody538_13 : HolLoopProg 64 :=
.mark loopBody538_12

def loopBody538_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody538_15 : HolLoopProg 64 :=
.mark loopBody538_14

def loopBody538_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody538_17 : HolLoopProg 64 :=
.mark loopBody538_16

def loopBody538_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 288#64]),
        Flapjack.HolLoopExp.const 32#64]))

def loopBody538_19 : HolLoopProg 64 :=
.mark loopBody538_18

def loopBody538_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody538_21 : HolLoopProg 64 :=
.mark loopBody538_20

def loopBody538_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody538_23 : HolLoopProg 64 :=
.mark loopBody538_22

def loopBody538_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.reg 5) loopBody538_23 loopBody538_7 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))

def loopBody538_25 : HolLoopProg 64 :=
.mark loopBody538_24

def loopBody538_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody538_27 : HolLoopProg 64 :=
.mark loopBody538_26

def loopBody538_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody538_29 : HolLoopProg 64 :=
.mark loopBody538_28

def loopBody538_30 : HolLoopProg 64 :=
.seq loopBody538_29 loopBody538_1

def loopBody538_31 : HolLoopProg 64 :=
.mark loopBody538_30

def loopBody538_32 : HolLoopProg 64 :=
.seq loopBody538_31 loopBody538_1

def loopBody538_33 : HolLoopProg 64 :=
.mark loopBody538_32

def loopBody538_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 104#64]))

def loopBody538_35 : HolLoopProg 64 :=
.mark loopBody538_34

def loopBody538_36 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.RegImm.reg 5) loopBody538_23 loopBody538_7 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))

def loopBody538_37 : HolLoopProg 64 :=
.mark loopBody538_36

def loopBody538_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 0#64]))

def loopBody538_39 : HolLoopProg 64 :=
.mark loopBody538_38

def loopBody538_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 56#64]))

def loopBody538_41 : HolLoopProg 64 :=
.mark loopBody538_40

def loopBody538_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody538_43 : HolLoopProg 64 :=
.mark loopBody538_42

def loopBody538_44 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.RegImm.reg 6) loopBody538_43 loopBody538_21 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody538_45 : HolLoopProg 64 :=
.mark loopBody538_44

def loopBody538_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody538_47 : HolLoopProg 64 :=
.mark loopBody538_46

def loopBody538_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.load
              (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
            Flapjack.HolLoopExp.const 48#64]),
      Flapjack.HolLoopExp.var 3])

def loopBody538_49 : HolLoopProg 64 :=
.mark loopBody538_48

def loopBody538_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 6 6

def loopBody538_51 : HolLoopProg 64 :=
.mark loopBody538_50

def loopBody538_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 6)

def loopBody538_53 : HolLoopProg 64 :=
.mark loopBody538_52

def loopBody538_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody538_55 : HolLoopProg 64 :=
.mark loopBody538_54

def loopBody538_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.tick

def loopBody538_57 : HolLoopProg 64 :=
.mark loopBody538_56

def loopBody538_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.lookup 0#5)

def loopBody538_59 : HolLoopProg 64 :=
.mark loopBody538_58

def loopBody538_60 : HolLoopProg 64 :=
.seq loopBody538_59 loopBody538_1

def loopBody538_61 : HolLoopProg 64 :=
.mark loopBody538_60

def loopBody538_62 : HolLoopProg 64 :=
.seq loopBody538_61 loopBody538_1

def loopBody538_63 : HolLoopProg 64 :=
.mark loopBody538_62

def loopBody538_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody538_65 : HolLoopProg 64 :=
.mark loopBody538_64

def loopBody538_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody538_67 : HolLoopProg 64 :=
.mark loopBody538_66

def loopBody538_68 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))) (some 597) ([7]) (some (7, loopBody538_67, loopBody538_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))

def loopBody538_69 : HolLoopProg 64 :=
.mark loopBody538_68

def loopBody538_70 : HolLoopProg 64 :=
.seq loopBody538_69 loopBody538_1

def loopBody538_71 : HolLoopProg 64 :=
.mark loopBody538_70

def loopBody538_72 : HolLoopProg 64 :=
.seq loopBody538_65 loopBody538_71

def loopBody538_73 : HolLoopProg 64 :=
.mark loopBody538_72

def loopBody538_74 : HolLoopProg 64 :=
.seq loopBody538_1 loopBody538_73

def loopBody538_75 : HolLoopProg 64 :=
.mark loopBody538_74

def loopBody538_76 : HolLoopProg 64 :=
.seq loopBody538_1 loopBody538_75

def loopBody538_77 : HolLoopProg 64 :=
.mark loopBody538_76

def loopBody538_78 : HolLoopProg 64 :=
.seq loopBody538_63 loopBody538_77

def loopBody538_79 : HolLoopProg 64 :=
.mark loopBody538_78

def loopBody538_80 : HolLoopProg 64 :=
.seq loopBody538_57 loopBody538_79

def loopBody538_81 : HolLoopProg 64 :=
.mark loopBody538_80

def loopBody538_82 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 8#64) loopBody538_55 loopBody538_81 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))

def loopBody538_83 : HolLoopProg 64 :=
.mark loopBody538_82

def loopBody538_84 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))) (some 595) ([7]) (some (6, loopBody538_83, loopBody538_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))

def loopBody538_85 : HolLoopProg 64 :=
.mark loopBody538_84

def loopBody538_86 : HolLoopProg 64 :=
.seq loopBody538_85 loopBody538_1

def loopBody538_87 : HolLoopProg 64 :=
.mark loopBody538_86

def loopBody538_88 : HolLoopProg 64 :=
.seq loopBody538_53 loopBody538_87

def loopBody538_89 : HolLoopProg 64 :=
.mark loopBody538_88

def loopBody538_90 : HolLoopProg 64 :=
.seq loopBody538_51 loopBody538_89

def loopBody538_91 : HolLoopProg 64 :=
.mark loopBody538_90

def loopBody538_92 : HolLoopProg 64 :=
.seq loopBody538_49 loopBody538_91

def loopBody538_93 : HolLoopProg 64 :=
.mark loopBody538_92

def loopBody538_94 : HolLoopProg 64 :=
.seq loopBody538_1 loopBody538_93

def loopBody538_95 : HolLoopProg 64 :=
.mark loopBody538_94

def loopBody538_96 : HolLoopProg 64 :=
.seq loopBody538_1 loopBody538_95

def loopBody538_97 : HolLoopProg 64 :=
.mark loopBody538_96

def loopBody538_98 : HolLoopProg 64 :=
.seq loopBody538_1 loopBody538_97

def loopBody538_99 : HolLoopProg 64 :=
.mark loopBody538_98

def loopBody538_100 : HolLoopProg 64 :=
.seq loopBody538_1 loopBody538_99

def loopBody538_101 : HolLoopProg 64 :=
.mark loopBody538_100

def loopBody538_102 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody538_33 loopBody538_101 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))

def loopBody538_103 : HolLoopProg 64 :=
.mark loopBody538_102

def loopBody538_104 : HolLoopProg 64 :=
.seq loopBody538_103 loopBody538_1

def loopBody538_105 : HolLoopProg 64 :=
.mark loopBody538_104

def loopBody538_106 : HolLoopProg 64 :=
.seq loopBody538_47 loopBody538_105

def loopBody538_107 : HolLoopProg 64 :=
.mark loopBody538_106

def loopBody538_108 : HolLoopProg 64 :=
.seq loopBody538_45 loopBody538_107

def loopBody538_109 : HolLoopProg 64 :=
.mark loopBody538_108

def loopBody538_110 : HolLoopProg 64 :=
.seq loopBody538_41 loopBody538_109

def loopBody538_111 : HolLoopProg 64 :=
.mark loopBody538_110

def loopBody538_112 : HolLoopProg 64 :=
.seq loopBody538_15 loopBody538_111

def loopBody538_113 : HolLoopProg 64 :=
.mark loopBody538_112

def loopBody538_114 : HolLoopProg 64 :=
.seq loopBody538_39 loopBody538_113

def loopBody538_115 : HolLoopProg 64 :=
.mark loopBody538_114

def loopBody538_116 : HolLoopProg 64 :=
.seq loopBody538_1 loopBody538_115

def loopBody538_117 : HolLoopProg 64 :=
.mark loopBody538_116

def loopBody538_118 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody538_33 loopBody538_117 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))

def loopBody538_119 : HolLoopProg 64 :=
.mark loopBody538_118

def loopBody538_120 : HolLoopProg 64 :=
.seq loopBody538_119 loopBody538_1

def loopBody538_121 : HolLoopProg 64 :=
.mark loopBody538_120

def loopBody538_122 : HolLoopProg 64 :=
.seq loopBody538_27 loopBody538_121

def loopBody538_123 : HolLoopProg 64 :=
.mark loopBody538_122

def loopBody538_124 : HolLoopProg 64 :=
.seq loopBody538_37 loopBody538_123

def loopBody538_125 : HolLoopProg 64 :=
.mark loopBody538_124

def loopBody538_126 : HolLoopProg 64 :=
.seq loopBody538_21 loopBody538_125

def loopBody538_127 : HolLoopProg 64 :=
.mark loopBody538_126

def loopBody538_128 : HolLoopProg 64 :=
.seq loopBody538_35 loopBody538_127

def loopBody538_129 : HolLoopProg 64 :=
.mark loopBody538_128

def loopBody538_130 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody538_33 loopBody538_129 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))

def loopBody538_131 : HolLoopProg 64 :=
.mark loopBody538_130

def loopBody538_132 : HolLoopProg 64 :=
.seq loopBody538_131 loopBody538_1

def loopBody538_133 : HolLoopProg 64 :=
.mark loopBody538_132

def loopBody538_134 : HolLoopProg 64 :=
.seq loopBody538_27 loopBody538_133

def loopBody538_135 : HolLoopProg 64 :=
.mark loopBody538_134

def loopBody538_136 : HolLoopProg 64 :=
.seq loopBody538_25 loopBody538_135

def loopBody538_137 : HolLoopProg 64 :=
.mark loopBody538_136

def loopBody538_138 : HolLoopProg 64 :=
.seq loopBody538_21 loopBody538_137

def loopBody538_139 : HolLoopProg 64 :=
.mark loopBody538_138

def loopBody538_140 : HolLoopProg 64 :=
.seq loopBody538_19 loopBody538_139

def loopBody538_141 : HolLoopProg 64 :=
.mark loopBody538_140

def loopBody538_142 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody538_143 : HolLoopProg 64 :=
.mark loopBody538_142

def loopBody538_144 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.reg 5) loopBody538_23 loopBody538_7 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))

def loopBody538_145 : HolLoopProg 64 :=
.mark loopBody538_144

def loopBody538_146 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody538_147 : HolLoopProg 64 :=
.mark loopBody538_146

def loopBody538_148 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 600) ([]) (some (4, loopBody538_147, loopBody538_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody538_149 : HolLoopProg 64 :=
.mark loopBody538_148

def loopBody538_150 : HolLoopProg 64 :=
.seq loopBody538_149 loopBody538_1

def loopBody538_151 : HolLoopProg 64 :=
.mark loopBody538_150

def loopBody538_152 : HolLoopProg 64 :=
.seq loopBody538_1 loopBody538_151

def loopBody538_153 : HolLoopProg 64 :=
.mark loopBody538_152

def loopBody538_154 : HolLoopProg 64 :=
.seq loopBody538_1 loopBody538_153

def loopBody538_155 : HolLoopProg 64 :=
.mark loopBody538_154

def loopBody538_156 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 288#64]),
        Flapjack.HolLoopExp.const 16#64]))

def loopBody538_157 : HolLoopProg 64 :=
.mark loopBody538_156

def loopBody538_158 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.RegImm.reg 5) loopBody538_23 loopBody538_7 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))

def loopBody538_159 : HolLoopProg 64 :=
.mark loopBody538_158

def loopBody538_160 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64])

def loopBody538_161 : HolLoopProg 64 :=
.mark loopBody538_160

def loopBody538_162 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 288#64]),
        Flapjack.HolLoopExp.const 0#64]))

def loopBody538_163 : HolLoopProg 64 :=
.mark loopBody538_162

def loopBody538_164 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 4)

def loopBody538_165 : HolLoopProg 64 :=
.mark loopBody538_164

def loopBody538_166 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 3) 5

def loopBody538_167 : HolLoopProg 64 :=
.mark loopBody538_166

def loopBody538_168 : HolLoopProg 64 :=
.seq loopBody538_167 loopBody538_1

def loopBody538_169 : HolLoopProg 64 :=
.mark loopBody538_168

def loopBody538_170 : HolLoopProg 64 :=
.seq loopBody538_165 loopBody538_169

def loopBody538_171 : HolLoopProg 64 :=
.mark loopBody538_170

def loopBody538_172 : HolLoopProg 64 :=
.seq loopBody538_171 loopBody538_1

def loopBody538_173 : HolLoopProg 64 :=
.mark loopBody538_172

def loopBody538_174 : HolLoopProg 64 :=
.seq loopBody538_163 loopBody538_173

def loopBody538_175 : HolLoopProg 64 :=
.mark loopBody538_174

def loopBody538_176 : HolLoopProg 64 :=
.seq loopBody538_1 loopBody538_175

def loopBody538_177 : HolLoopProg 64 :=
.mark loopBody538_176

def loopBody538_178 : HolLoopProg 64 :=
.seq loopBody538_161 loopBody538_177

def loopBody538_179 : HolLoopProg 64 :=
.mark loopBody538_178

def loopBody538_180 : HolLoopProg 64 :=
.seq loopBody538_1 loopBody538_179

def loopBody538_181 : HolLoopProg 64 :=
.mark loopBody538_180

def loopBody538_182 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 288#64])

def loopBody538_183 : HolLoopProg 64 :=
.mark loopBody538_182

def loopBody538_184 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 288#64]),
        Flapjack.HolLoopExp.const 8#64]))

def loopBody538_185 : HolLoopProg 64 :=
.mark loopBody538_184

def loopBody538_186 : HolLoopProg 64 :=
.seq loopBody538_185 loopBody538_173

def loopBody538_187 : HolLoopProg 64 :=
.mark loopBody538_186

def loopBody538_188 : HolLoopProg 64 :=
.seq loopBody538_1 loopBody538_187

def loopBody538_189 : HolLoopProg 64 :=
.mark loopBody538_188

def loopBody538_190 : HolLoopProg 64 :=
.seq loopBody538_183 loopBody538_189

def loopBody538_191 : HolLoopProg 64 :=
.mark loopBody538_190

def loopBody538_192 : HolLoopProg 64 :=
.seq loopBody538_1 loopBody538_191

def loopBody538_193 : HolLoopProg 64 :=
.mark loopBody538_192

def loopBody538_194 : HolLoopProg 64 :=
.seq loopBody538_181 loopBody538_193

def loopBody538_195 : HolLoopProg 64 :=
.mark loopBody538_194

def loopBody538_196 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody538_197 : HolLoopProg 64 :=
.mark loopBody538_196

def loopBody538_198 : HolLoopProg 64 :=
.seq loopBody538_197 loopBody538_1

def loopBody538_199 : HolLoopProg 64 :=
.mark loopBody538_198

def loopBody538_200 : HolLoopProg 64 :=
.seq loopBody538_199 loopBody538_1

def loopBody538_201 : HolLoopProg 64 :=
.mark loopBody538_200

def loopBody538_202 : HolLoopProg 64 :=
.seq loopBody538_195 loopBody538_201

def loopBody538_203 : HolLoopProg 64 :=
.mark loopBody538_202

def loopBody538_204 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody538_205 : HolLoopProg 64 :=
.mark loopBody538_204

def loopBody538_206 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.lookup 0#5)

def loopBody538_207 : HolLoopProg 64 :=
.mark loopBody538_206

def loopBody538_208 : HolLoopProg 64 :=
.seq loopBody538_207 loopBody538_1

def loopBody538_209 : HolLoopProg 64 :=
.mark loopBody538_208

def loopBody538_210 : HolLoopProg 64 :=
.seq loopBody538_209 loopBody538_1

def loopBody538_211 : HolLoopProg 64 :=
.mark loopBody538_210

def loopBody538_212 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody538_213 : HolLoopProg 64 :=
.mark loopBody538_212

def loopBody538_214 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 597) ([6]) (some (6, loopBody538_55, loopBody538_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody538_215 : HolLoopProg 64 :=
.mark loopBody538_214

def loopBody538_216 : HolLoopProg 64 :=
.seq loopBody538_215 loopBody538_1

def loopBody538_217 : HolLoopProg 64 :=
.mark loopBody538_216

def loopBody538_218 : HolLoopProg 64 :=
.seq loopBody538_213 loopBody538_217

def loopBody538_219 : HolLoopProg 64 :=
.mark loopBody538_218

def loopBody538_220 : HolLoopProg 64 :=
.seq loopBody538_1 loopBody538_219

def loopBody538_221 : HolLoopProg 64 :=
.mark loopBody538_220

def loopBody538_222 : HolLoopProg 64 :=
.seq loopBody538_1 loopBody538_221

def loopBody538_223 : HolLoopProg 64 :=
.mark loopBody538_222

def loopBody538_224 : HolLoopProg 64 :=
.seq loopBody538_211 loopBody538_223

def loopBody538_225 : HolLoopProg 64 :=
.mark loopBody538_224

def loopBody538_226 : HolLoopProg 64 :=
.seq loopBody538_57 loopBody538_225

def loopBody538_227 : HolLoopProg 64 :=
.mark loopBody538_226

def loopBody538_228 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 8#64) loopBody538_205 loopBody538_227 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))

def loopBody538_229 : HolLoopProg 64 :=
.mark loopBody538_228

def loopBody538_230 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 601) ([]) (some (5, loopBody538_229, loopBody538_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody538_231 : HolLoopProg 64 :=
.mark loopBody538_230

def loopBody538_232 : HolLoopProg 64 :=
.seq loopBody538_231 loopBody538_1

def loopBody538_233 : HolLoopProg 64 :=
.mark loopBody538_232

def loopBody538_234 : HolLoopProg 64 :=
.seq loopBody538_1 loopBody538_233

def loopBody538_235 : HolLoopProg 64 :=
.mark loopBody538_234

def loopBody538_236 : HolLoopProg 64 :=
.seq loopBody538_1 loopBody538_235

def loopBody538_237 : HolLoopProg 64 :=
.mark loopBody538_236

def loopBody538_238 : HolLoopProg 64 :=
.seq loopBody538_1 loopBody538_237

def loopBody538_239 : HolLoopProg 64 :=
.mark loopBody538_238

def loopBody538_240 : HolLoopProg 64 :=
.seq loopBody538_1 loopBody538_239

def loopBody538_241 : HolLoopProg 64 :=
.mark loopBody538_240

def loopBody538_242 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody538_203 loopBody538_241 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))

def loopBody538_243 : HolLoopProg 64 :=
.mark loopBody538_242

def loopBody538_244 : HolLoopProg 64 :=
.seq loopBody538_243 loopBody538_1

def loopBody538_245 : HolLoopProg 64 :=
.mark loopBody538_244

def loopBody538_246 : HolLoopProg 64 :=
.seq loopBody538_27 loopBody538_245

def loopBody538_247 : HolLoopProg 64 :=
.mark loopBody538_246

def loopBody538_248 : HolLoopProg 64 :=
.seq loopBody538_159 loopBody538_247

def loopBody538_249 : HolLoopProg 64 :=
.mark loopBody538_248

def loopBody538_250 : HolLoopProg 64 :=
.seq loopBody538_21 loopBody538_249

def loopBody538_251 : HolLoopProg 64 :=
.mark loopBody538_250

def loopBody538_252 : HolLoopProg 64 :=
.seq loopBody538_157 loopBody538_251

def loopBody538_253 : HolLoopProg 64 :=
.mark loopBody538_252

def loopBody538_254 : HolLoopProg 64 :=
.seq loopBody538_155 loopBody538_253

def loopBody538_255 : HolLoopProg 64 :=
.mark loopBody538_254

def loopBody538_256 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody538_255 loopBody538_1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))

def loopBody538_257 : HolLoopProg 64 :=
.mark loopBody538_256

def loopBody538_258 : HolLoopProg 64 :=
.seq loopBody538_257 loopBody538_1

def loopBody538_259 : HolLoopProg 64 :=
.mark loopBody538_258

def loopBody538_260 : HolLoopProg 64 :=
.seq loopBody538_27 loopBody538_259

def loopBody538_261 : HolLoopProg 64 :=
.mark loopBody538_260

def loopBody538_262 : HolLoopProg 64 :=
.seq loopBody538_145 loopBody538_261

def loopBody538_263 : HolLoopProg 64 :=
.mark loopBody538_262

def loopBody538_264 : HolLoopProg 64 :=
.seq loopBody538_21 loopBody538_263

def loopBody538_265 : HolLoopProg 64 :=
.mark loopBody538_264

def loopBody538_266 : HolLoopProg 64 :=
.seq loopBody538_143 loopBody538_265

def loopBody538_267 : HolLoopProg 64 :=
.mark loopBody538_266

def loopBody538_268 : HolLoopProg 64 :=
.seq loopBody538_141 loopBody538_267

def loopBody538_269 : HolLoopProg 64 :=
.mark loopBody538_268

def loopBody538_270 : HolLoopProg 64 :=
.seq loopBody538_17 loopBody538_269

def loopBody538_271 : HolLoopProg 64 :=
.mark loopBody538_270

def loopBody538_272 : HolLoopProg 64 :=
.seq loopBody538_1 loopBody538_271

def loopBody538_273 : HolLoopProg 64 :=
.mark loopBody538_272

def loopBody538_274 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody538_275 : HolLoopProg 64 :=
.mark loopBody538_274

def loopBody538_276 : HolLoopProg 64 :=
.seq loopBody538_273 loopBody538_275

def loopBody538_277 : HolLoopProg 64 :=
.mark loopBody538_276

def loopBody538_278 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody538_279 : HolLoopProg 64 :=
.mark loopBody538_278

def loopBody538_280 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody538_277 loopBody538_279 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))

def loopBody538_281 : HolLoopProg 64 :=
.mark loopBody538_280

def loopBody538_282 : HolLoopProg 64 :=
.seq loopBody538_281 loopBody538_1

def loopBody538_283 : HolLoopProg 64 :=
.mark loopBody538_282

def loopBody538_284 : HolLoopProg 64 :=
.seq loopBody538_15 loopBody538_283

def loopBody538_285 : HolLoopProg 64 :=
.mark loopBody538_284

def loopBody538_286 : HolLoopProg 64 :=
.seq loopBody538_13 loopBody538_285

def loopBody538_287 : HolLoopProg 64 :=
.mark loopBody538_286

def loopBody538_288 : HolLoopProg 64 :=
.seq loopBody538_7 loopBody538_287

def loopBody538_289 : HolLoopProg 64 :=
.mark loopBody538_288

def loopBody538_290 : HolLoopProg 64 :=
.seq loopBody538_5 loopBody538_289

def loopBody538_291 : HolLoopProg 64 :=
.mark loopBody538_290

def loopBody538_292 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) loopBody538_291 (Flapjack.Spt.ln)

def loopBody538_293 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody538_294 : HolLoopProg 64 :=
.mark loopBody538_293

def loopBody538_295 : HolLoopProg 64 :=
.seq loopBody538_294 loopBody538_1

def loopBody538_296 : HolLoopProg 64 :=
.mark loopBody538_295

def loopBody538_297 : HolLoopProg 64 :=
.seq loopBody538_17 loopBody538_296

def loopBody538_298 : HolLoopProg 64 :=
.mark loopBody538_297

def loopBody538_299 : HolLoopProg 64 :=
.seq loopBody538_292 loopBody538_298

def loopBody538_300 : HolLoopProg 64 :=
.seq loopBody538_3 loopBody538_299

def loopBody538_301 : HolLoopProg 64 :=
.seq loopBody538_1 loopBody538_300

def output538 : Nat × List Nat × HolLoopProg 64 :=
  (602, [], loopBody538_301)
end InitECandidate.Proofs.FrontendStages.Loop
