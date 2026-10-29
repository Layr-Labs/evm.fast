import InitECandidate.Proofs.FrontendStages.Loop.Translate233
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody249_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody249_1 : HolLoopProg 64 :=
.mark loopBody249_0

def loopBody249_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 32#64]))

def loopBody249_3 : HolLoopProg 64 :=
.mark loopBody249_2

def loopBody249_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 40#64]))

def loopBody249_5 : HolLoopProg 64 :=
.mark loopBody249_4

def loopBody249_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody249_7 : HolLoopProg 64 :=
.mark loopBody249_6

def loopBody249_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 2)

def loopBody249_9 : HolLoopProg 64 :=
.mark loopBody249_8

def loopBody249_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody249_11 : HolLoopProg 64 :=
.mark loopBody249_10

def loopBody249_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody249_13 : HolLoopProg 64 :=
.mark loopBody249_12

def loopBody249_14 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.RegImm.reg 9) loopBody249_11 loopBody249_13 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody249_15 : HolLoopProg 64 :=
.mark loopBody249_14

def loopBody249_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody249_17 : HolLoopProg 64 :=
.mark loopBody249_16

def loopBody249_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody249_19 : HolLoopProg 64 :=
.mark loopBody249_18

def loopBody249_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 1)

def loopBody249_21 : HolLoopProg 64 :=
.mark loopBody249_20

def loopBody249_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 6)

def loopBody249_23 : HolLoopProg 64 :=
.mark loopBody249_22

def loopBody249_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody249_25 : HolLoopProg 64 :=
.mark loopBody249_24

def loopBody249_26 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 79) ([8, 9, 10]) (some (8, loopBody249_25, loopBody249_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody249_27 : HolLoopProg 64 :=
.mark loopBody249_26

def loopBody249_28 : HolLoopProg 64 :=
.seq loopBody249_27 loopBody249_1

def loopBody249_29 : HolLoopProg 64 :=
.mark loopBody249_28

def loopBody249_30 : HolLoopProg 64 :=
.seq loopBody249_23 loopBody249_29

def loopBody249_31 : HolLoopProg 64 :=
.mark loopBody249_30

def loopBody249_32 : HolLoopProg 64 :=
.seq loopBody249_21 loopBody249_31

def loopBody249_33 : HolLoopProg 64 :=
.mark loopBody249_32

def loopBody249_34 : HolLoopProg 64 :=
.seq loopBody249_19 loopBody249_33

def loopBody249_35 : HolLoopProg 64 :=
.mark loopBody249_34

def loopBody249_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody249_37 : HolLoopProg 64 :=
.mark loopBody249_36

def loopBody249_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody249_39 : HolLoopProg 64 :=
.mark loopBody249_38

def loopBody249_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 1#64)

def loopBody249_41 : HolLoopProg 64 :=
.mark loopBody249_40

def loopBody249_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody249_43 : HolLoopProg 64 :=
.mark loopBody249_42

def loopBody249_44 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.reg 10) loopBody249_41 loopBody249_43 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit)))

def loopBody249_45 : HolLoopProg 64 :=
.mark loopBody249_44

def loopBody249_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 9)

def loopBody249_47 : HolLoopProg 64 :=
.mark loopBody249_46

def loopBody249_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 48#64])

def loopBody249_49 : HolLoopProg 64 :=
.mark loopBody249_48

def loopBody249_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 3)

def loopBody249_51 : HolLoopProg 64 :=
.mark loopBody249_50

def loopBody249_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 9)

def loopBody249_53 : HolLoopProg 64 :=
.mark loopBody249_52

def loopBody249_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 8) 10

def loopBody249_55 : HolLoopProg 64 :=
.mark loopBody249_54

def loopBody249_56 : HolLoopProg 64 :=
.seq loopBody249_55 loopBody249_1

def loopBody249_57 : HolLoopProg 64 :=
.mark loopBody249_56

def loopBody249_58 : HolLoopProg 64 :=
.seq loopBody249_53 loopBody249_57

def loopBody249_59 : HolLoopProg 64 :=
.mark loopBody249_58

def loopBody249_60 : HolLoopProg 64 :=
.seq loopBody249_59 loopBody249_1

def loopBody249_61 : HolLoopProg 64 :=
.mark loopBody249_60

def loopBody249_62 : HolLoopProg 64 :=
.seq loopBody249_51 loopBody249_61

def loopBody249_63 : HolLoopProg 64 :=
.mark loopBody249_62

def loopBody249_64 : HolLoopProg 64 :=
.seq loopBody249_1 loopBody249_63

def loopBody249_65 : HolLoopProg 64 :=
.mark loopBody249_64

def loopBody249_66 : HolLoopProg 64 :=
.seq loopBody249_49 loopBody249_65

def loopBody249_67 : HolLoopProg 64 :=
.mark loopBody249_66

def loopBody249_68 : HolLoopProg 64 :=
.seq loopBody249_1 loopBody249_67

def loopBody249_69 : HolLoopProg 64 :=
.mark loopBody249_68

def loopBody249_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 56#64])

def loopBody249_71 : HolLoopProg 64 :=
.mark loopBody249_70

def loopBody249_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 4)

def loopBody249_73 : HolLoopProg 64 :=
.mark loopBody249_72

def loopBody249_74 : HolLoopProg 64 :=
.seq loopBody249_73 loopBody249_61

def loopBody249_75 : HolLoopProg 64 :=
.mark loopBody249_74

def loopBody249_76 : HolLoopProg 64 :=
.seq loopBody249_1 loopBody249_75

def loopBody249_77 : HolLoopProg 64 :=
.mark loopBody249_76

def loopBody249_78 : HolLoopProg 64 :=
.seq loopBody249_71 loopBody249_77

def loopBody249_79 : HolLoopProg 64 :=
.mark loopBody249_78

def loopBody249_80 : HolLoopProg 64 :=
.seq loopBody249_1 loopBody249_79

def loopBody249_81 : HolLoopProg 64 :=
.mark loopBody249_80

def loopBody249_82 : HolLoopProg 64 :=
.seq loopBody249_69 loopBody249_81

def loopBody249_83 : HolLoopProg 64 :=
.mark loopBody249_82

def loopBody249_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 0)

def loopBody249_85 : HolLoopProg 64 :=
.mark loopBody249_84

def loopBody249_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [8]

def loopBody249_87 : HolLoopProg 64 :=
.mark loopBody249_86

def loopBody249_88 : HolLoopProg 64 :=
.seq loopBody249_87 loopBody249_1

def loopBody249_89 : HolLoopProg 64 :=
.mark loopBody249_88

def loopBody249_90 : HolLoopProg 64 :=
.seq loopBody249_85 loopBody249_89

def loopBody249_91 : HolLoopProg 64 :=
.mark loopBody249_90

def loopBody249_92 : HolLoopProg 64 :=
.seq loopBody249_83 loopBody249_91

def loopBody249_93 : HolLoopProg 64 :=
.mark loopBody249_92

def loopBody249_94 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody249_93 loopBody249_1 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody249_95 : HolLoopProg 64 :=
.mark loopBody249_94

def loopBody249_96 : HolLoopProg 64 :=
.seq loopBody249_95 loopBody249_1

def loopBody249_97 : HolLoopProg 64 :=
.mark loopBody249_96

def loopBody249_98 : HolLoopProg 64 :=
.seq loopBody249_47 loopBody249_97

def loopBody249_99 : HolLoopProg 64 :=
.mark loopBody249_98

def loopBody249_100 : HolLoopProg 64 :=
.seq loopBody249_45 loopBody249_99

def loopBody249_101 : HolLoopProg 64 :=
.mark loopBody249_100

def loopBody249_102 : HolLoopProg 64 :=
.seq loopBody249_39 loopBody249_101

def loopBody249_103 : HolLoopProg 64 :=
.mark loopBody249_102

def loopBody249_104 : HolLoopProg 64 :=
.seq loopBody249_37 loopBody249_103

def loopBody249_105 : HolLoopProg 64 :=
.mark loopBody249_104

def loopBody249_106 : HolLoopProg 64 :=
.seq loopBody249_35 loopBody249_105

def loopBody249_107 : HolLoopProg 64 :=
.mark loopBody249_106

def loopBody249_108 : HolLoopProg 64 :=
.seq loopBody249_1 loopBody249_107

def loopBody249_109 : HolLoopProg 64 :=
.mark loopBody249_108

def loopBody249_110 : HolLoopProg 64 :=
.seq loopBody249_1 loopBody249_109

def loopBody249_111 : HolLoopProg 64 :=
.mark loopBody249_110

def loopBody249_112 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody249_111 loopBody249_1 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody249_113 : HolLoopProg 64 :=
.mark loopBody249_112

def loopBody249_114 : HolLoopProg 64 :=
.seq loopBody249_113 loopBody249_1

def loopBody249_115 : HolLoopProg 64 :=
.mark loopBody249_114

def loopBody249_116 : HolLoopProg 64 :=
.seq loopBody249_17 loopBody249_115

def loopBody249_117 : HolLoopProg 64 :=
.mark loopBody249_116

def loopBody249_118 : HolLoopProg 64 :=
.seq loopBody249_15 loopBody249_117

def loopBody249_119 : HolLoopProg 64 :=
.mark loopBody249_118

def loopBody249_120 : HolLoopProg 64 :=
.seq loopBody249_9 loopBody249_119

def loopBody249_121 : HolLoopProg 64 :=
.mark loopBody249_120

def loopBody249_122 : HolLoopProg 64 :=
.seq loopBody249_7 loopBody249_121

def loopBody249_123 : HolLoopProg 64 :=
.mark loopBody249_122

def loopBody249_124 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 6)

def loopBody249_125 : HolLoopProg 64 :=
.mark loopBody249_124

def loopBody249_126 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 1)

def loopBody249_127 : HolLoopProg 64 :=
.mark loopBody249_126

def loopBody249_128 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 2)

def loopBody249_129 : HolLoopProg 64 :=
.mark loopBody249_128

def loopBody249_130 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 291) ([8, 9, 10, 11]) (some (8, loopBody249_25, loopBody249_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody249_131 : HolLoopProg 64 :=
.mark loopBody249_130

def loopBody249_132 : HolLoopProg 64 :=
.seq loopBody249_131 loopBody249_1

def loopBody249_133 : HolLoopProg 64 :=
.mark loopBody249_132

def loopBody249_134 : HolLoopProg 64 :=
.seq loopBody249_129 loopBody249_133

def loopBody249_135 : HolLoopProg 64 :=
.mark loopBody249_134

def loopBody249_136 : HolLoopProg 64 :=
.seq loopBody249_127 loopBody249_135

def loopBody249_137 : HolLoopProg 64 :=
.mark loopBody249_136

def loopBody249_138 : HolLoopProg 64 :=
.seq loopBody249_125 loopBody249_137

def loopBody249_139 : HolLoopProg 64 :=
.mark loopBody249_138

def loopBody249_140 : HolLoopProg 64 :=
.seq loopBody249_19 loopBody249_139

def loopBody249_141 : HolLoopProg 64 :=
.mark loopBody249_140

def loopBody249_142 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.var 7])

def loopBody249_143 : HolLoopProg 64 :=
.mark loopBody249_142

def loopBody249_144 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.var 7])

def loopBody249_145 : HolLoopProg 64 :=
.mark loopBody249_144

def loopBody249_146 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 48#64]))

def loopBody249_147 : HolLoopProg 64 :=
.mark loopBody249_146

def loopBody249_148 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 56#64]))

def loopBody249_149 : HolLoopProg 64 :=
.mark loopBody249_148

def loopBody249_150 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 7])

def loopBody249_151 : HolLoopProg 64 :=
.mark loopBody249_150

def loopBody249_152 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 7])

def loopBody249_153 : HolLoopProg 64 :=
.mark loopBody249_152

def loopBody249_154 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 3)

def loopBody249_155 : HolLoopProg 64 :=
.mark loopBody249_154

def loopBody249_156 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 4)

def loopBody249_157 : HolLoopProg 64 :=
.mark loopBody249_156

def loopBody249_158 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody249_159 : HolLoopProg 64 :=
.mark loopBody249_158

def loopBody249_160 : HolLoopProg 64 :=
.call (some
  ([8],
    Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))) (some 312) ([9, 10, 11, 12, 13, 14, 15, 16]) (some (9, loopBody249_159, loopBody249_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody249_161 : HolLoopProg 64 :=
.mark loopBody249_160

def loopBody249_162 : HolLoopProg 64 :=
.seq loopBody249_161 loopBody249_1

def loopBody249_163 : HolLoopProg 64 :=
.mark loopBody249_162

def loopBody249_164 : HolLoopProg 64 :=
.seq loopBody249_157 loopBody249_163

def loopBody249_165 : HolLoopProg 64 :=
.mark loopBody249_164

def loopBody249_166 : HolLoopProg 64 :=
.seq loopBody249_155 loopBody249_165

def loopBody249_167 : HolLoopProg 64 :=
.mark loopBody249_166

def loopBody249_168 : HolLoopProg 64 :=
.seq loopBody249_153 loopBody249_167

def loopBody249_169 : HolLoopProg 64 :=
.mark loopBody249_168

def loopBody249_170 : HolLoopProg 64 :=
.seq loopBody249_151 loopBody249_169

def loopBody249_171 : HolLoopProg 64 :=
.mark loopBody249_170

def loopBody249_172 : HolLoopProg 64 :=
.seq loopBody249_149 loopBody249_171

def loopBody249_173 : HolLoopProg 64 :=
.mark loopBody249_172

def loopBody249_174 : HolLoopProg 64 :=
.seq loopBody249_147 loopBody249_173

def loopBody249_175 : HolLoopProg 64 :=
.mark loopBody249_174

def loopBody249_176 : HolLoopProg 64 :=
.seq loopBody249_145 loopBody249_175

def loopBody249_177 : HolLoopProg 64 :=
.mark loopBody249_176

def loopBody249_178 : HolLoopProg 64 :=
.seq loopBody249_143 loopBody249_177

def loopBody249_179 : HolLoopProg 64 :=
.mark loopBody249_178

def loopBody249_180 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 7)

def loopBody249_181 : HolLoopProg 64 :=
.mark loopBody249_180

def loopBody249_182 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 1#64)

def loopBody249_183 : HolLoopProg 64 :=
.mark loopBody249_182

def loopBody249_184 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.RegImm.reg 11) loopBody249_183 loopBody249_39 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody249_185 : HolLoopProg 64 :=
.mark loopBody249_184

def loopBody249_186 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 10)

def loopBody249_187 : HolLoopProg 64 :=
.mark loopBody249_186

def loopBody249_188 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 5)

def loopBody249_189 : HolLoopProg 64 :=
.mark loopBody249_188

def loopBody249_190 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 7)

def loopBody249_191 : HolLoopProg 64 :=
.mark loopBody249_190

def loopBody249_192 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 8)

def loopBody249_193 : HolLoopProg 64 :=
.mark loopBody249_192

def loopBody249_194 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 297) [9, 10, 11] none

def loopBody249_195 : HolLoopProg 64 :=
.mark loopBody249_194

def loopBody249_196 : HolLoopProg 64 :=
.seq loopBody249_195 loopBody249_1

def loopBody249_197 : HolLoopProg 64 :=
.mark loopBody249_196

def loopBody249_198 : HolLoopProg 64 :=
.seq loopBody249_193 loopBody249_197

def loopBody249_199 : HolLoopProg 64 :=
.mark loopBody249_198

def loopBody249_200 : HolLoopProg 64 :=
.seq loopBody249_191 loopBody249_199

def loopBody249_201 : HolLoopProg 64 :=
.mark loopBody249_200

def loopBody249_202 : HolLoopProg 64 :=
.seq loopBody249_189 loopBody249_201

def loopBody249_203 : HolLoopProg 64 :=
.mark loopBody249_202

def loopBody249_204 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.RegImm.imm 0#64) loopBody249_203 loopBody249_1 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  Flapjack.Spt.ln)

def loopBody249_205 : HolLoopProg 64 :=
.mark loopBody249_204

def loopBody249_206 : HolLoopProg 64 :=
.seq loopBody249_205 loopBody249_1

def loopBody249_207 : HolLoopProg 64 :=
.mark loopBody249_206

def loopBody249_208 : HolLoopProg 64 :=
.seq loopBody249_187 loopBody249_207

def loopBody249_209 : HolLoopProg 64 :=
.mark loopBody249_208

def loopBody249_210 : HolLoopProg 64 :=
.seq loopBody249_185 loopBody249_209

def loopBody249_211 : HolLoopProg 64 :=
.mark loopBody249_210

def loopBody249_212 : HolLoopProg 64 :=
.seq loopBody249_181 loopBody249_211

def loopBody249_213 : HolLoopProg 64 :=
.mark loopBody249_212

def loopBody249_214 : HolLoopProg 64 :=
.seq loopBody249_39 loopBody249_213

def loopBody249_215 : HolLoopProg 64 :=
.mark loopBody249_214

def loopBody249_216 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 8)

def loopBody249_217 : HolLoopProg 64 :=
.mark loopBody249_216

def loopBody249_218 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [9]

def loopBody249_219 : HolLoopProg 64 :=
.mark loopBody249_218

def loopBody249_220 : HolLoopProg 64 :=
.seq loopBody249_219 loopBody249_1

def loopBody249_221 : HolLoopProg 64 :=
.mark loopBody249_220

def loopBody249_222 : HolLoopProg 64 :=
.seq loopBody249_217 loopBody249_221

def loopBody249_223 : HolLoopProg 64 :=
.mark loopBody249_222

def loopBody249_224 : HolLoopProg 64 :=
.seq loopBody249_215 loopBody249_223

def loopBody249_225 : HolLoopProg 64 :=
.mark loopBody249_224

def loopBody249_226 : HolLoopProg 64 :=
.seq loopBody249_179 loopBody249_225

def loopBody249_227 : HolLoopProg 64 :=
.mark loopBody249_226

def loopBody249_228 : HolLoopProg 64 :=
.seq loopBody249_1 loopBody249_227

def loopBody249_229 : HolLoopProg 64 :=
.mark loopBody249_228

def loopBody249_230 : HolLoopProg 64 :=
.seq loopBody249_1 loopBody249_229

def loopBody249_231 : HolLoopProg 64 :=
.mark loopBody249_230

def loopBody249_232 : HolLoopProg 64 :=
.seq loopBody249_141 loopBody249_231

def loopBody249_233 : HolLoopProg 64 :=
.mark loopBody249_232

def loopBody249_234 : HolLoopProg 64 :=
.seq loopBody249_1 loopBody249_233

def loopBody249_235 : HolLoopProg 64 :=
.mark loopBody249_234

def loopBody249_236 : HolLoopProg 64 :=
.seq loopBody249_1 loopBody249_235

def loopBody249_237 : HolLoopProg 64 :=
.mark loopBody249_236

def loopBody249_238 : HolLoopProg 64 :=
.seq loopBody249_123 loopBody249_237

def loopBody249_239 : HolLoopProg 64 :=
.mark loopBody249_238

def loopBody249_240 : HolLoopProg 64 :=
.seq loopBody249_5 loopBody249_239

def loopBody249_241 : HolLoopProg 64 :=
.mark loopBody249_240

def loopBody249_242 : HolLoopProg 64 :=
.seq loopBody249_1 loopBody249_241

def loopBody249_243 : HolLoopProg 64 :=
.mark loopBody249_242

def loopBody249_244 : HolLoopProg 64 :=
.seq loopBody249_3 loopBody249_243

def loopBody249_245 : HolLoopProg 64 :=
.mark loopBody249_244

def loopBody249_246 : HolLoopProg 64 :=
.seq loopBody249_1 loopBody249_245

def loopBody249_247 : HolLoopProg 64 :=
.mark loopBody249_246

def output249 : Nat × List Nat × HolLoopProg 64 :=
  (313, [0, 1, 2, 3, 4], loopBody249_247)
end InitECandidate.Proofs.FrontendStages.Loop
