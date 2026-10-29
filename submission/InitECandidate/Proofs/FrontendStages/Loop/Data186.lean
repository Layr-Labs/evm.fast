import InitECandidate.Proofs.FrontendStages.Loop.Translate170
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody186_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody186_1 : HolLoopProg 64 :=
.mark loopBody186_0

def loopBody186_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody186_3 : HolLoopProg 64 :=
.mark loopBody186_2

def loopBody186_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody186_5 : HolLoopProg 64 :=
.mark loopBody186_4

def loopBody186_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody186_7 : HolLoopProg 64 :=
.mark loopBody186_6

def loopBody186_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.RegImm.reg 6) loopBody186_5 loopBody186_7 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody186_9 : HolLoopProg 64 :=
.mark loopBody186_8

def loopBody186_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody186_11 : HolLoopProg 64 :=
.mark loopBody186_10

def loopBody186_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody186_13 : HolLoopProg 64 :=
.mark loopBody186_12

def loopBody186_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody186_15 : HolLoopProg 64 :=
.mark loopBody186_14

def loopBody186_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody186_17 : HolLoopProg 64 :=
.mark loopBody186_16

def loopBody186_18 : HolLoopProg 64 :=
.seq loopBody186_15 loopBody186_17

def loopBody186_19 : HolLoopProg 64 :=
.mark loopBody186_18

def loopBody186_20 : HolLoopProg 64 :=
.seq loopBody186_13 loopBody186_19

def loopBody186_21 : HolLoopProg 64 :=
.mark loopBody186_20

def loopBody186_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody186_21 loopBody186_17 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody186_23 : HolLoopProg 64 :=
.mark loopBody186_22

def loopBody186_24 : HolLoopProg 64 :=
.seq loopBody186_23 loopBody186_17

def loopBody186_25 : HolLoopProg 64 :=
.mark loopBody186_24

def loopBody186_26 : HolLoopProg 64 :=
.seq loopBody186_11 loopBody186_25

def loopBody186_27 : HolLoopProg 64 :=
.mark loopBody186_26

def loopBody186_28 : HolLoopProg 64 :=
.seq loopBody186_9 loopBody186_27

def loopBody186_29 : HolLoopProg 64 :=
.mark loopBody186_28

def loopBody186_30 : HolLoopProg 64 :=
.seq loopBody186_3 loopBody186_29

def loopBody186_31 : HolLoopProg 64 :=
.mark loopBody186_30

def loopBody186_32 : HolLoopProg 64 :=
.seq loopBody186_1 loopBody186_31

def loopBody186_33 : HolLoopProg 64 :=
.mark loopBody186_32

def loopBody186_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody186_35 : HolLoopProg 64 :=
.mark loopBody186_34

def loopBody186_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody186_37 : HolLoopProg 64 :=
.mark loopBody186_36

def loopBody186_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody186_39 : HolLoopProg 64 :=
.mark loopBody186_38

def loopBody186_40 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.less) 6 (Flapjack.RegImm.reg 7) loopBody186_39 loopBody186_3 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody186_41 : HolLoopProg 64 :=
.mark loopBody186_40

def loopBody186_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody186_43 : HolLoopProg 64 :=
.mark loopBody186_42

def loopBody186_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 3#64)]))

def loopBody186_45 : HolLoopProg 64 :=
.mark loopBody186_44

def loopBody186_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody186_47 : HolLoopProg 64 :=
.mark loopBody186_46

def loopBody186_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody186_49 : HolLoopProg 64 :=
.mark loopBody186_48

def loopBody186_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody186_51 : HolLoopProg 64 :=
.mark loopBody186_50

def loopBody186_52 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 7 (Flapjack.RegImm.reg 8) loopBody186_49 loopBody186_51 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody186_53 : HolLoopProg 64 :=
.mark loopBody186_52

def loopBody186_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 3)

def loopBody186_55 : HolLoopProg 64 :=
.mark loopBody186_54

def loopBody186_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 5)

def loopBody186_57 : HolLoopProg 64 :=
.mark loopBody186_56

def loopBody186_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 1#64)

def loopBody186_59 : HolLoopProg 64 :=
.mark loopBody186_58

def loopBody186_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody186_61 : HolLoopProg 64 :=
.mark loopBody186_60

def loopBody186_62 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.RegImm.reg 11) loopBody186_59 loopBody186_61 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody186_63 : HolLoopProg 64 :=
.mark loopBody186_62

def loopBody186_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 0#64)

def loopBody186_65 : HolLoopProg 64 :=
.mark loopBody186_64

def loopBody186_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.var 10])

def loopBody186_67 : HolLoopProg 64 :=
.mark loopBody186_66

def loopBody186_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 1#64)

def loopBody186_69 : HolLoopProg 64 :=
.mark loopBody186_68

def loopBody186_70 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.RegImm.reg 14) loopBody186_69 loopBody186_65 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit)))

def loopBody186_71 : HolLoopProg 64 :=
.mark loopBody186_70

def loopBody186_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 13)

def loopBody186_73 : HolLoopProg 64 :=
.mark loopBody186_72

def loopBody186_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 10#64)

def loopBody186_75 : HolLoopProg 64 :=
.mark loopBody186_74

def loopBody186_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody186_77 : HolLoopProg 64 :=
.mark loopBody186_76

def loopBody186_78 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 245) ([7]) (some (7, loopBody186_77, loopBody186_17, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody186_79 : HolLoopProg 64 :=
.mark loopBody186_78

def loopBody186_80 : HolLoopProg 64 :=
.seq loopBody186_79 loopBody186_17

def loopBody186_81 : HolLoopProg 64 :=
.mark loopBody186_80

def loopBody186_82 : HolLoopProg 64 :=
.seq loopBody186_75 loopBody186_81

def loopBody186_83 : HolLoopProg 64 :=
.mark loopBody186_82

def loopBody186_84 : HolLoopProg 64 :=
.seq loopBody186_17 loopBody186_83

def loopBody186_85 : HolLoopProg 64 :=
.mark loopBody186_84

def loopBody186_86 : HolLoopProg 64 :=
.seq loopBody186_17 loopBody186_85

def loopBody186_87 : HolLoopProg 64 :=
.mark loopBody186_86

def loopBody186_88 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 15 (Flapjack.RegImm.imm 0#64) loopBody186_87 loopBody186_17 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody186_89 : HolLoopProg 64 :=
.mark loopBody186_88

def loopBody186_90 : HolLoopProg 64 :=
.seq loopBody186_89 loopBody186_17

def loopBody186_91 : HolLoopProg 64 :=
.mark loopBody186_90

def loopBody186_92 : HolLoopProg 64 :=
.seq loopBody186_73 loopBody186_91

def loopBody186_93 : HolLoopProg 64 :=
.mark loopBody186_92

def loopBody186_94 : HolLoopProg 64 :=
.seq loopBody186_71 loopBody186_93

def loopBody186_95 : HolLoopProg 64 :=
.mark loopBody186_94

def loopBody186_96 : HolLoopProg 64 :=
.seq loopBody186_67 loopBody186_95

def loopBody186_97 : HolLoopProg 64 :=
.mark loopBody186_96

def loopBody186_98 : HolLoopProg 64 :=
.seq loopBody186_65 loopBody186_97

def loopBody186_99 : HolLoopProg 64 :=
.mark loopBody186_98

def loopBody186_100 : HolLoopProg 64 :=
.seq loopBody186_63 loopBody186_99

def loopBody186_101 : HolLoopProg 64 :=
.mark loopBody186_100

def loopBody186_102 : HolLoopProg 64 :=
.seq loopBody186_57 loopBody186_101

def loopBody186_103 : HolLoopProg 64 :=
.mark loopBody186_102

def loopBody186_104 : HolLoopProg 64 :=
.seq loopBody186_55 loopBody186_103

def loopBody186_105 : HolLoopProg 64 :=
.mark loopBody186_104

def loopBody186_106 : HolLoopProg 64 :=
.seq loopBody186_53 loopBody186_105

def loopBody186_107 : HolLoopProg 64 :=
.mark loopBody186_106

def loopBody186_108 : HolLoopProg 64 :=
.seq loopBody186_47 loopBody186_107

def loopBody186_109 : HolLoopProg 64 :=
.mark loopBody186_108

def loopBody186_110 : HolLoopProg 64 :=
.seq loopBody186_11 loopBody186_109

def loopBody186_111 : HolLoopProg 64 :=
.mark loopBody186_110

def loopBody186_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 4)

def loopBody186_113 : HolLoopProg 64 :=
.mark loopBody186_112

def loopBody186_114 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.less) 7 (Flapjack.RegImm.reg 8) loopBody186_49 loopBody186_51 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody186_115 : HolLoopProg 64 :=
.mark loopBody186_114

def loopBody186_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody186_117 : HolLoopProg 64 :=
.mark loopBody186_116

def loopBody186_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.var 0,
            Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 3#64)],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody186_119 : HolLoopProg 64 :=
.mark loopBody186_118

def loopBody186_120 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 7 (Flapjack.RegImm.reg 8) loopBody186_49 loopBody186_51 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody186_121 : HolLoopProg 64 :=
.mark loopBody186_120

def loopBody186_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 11#64)

def loopBody186_123 : HolLoopProg 64 :=
.mark loopBody186_122

def loopBody186_124 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 245) ([7]) (some (7, loopBody186_77, loopBody186_17, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody186_125 : HolLoopProg 64 :=
.mark loopBody186_124

def loopBody186_126 : HolLoopProg 64 :=
.seq loopBody186_125 loopBody186_17

def loopBody186_127 : HolLoopProg 64 :=
.mark loopBody186_126

def loopBody186_128 : HolLoopProg 64 :=
.seq loopBody186_123 loopBody186_127

def loopBody186_129 : HolLoopProg 64 :=
.mark loopBody186_128

def loopBody186_130 : HolLoopProg 64 :=
.seq loopBody186_17 loopBody186_129

def loopBody186_131 : HolLoopProg 64 :=
.mark loopBody186_130

def loopBody186_132 : HolLoopProg 64 :=
.seq loopBody186_17 loopBody186_131

def loopBody186_133 : HolLoopProg 64 :=
.mark loopBody186_132

def loopBody186_134 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody186_133 loopBody186_17 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody186_135 : HolLoopProg 64 :=
.mark loopBody186_134

def loopBody186_136 : HolLoopProg 64 :=
.seq loopBody186_135 loopBody186_17

def loopBody186_137 : HolLoopProg 64 :=
.mark loopBody186_136

def loopBody186_138 : HolLoopProg 64 :=
.seq loopBody186_117 loopBody186_137

def loopBody186_139 : HolLoopProg 64 :=
.mark loopBody186_138

def loopBody186_140 : HolLoopProg 64 :=
.seq loopBody186_121 loopBody186_139

def loopBody186_141 : HolLoopProg 64 :=
.mark loopBody186_140

def loopBody186_142 : HolLoopProg 64 :=
.seq loopBody186_119 loopBody186_141

def loopBody186_143 : HolLoopProg 64 :=
.mark loopBody186_142

def loopBody186_144 : HolLoopProg 64 :=
.seq loopBody186_11 loopBody186_143

def loopBody186_145 : HolLoopProg 64 :=
.mark loopBody186_144

def loopBody186_146 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody186_145 loopBody186_17 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody186_147 : HolLoopProg 64 :=
.mark loopBody186_146

def loopBody186_148 : HolLoopProg 64 :=
.seq loopBody186_147 loopBody186_17

def loopBody186_149 : HolLoopProg 64 :=
.mark loopBody186_148

def loopBody186_150 : HolLoopProg 64 :=
.seq loopBody186_117 loopBody186_149

def loopBody186_151 : HolLoopProg 64 :=
.mark loopBody186_150

def loopBody186_152 : HolLoopProg 64 :=
.seq loopBody186_115 loopBody186_151

def loopBody186_153 : HolLoopProg 64 :=
.mark loopBody186_152

def loopBody186_154 : HolLoopProg 64 :=
.seq loopBody186_113 loopBody186_153

def loopBody186_155 : HolLoopProg 64 :=
.mark loopBody186_154

def loopBody186_156 : HolLoopProg 64 :=
.seq loopBody186_51 loopBody186_155

def loopBody186_157 : HolLoopProg 64 :=
.mark loopBody186_156

def loopBody186_158 : HolLoopProg 64 :=
.seq loopBody186_111 loopBody186_157

def loopBody186_159 : HolLoopProg 64 :=
.mark loopBody186_158

def loopBody186_160 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 1#64])

def loopBody186_161 : HolLoopProg 64 :=
.mark loopBody186_160

def loopBody186_162 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 6)

def loopBody186_163 : HolLoopProg 64 :=
.mark loopBody186_162

def loopBody186_164 : HolLoopProg 64 :=
.seq loopBody186_163 loopBody186_17

def loopBody186_165 : HolLoopProg 64 :=
.mark loopBody186_164

def loopBody186_166 : HolLoopProg 64 :=
.seq loopBody186_165 loopBody186_17

def loopBody186_167 : HolLoopProg 64 :=
.mark loopBody186_166

def loopBody186_168 : HolLoopProg 64 :=
.seq loopBody186_161 loopBody186_167

def loopBody186_169 : HolLoopProg 64 :=
.mark loopBody186_168

def loopBody186_170 : HolLoopProg 64 :=
.seq loopBody186_17 loopBody186_169

def loopBody186_171 : HolLoopProg 64 :=
.mark loopBody186_170

def loopBody186_172 : HolLoopProg 64 :=
.seq loopBody186_159 loopBody186_171

def loopBody186_173 : HolLoopProg 64 :=
.mark loopBody186_172

def loopBody186_174 : HolLoopProg 64 :=
.seq loopBody186_45 loopBody186_173

def loopBody186_175 : HolLoopProg 64 :=
.mark loopBody186_174

def loopBody186_176 : HolLoopProg 64 :=
.seq loopBody186_17 loopBody186_175

def loopBody186_177 : HolLoopProg 64 :=
.mark loopBody186_176

def loopBody186_178 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody186_179 : HolLoopProg 64 :=
.mark loopBody186_178

def loopBody186_180 : HolLoopProg 64 :=
.seq loopBody186_177 loopBody186_179

def loopBody186_181 : HolLoopProg 64 :=
.mark loopBody186_180

def loopBody186_182 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody186_183 : HolLoopProg 64 :=
.mark loopBody186_182

def loopBody186_184 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody186_181 loopBody186_183 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody186_185 : HolLoopProg 64 :=
.mark loopBody186_184

def loopBody186_186 : HolLoopProg 64 :=
.seq loopBody186_185 loopBody186_17

def loopBody186_187 : HolLoopProg 64 :=
.mark loopBody186_186

def loopBody186_188 : HolLoopProg 64 :=
.seq loopBody186_43 loopBody186_187

def loopBody186_189 : HolLoopProg 64 :=
.mark loopBody186_188

def loopBody186_190 : HolLoopProg 64 :=
.seq loopBody186_41 loopBody186_189

def loopBody186_191 : HolLoopProg 64 :=
.mark loopBody186_190

def loopBody186_192 : HolLoopProg 64 :=
.seq loopBody186_37 loopBody186_191

def loopBody186_193 : HolLoopProg 64 :=
.mark loopBody186_192

def loopBody186_194 : HolLoopProg 64 :=
.seq loopBody186_35 loopBody186_193

def loopBody186_195 : HolLoopProg 64 :=
.mark loopBody186_194

def loopBody186_196 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody186_195 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def loopBody186_197 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.load (Flapjack.HolLoopExp.var 0))

def loopBody186_198 : HolLoopProg 64 :=
.mark loopBody186_197

def loopBody186_199 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody186_200 : HolLoopProg 64 :=
.mark loopBody186_199

def loopBody186_201 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.reg 7) loopBody186_39 loopBody186_3 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)

def loopBody186_202 : HolLoopProg 64 :=
.mark loopBody186_201

def loopBody186_203 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 12#64)

def loopBody186_204 : HolLoopProg 64 :=
.mark loopBody186_203

def loopBody186_205 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody186_206 : HolLoopProg 64 :=
.mark loopBody186_205

def loopBody186_207 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.ln)) (some 245) ([6]) (some (6, loopBody186_206, loopBody186_17, (Flapjack.Spt.ln)))

def loopBody186_208 : HolLoopProg 64 :=
.mark loopBody186_207

def loopBody186_209 : HolLoopProg 64 :=
.seq loopBody186_208 loopBody186_17

def loopBody186_210 : HolLoopProg 64 :=
.mark loopBody186_209

def loopBody186_211 : HolLoopProg 64 :=
.seq loopBody186_204 loopBody186_210

def loopBody186_212 : HolLoopProg 64 :=
.mark loopBody186_211

def loopBody186_213 : HolLoopProg 64 :=
.seq loopBody186_17 loopBody186_212

def loopBody186_214 : HolLoopProg 64 :=
.mark loopBody186_213

def loopBody186_215 : HolLoopProg 64 :=
.seq loopBody186_17 loopBody186_214

def loopBody186_216 : HolLoopProg 64 :=
.mark loopBody186_215

def loopBody186_217 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody186_216 loopBody186_17 (Flapjack.Spt.ln)

def loopBody186_218 : HolLoopProg 64 :=
.mark loopBody186_217

def loopBody186_219 : HolLoopProg 64 :=
.seq loopBody186_218 loopBody186_17

def loopBody186_220 : HolLoopProg 64 :=
.mark loopBody186_219

def loopBody186_221 : HolLoopProg 64 :=
.seq loopBody186_43 loopBody186_220

def loopBody186_222 : HolLoopProg 64 :=
.mark loopBody186_221

def loopBody186_223 : HolLoopProg 64 :=
.seq loopBody186_202 loopBody186_222

def loopBody186_224 : HolLoopProg 64 :=
.mark loopBody186_223

def loopBody186_225 : HolLoopProg 64 :=
.seq loopBody186_200 loopBody186_224

def loopBody186_226 : HolLoopProg 64 :=
.mark loopBody186_225

def loopBody186_227 : HolLoopProg 64 :=
.seq loopBody186_198 loopBody186_226

def loopBody186_228 : HolLoopProg 64 :=
.mark loopBody186_227

def loopBody186_229 : HolLoopProg 64 :=
.seq loopBody186_196 loopBody186_228

def loopBody186_230 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody186_231 : HolLoopProg 64 :=
.mark loopBody186_230

def loopBody186_232 : HolLoopProg 64 :=
.seq loopBody186_231 loopBody186_17

def loopBody186_233 : HolLoopProg 64 :=
.mark loopBody186_232

def loopBody186_234 : HolLoopProg 64 :=
.seq loopBody186_7 loopBody186_233

def loopBody186_235 : HolLoopProg 64 :=
.mark loopBody186_234

def loopBody186_236 : HolLoopProg 64 :=
.seq loopBody186_229 loopBody186_235

def loopBody186_237 : HolLoopProg 64 :=
.seq loopBody186_13 loopBody186_236

def loopBody186_238 : HolLoopProg 64 :=
.seq loopBody186_17 loopBody186_237

def loopBody186_239 : HolLoopProg 64 :=
.seq loopBody186_33 loopBody186_238

def output186 : Nat × List Nat × HolLoopProg 64 :=
  (250, [0, 1, 2, 3], loopBody186_239)
end InitECandidate.Proofs.FrontendStages.Loop
