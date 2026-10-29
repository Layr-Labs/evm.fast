import InitECandidate.Proofs.FrontendStages.Loop.Translate254
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody270_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody270_1 : HolLoopProg 64 :=
.mark loopBody270_0

def loopBody270_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 2#64)

def loopBody270_3 : HolLoopProg 64 :=
.mark loopBody270_2

def loopBody270_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.var 8])

def loopBody270_5 : HolLoopProg 64 :=
.mark loopBody270_4

def loopBody270_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 0)

def loopBody270_7 : HolLoopProg 64 :=
.mark loopBody270_6

def loopBody270_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody270_9 : HolLoopProg 64 :=
.mark loopBody270_8

def loopBody270_10 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 177) ([10, 11]) (some (10, loopBody270_9, loopBody270_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody270_11 : HolLoopProg 64 :=
.mark loopBody270_10

def loopBody270_12 : HolLoopProg 64 :=
.seq loopBody270_11 loopBody270_1

def loopBody270_13 : HolLoopProg 64 :=
.mark loopBody270_12

def loopBody270_14 : HolLoopProg 64 :=
.seq loopBody270_7 loopBody270_13

def loopBody270_15 : HolLoopProg 64 :=
.mark loopBody270_14

def loopBody270_16 : HolLoopProg 64 :=
.seq loopBody270_5 loopBody270_15

def loopBody270_17 : HolLoopProg 64 :=
.mark loopBody270_16

def loopBody270_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 8, Flapjack.HolLoopExp.var 9])

def loopBody270_19 : HolLoopProg 64 :=
.mark loopBody270_18

def loopBody270_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 10)

def loopBody270_21 : HolLoopProg 64 :=
.mark loopBody270_20

def loopBody270_22 : HolLoopProg 64 :=
.seq loopBody270_21 loopBody270_1

def loopBody270_23 : HolLoopProg 64 :=
.mark loopBody270_22

def loopBody270_24 : HolLoopProg 64 :=
.seq loopBody270_23 loopBody270_1

def loopBody270_25 : HolLoopProg 64 :=
.mark loopBody270_24

def loopBody270_26 : HolLoopProg 64 :=
.seq loopBody270_19 loopBody270_25

def loopBody270_27 : HolLoopProg 64 :=
.mark loopBody270_26

def loopBody270_28 : HolLoopProg 64 :=
.seq loopBody270_1 loopBody270_27

def loopBody270_29 : HolLoopProg 64 :=
.mark loopBody270_28

def loopBody270_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 152#64]))

def loopBody270_31 : HolLoopProg 64 :=
.mark loopBody270_30

def loopBody270_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 4)

def loopBody270_33 : HolLoopProg 64 :=
.mark loopBody270_32

def loopBody270_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 11

def loopBody270_35 : HolLoopProg 64 :=
.mark loopBody270_34

def loopBody270_36 : HolLoopProg 64 :=
.call (some
  ([10],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 89) ([11, 12]) (some (11, loopBody270_35, loopBody270_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody270_37 : HolLoopProg 64 :=
.mark loopBody270_36

def loopBody270_38 : HolLoopProg 64 :=
.seq loopBody270_37 loopBody270_1

def loopBody270_39 : HolLoopProg 64 :=
.mark loopBody270_38

def loopBody270_40 : HolLoopProg 64 :=
.seq loopBody270_33 loopBody270_39

def loopBody270_41 : HolLoopProg 64 :=
.mark loopBody270_40

def loopBody270_42 : HolLoopProg 64 :=
.seq loopBody270_31 loopBody270_41

def loopBody270_43 : HolLoopProg 64 :=
.mark loopBody270_42

def loopBody270_44 : HolLoopProg 64 :=
.seq loopBody270_1 loopBody270_43

def loopBody270_45 : HolLoopProg 64 :=
.mark loopBody270_44

def loopBody270_46 : HolLoopProg 64 :=
.seq loopBody270_1 loopBody270_45

def loopBody270_47 : HolLoopProg 64 :=
.mark loopBody270_46

def loopBody270_48 : HolLoopProg 64 :=
.seq loopBody270_29 loopBody270_47

def loopBody270_49 : HolLoopProg 64 :=
.mark loopBody270_48

def loopBody270_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 152#64]),
      Flapjack.HolLoopExp.const 8#64])

def loopBody270_51 : HolLoopProg 64 :=
.mark loopBody270_50

def loopBody270_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 3)

def loopBody270_53 : HolLoopProg 64 :=
.mark loopBody270_52

def loopBody270_54 : HolLoopProg 64 :=
.seq loopBody270_53 loopBody270_39

def loopBody270_55 : HolLoopProg 64 :=
.mark loopBody270_54

def loopBody270_56 : HolLoopProg 64 :=
.seq loopBody270_51 loopBody270_55

def loopBody270_57 : HolLoopProg 64 :=
.mark loopBody270_56

def loopBody270_58 : HolLoopProg 64 :=
.seq loopBody270_1 loopBody270_57

def loopBody270_59 : HolLoopProg 64 :=
.mark loopBody270_58

def loopBody270_60 : HolLoopProg 64 :=
.seq loopBody270_1 loopBody270_59

def loopBody270_61 : HolLoopProg 64 :=
.mark loopBody270_60

def loopBody270_62 : HolLoopProg 64 :=
.seq loopBody270_49 loopBody270_61

def loopBody270_63 : HolLoopProg 64 :=
.mark loopBody270_62

def loopBody270_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 152#64]),
      Flapjack.HolLoopExp.const 16#64])

def loopBody270_65 : HolLoopProg 64 :=
.mark loopBody270_64

def loopBody270_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 2)

def loopBody270_67 : HolLoopProg 64 :=
.mark loopBody270_66

def loopBody270_68 : HolLoopProg 64 :=
.seq loopBody270_67 loopBody270_39

def loopBody270_69 : HolLoopProg 64 :=
.mark loopBody270_68

def loopBody270_70 : HolLoopProg 64 :=
.seq loopBody270_65 loopBody270_69

def loopBody270_71 : HolLoopProg 64 :=
.mark loopBody270_70

def loopBody270_72 : HolLoopProg 64 :=
.seq loopBody270_1 loopBody270_71

def loopBody270_73 : HolLoopProg 64 :=
.mark loopBody270_72

def loopBody270_74 : HolLoopProg 64 :=
.seq loopBody270_1 loopBody270_73

def loopBody270_75 : HolLoopProg 64 :=
.mark loopBody270_74

def loopBody270_76 : HolLoopProg 64 :=
.seq loopBody270_63 loopBody270_75

def loopBody270_77 : HolLoopProg 64 :=
.mark loopBody270_76

def loopBody270_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 152#64]),
      Flapjack.HolLoopExp.const 24#64])

def loopBody270_79 : HolLoopProg 64 :=
.mark loopBody270_78

def loopBody270_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 1)

def loopBody270_81 : HolLoopProg 64 :=
.mark loopBody270_80

def loopBody270_82 : HolLoopProg 64 :=
.seq loopBody270_81 loopBody270_39

def loopBody270_83 : HolLoopProg 64 :=
.mark loopBody270_82

def loopBody270_84 : HolLoopProg 64 :=
.seq loopBody270_79 loopBody270_83

def loopBody270_85 : HolLoopProg 64 :=
.mark loopBody270_84

def loopBody270_86 : HolLoopProg 64 :=
.seq loopBody270_1 loopBody270_85

def loopBody270_87 : HolLoopProg 64 :=
.mark loopBody270_86

def loopBody270_88 : HolLoopProg 64 :=
.seq loopBody270_1 loopBody270_87

def loopBody270_89 : HolLoopProg 64 :=
.mark loopBody270_88

def loopBody270_90 : HolLoopProg 64 :=
.seq loopBody270_77 loopBody270_89

def loopBody270_91 : HolLoopProg 64 :=
.mark loopBody270_90

def loopBody270_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody270_93 : HolLoopProg 64 :=
.mark loopBody270_92

def loopBody270_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 10)

def loopBody270_95 : HolLoopProg 64 :=
.mark loopBody270_94

def loopBody270_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 32#64)

def loopBody270_97 : HolLoopProg 64 :=
.mark loopBody270_96

def loopBody270_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 1#64)

def loopBody270_99 : HolLoopProg 64 :=
.mark loopBody270_98

def loopBody270_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 0#64)

def loopBody270_101 : HolLoopProg 64 :=
.mark loopBody270_100

def loopBody270_102 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.RegImm.reg 13) loopBody270_99 loopBody270_101 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody270_103 : HolLoopProg 64 :=
.mark loopBody270_102

def loopBody270_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 12)

def loopBody270_105 : HolLoopProg 64 :=
.mark loopBody270_104

def loopBody270_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 152#64]),
      Flapjack.HolLoopExp.var 10])

def loopBody270_107 : HolLoopProg 64 :=
.mark loopBody270_106

def loopBody270_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 11 11

def loopBody270_109 : HolLoopProg 64 :=
.mark loopBody270_108

def loopBody270_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 11)

def loopBody270_111 : HolLoopProg 64 :=
.mark loopBody270_110

def loopBody270_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 0#64)

def loopBody270_113 : HolLoopProg 64 :=
.mark loopBody270_112

def loopBody270_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 1#64)

def loopBody270_115 : HolLoopProg 64 :=
.mark loopBody270_114

def loopBody270_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 0#64)

def loopBody270_117 : HolLoopProg 64 :=
.mark loopBody270_116

def loopBody270_118 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.RegImm.reg 14) loopBody270_115 loopBody270_117 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody270_119 : HolLoopProg 64 :=
.mark loopBody270_118

def loopBody270_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 13)

def loopBody270_121 : HolLoopProg 64 :=
.mark loopBody270_120

def loopBody270_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody270_123 : HolLoopProg 64 :=
.mark loopBody270_122

def loopBody270_124 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 15 (Flapjack.RegImm.imm 0#64) loopBody270_123 loopBody270_1 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody270_125 : HolLoopProg 64 :=
.mark loopBody270_124

def loopBody270_126 : HolLoopProg 64 :=
.seq loopBody270_125 loopBody270_1

def loopBody270_127 : HolLoopProg 64 :=
.mark loopBody270_126

def loopBody270_128 : HolLoopProg 64 :=
.seq loopBody270_121 loopBody270_127

def loopBody270_129 : HolLoopProg 64 :=
.mark loopBody270_128

def loopBody270_130 : HolLoopProg 64 :=
.seq loopBody270_119 loopBody270_129

def loopBody270_131 : HolLoopProg 64 :=
.mark loopBody270_130

def loopBody270_132 : HolLoopProg 64 :=
.seq loopBody270_113 loopBody270_131

def loopBody270_133 : HolLoopProg 64 :=
.mark loopBody270_132

def loopBody270_134 : HolLoopProg 64 :=
.seq loopBody270_111 loopBody270_133

def loopBody270_135 : HolLoopProg 64 :=
.mark loopBody270_134

def loopBody270_136 : HolLoopProg 64 :=
.seq loopBody270_109 loopBody270_135

def loopBody270_137 : HolLoopProg 64 :=
.mark loopBody270_136

def loopBody270_138 : HolLoopProg 64 :=
.seq loopBody270_107 loopBody270_137

def loopBody270_139 : HolLoopProg 64 :=
.mark loopBody270_138

def loopBody270_140 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 10, Flapjack.HolLoopExp.const 1#64])

def loopBody270_141 : HolLoopProg 64 :=
.mark loopBody270_140

def loopBody270_142 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 11)

def loopBody270_143 : HolLoopProg 64 :=
.mark loopBody270_142

def loopBody270_144 : HolLoopProg 64 :=
.seq loopBody270_143 loopBody270_1

def loopBody270_145 : HolLoopProg 64 :=
.mark loopBody270_144

def loopBody270_146 : HolLoopProg 64 :=
.seq loopBody270_145 loopBody270_1

def loopBody270_147 : HolLoopProg 64 :=
.mark loopBody270_146

def loopBody270_148 : HolLoopProg 64 :=
.seq loopBody270_141 loopBody270_147

def loopBody270_149 : HolLoopProg 64 :=
.mark loopBody270_148

def loopBody270_150 : HolLoopProg 64 :=
.seq loopBody270_1 loopBody270_149

def loopBody270_151 : HolLoopProg 64 :=
.mark loopBody270_150

def loopBody270_152 : HolLoopProg 64 :=
.seq loopBody270_139 loopBody270_151

def loopBody270_153 : HolLoopProg 64 :=
.mark loopBody270_152

def loopBody270_154 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody270_155 : HolLoopProg 64 :=
.mark loopBody270_154

def loopBody270_156 : HolLoopProg 64 :=
.seq loopBody270_153 loopBody270_155

def loopBody270_157 : HolLoopProg 64 :=
.mark loopBody270_156

def loopBody270_158 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.RegImm.imm 0#64) loopBody270_157 loopBody270_123 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody270_159 : HolLoopProg 64 :=
.mark loopBody270_158

def loopBody270_160 : HolLoopProg 64 :=
.seq loopBody270_159 loopBody270_1

def loopBody270_161 : HolLoopProg 64 :=
.mark loopBody270_160

def loopBody270_162 : HolLoopProg 64 :=
.seq loopBody270_105 loopBody270_161

def loopBody270_163 : HolLoopProg 64 :=
.mark loopBody270_162

def loopBody270_164 : HolLoopProg 64 :=
.seq loopBody270_103 loopBody270_163

def loopBody270_165 : HolLoopProg 64 :=
.mark loopBody270_164

def loopBody270_166 : HolLoopProg 64 :=
.seq loopBody270_97 loopBody270_165

def loopBody270_167 : HolLoopProg 64 :=
.mark loopBody270_166

def loopBody270_168 : HolLoopProg 64 :=
.seq loopBody270_95 loopBody270_167

def loopBody270_169 : HolLoopProg 64 :=
.mark loopBody270_168

def loopBody270_170 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) loopBody270_169 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody270_171 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.var 8])

def loopBody270_172 : HolLoopProg 64 :=
.mark loopBody270_171

def loopBody270_173 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 152#64]),
      Flapjack.HolLoopExp.var 10])

def loopBody270_174 : HolLoopProg 64 :=
.mark loopBody270_173

def loopBody270_175 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 32#64, Flapjack.HolLoopExp.var 10])

def loopBody270_176 : HolLoopProg 64 :=
.mark loopBody270_175

def loopBody270_177 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 12

def loopBody270_178 : HolLoopProg 64 :=
.mark loopBody270_177

def loopBody270_179 : HolLoopProg 64 :=
.call (some
  ([11],
    Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))) (some 176) ([12, 13, 14]) (some (12, loopBody270_178, loopBody270_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))

def loopBody270_180 : HolLoopProg 64 :=
.mark loopBody270_179

def loopBody270_181 : HolLoopProg 64 :=
.seq loopBody270_180 loopBody270_1

def loopBody270_182 : HolLoopProg 64 :=
.mark loopBody270_181

def loopBody270_183 : HolLoopProg 64 :=
.seq loopBody270_176 loopBody270_182

def loopBody270_184 : HolLoopProg 64 :=
.mark loopBody270_183

def loopBody270_185 : HolLoopProg 64 :=
.seq loopBody270_174 loopBody270_184

def loopBody270_186 : HolLoopProg 64 :=
.mark loopBody270_185

def loopBody270_187 : HolLoopProg 64 :=
.seq loopBody270_172 loopBody270_186

def loopBody270_188 : HolLoopProg 64 :=
.mark loopBody270_187

def loopBody270_189 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 8, Flapjack.HolLoopExp.var 11])

def loopBody270_190 : HolLoopProg 64 :=
.mark loopBody270_189

def loopBody270_191 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 12)

def loopBody270_192 : HolLoopProg 64 :=
.mark loopBody270_191

def loopBody270_193 : HolLoopProg 64 :=
.seq loopBody270_192 loopBody270_1

def loopBody270_194 : HolLoopProg 64 :=
.mark loopBody270_193

def loopBody270_195 : HolLoopProg 64 :=
.seq loopBody270_194 loopBody270_1

def loopBody270_196 : HolLoopProg 64 :=
.mark loopBody270_195

def loopBody270_197 : HolLoopProg 64 :=
.seq loopBody270_190 loopBody270_196

def loopBody270_198 : HolLoopProg 64 :=
.mark loopBody270_197

def loopBody270_199 : HolLoopProg 64 :=
.seq loopBody270_1 loopBody270_198

def loopBody270_200 : HolLoopProg 64 :=
.mark loopBody270_199

def loopBody270_201 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.var 8])

def loopBody270_202 : HolLoopProg 64 :=
.mark loopBody270_201

def loopBody270_203 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 5)

def loopBody270_204 : HolLoopProg 64 :=
.mark loopBody270_203

def loopBody270_205 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.const 32#64)

def loopBody270_206 : HolLoopProg 64 :=
.mark loopBody270_205

def loopBody270_207 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 13

def loopBody270_208 : HolLoopProg 64 :=
.mark loopBody270_207

def loopBody270_209 : HolLoopProg 64 :=
.call (some
  ([12],
    Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))) (some 176) ([13, 14, 15]) (some (13, loopBody270_208, loopBody270_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody270_210 : HolLoopProg 64 :=
.mark loopBody270_209

def loopBody270_211 : HolLoopProg 64 :=
.seq loopBody270_210 loopBody270_1

def loopBody270_212 : HolLoopProg 64 :=
.mark loopBody270_211

def loopBody270_213 : HolLoopProg 64 :=
.seq loopBody270_206 loopBody270_212

def loopBody270_214 : HolLoopProg 64 :=
.mark loopBody270_213

def loopBody270_215 : HolLoopProg 64 :=
.seq loopBody270_204 loopBody270_214

def loopBody270_216 : HolLoopProg 64 :=
.mark loopBody270_215

def loopBody270_217 : HolLoopProg 64 :=
.seq loopBody270_202 loopBody270_216

def loopBody270_218 : HolLoopProg 64 :=
.mark loopBody270_217

def loopBody270_219 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 8, Flapjack.HolLoopExp.var 12])

def loopBody270_220 : HolLoopProg 64 :=
.mark loopBody270_219

def loopBody270_221 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 13)

def loopBody270_222 : HolLoopProg 64 :=
.mark loopBody270_221

def loopBody270_223 : HolLoopProg 64 :=
.seq loopBody270_222 loopBody270_1

def loopBody270_224 : HolLoopProg 64 :=
.mark loopBody270_223

def loopBody270_225 : HolLoopProg 64 :=
.seq loopBody270_224 loopBody270_1

def loopBody270_226 : HolLoopProg 64 :=
.mark loopBody270_225

def loopBody270_227 : HolLoopProg 64 :=
.seq loopBody270_220 loopBody270_226

def loopBody270_228 : HolLoopProg 64 :=
.mark loopBody270_227

def loopBody270_229 : HolLoopProg 64 :=
.seq loopBody270_1 loopBody270_228

def loopBody270_230 : HolLoopProg 64 :=
.mark loopBody270_229

def loopBody270_231 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.var 8])

def loopBody270_232 : HolLoopProg 64 :=
.mark loopBody270_231

def loopBody270_233 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 6)

def loopBody270_234 : HolLoopProg 64 :=
.mark loopBody270_233

def loopBody270_235 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.const 32#64)

def loopBody270_236 : HolLoopProg 64 :=
.mark loopBody270_235

def loopBody270_237 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 14

def loopBody270_238 : HolLoopProg 64 :=
.mark loopBody270_237

def loopBody270_239 : HolLoopProg 64 :=
.call (some
  ([13],
    Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))) (some 176) ([14, 15, 16]) (some (14, loopBody270_238, loopBody270_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody270_240 : HolLoopProg 64 :=
.mark loopBody270_239

def loopBody270_241 : HolLoopProg 64 :=
.seq loopBody270_240 loopBody270_1

def loopBody270_242 : HolLoopProg 64 :=
.mark loopBody270_241

def loopBody270_243 : HolLoopProg 64 :=
.seq loopBody270_236 loopBody270_242

def loopBody270_244 : HolLoopProg 64 :=
.mark loopBody270_243

def loopBody270_245 : HolLoopProg 64 :=
.seq loopBody270_234 loopBody270_244

def loopBody270_246 : HolLoopProg 64 :=
.mark loopBody270_245

def loopBody270_247 : HolLoopProg 64 :=
.seq loopBody270_232 loopBody270_246

def loopBody270_248 : HolLoopProg 64 :=
.mark loopBody270_247

def loopBody270_249 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 8, Flapjack.HolLoopExp.var 13])

def loopBody270_250 : HolLoopProg 64 :=
.mark loopBody270_249

def loopBody270_251 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 14)

def loopBody270_252 : HolLoopProg 64 :=
.mark loopBody270_251

def loopBody270_253 : HolLoopProg 64 :=
.seq loopBody270_252 loopBody270_1

def loopBody270_254 : HolLoopProg 64 :=
.mark loopBody270_253

def loopBody270_255 : HolLoopProg 64 :=
.seq loopBody270_254 loopBody270_1

def loopBody270_256 : HolLoopProg 64 :=
.mark loopBody270_255

def loopBody270_257 : HolLoopProg 64 :=
.seq loopBody270_250 loopBody270_256

def loopBody270_258 : HolLoopProg 64 :=
.mark loopBody270_257

def loopBody270_259 : HolLoopProg 64 :=
.seq loopBody270_1 loopBody270_258

def loopBody270_260 : HolLoopProg 64 :=
.mark loopBody270_259

def loopBody270_261 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 7)

def loopBody270_262 : HolLoopProg 64 :=
.mark loopBody270_261

def loopBody270_263 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.const 248#64)

def loopBody270_264 : HolLoopProg 64 :=
.mark loopBody270_263

def loopBody270_265 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 14 15

def loopBody270_266 : HolLoopProg 64 :=
.mark loopBody270_265

def loopBody270_267 : HolLoopProg 64 :=
.seq loopBody270_266 loopBody270_1

def loopBody270_268 : HolLoopProg 64 :=
.mark loopBody270_267

def loopBody270_269 : HolLoopProg 64 :=
.seq loopBody270_264 loopBody270_268

def loopBody270_270 : HolLoopProg 64 :=
.mark loopBody270_269

def loopBody270_271 : HolLoopProg 64 :=
.seq loopBody270_262 loopBody270_270

def loopBody270_272 : HolLoopProg 64 :=
.mark loopBody270_271

def loopBody270_273 : HolLoopProg 64 :=
.seq loopBody270_260 loopBody270_272

def loopBody270_274 : HolLoopProg 64 :=
.mark loopBody270_273

def loopBody270_275 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.const 1#64])

def loopBody270_276 : HolLoopProg 64 :=
.mark loopBody270_275

def loopBody270_277 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 8, Flapjack.HolLoopExp.const 2#64])

def loopBody270_278 : HolLoopProg 64 :=
.mark loopBody270_277

def loopBody270_279 : HolLoopProg 64 :=
.seq loopBody270_278 loopBody270_268

def loopBody270_280 : HolLoopProg 64 :=
.mark loopBody270_279

def loopBody270_281 : HolLoopProg 64 :=
.seq loopBody270_276 loopBody270_280

def loopBody270_282 : HolLoopProg 64 :=
.mark loopBody270_281

def loopBody270_283 : HolLoopProg 64 :=
.seq loopBody270_274 loopBody270_282

def loopBody270_284 : HolLoopProg 64 :=
.mark loopBody270_283

def loopBody270_285 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 8)

def loopBody270_286 : HolLoopProg 64 :=
.mark loopBody270_285

def loopBody270_287 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [14]

def loopBody270_288 : HolLoopProg 64 :=
.mark loopBody270_287

def loopBody270_289 : HolLoopProg 64 :=
.seq loopBody270_288 loopBody270_1

def loopBody270_290 : HolLoopProg 64 :=
.mark loopBody270_289

def loopBody270_291 : HolLoopProg 64 :=
.seq loopBody270_286 loopBody270_290

def loopBody270_292 : HolLoopProg 64 :=
.mark loopBody270_291

def loopBody270_293 : HolLoopProg 64 :=
.seq loopBody270_284 loopBody270_292

def loopBody270_294 : HolLoopProg 64 :=
.mark loopBody270_293

def loopBody270_295 : HolLoopProg 64 :=
.seq loopBody270_248 loopBody270_294

def loopBody270_296 : HolLoopProg 64 :=
.mark loopBody270_295

def loopBody270_297 : HolLoopProg 64 :=
.seq loopBody270_1 loopBody270_296

def loopBody270_298 : HolLoopProg 64 :=
.mark loopBody270_297

def loopBody270_299 : HolLoopProg 64 :=
.seq loopBody270_1 loopBody270_298

def loopBody270_300 : HolLoopProg 64 :=
.mark loopBody270_299

def loopBody270_301 : HolLoopProg 64 :=
.seq loopBody270_230 loopBody270_300

def loopBody270_302 : HolLoopProg 64 :=
.mark loopBody270_301

def loopBody270_303 : HolLoopProg 64 :=
.seq loopBody270_218 loopBody270_302

def loopBody270_304 : HolLoopProg 64 :=
.mark loopBody270_303

def loopBody270_305 : HolLoopProg 64 :=
.seq loopBody270_1 loopBody270_304

def loopBody270_306 : HolLoopProg 64 :=
.mark loopBody270_305

def loopBody270_307 : HolLoopProg 64 :=
.seq loopBody270_1 loopBody270_306

def loopBody270_308 : HolLoopProg 64 :=
.mark loopBody270_307

def loopBody270_309 : HolLoopProg 64 :=
.seq loopBody270_200 loopBody270_308

def loopBody270_310 : HolLoopProg 64 :=
.mark loopBody270_309

def loopBody270_311 : HolLoopProg 64 :=
.seq loopBody270_188 loopBody270_310

def loopBody270_312 : HolLoopProg 64 :=
.mark loopBody270_311

def loopBody270_313 : HolLoopProg 64 :=
.seq loopBody270_1 loopBody270_312

def loopBody270_314 : HolLoopProg 64 :=
.mark loopBody270_313

def loopBody270_315 : HolLoopProg 64 :=
.seq loopBody270_1 loopBody270_314

def loopBody270_316 : HolLoopProg 64 :=
.mark loopBody270_315

def loopBody270_317 : HolLoopProg 64 :=
.seq loopBody270_170 loopBody270_316

def loopBody270_318 : HolLoopProg 64 :=
.seq loopBody270_93 loopBody270_317

def loopBody270_319 : HolLoopProg 64 :=
.seq loopBody270_1 loopBody270_318

def loopBody270_320 : HolLoopProg 64 :=
.seq loopBody270_91 loopBody270_319

def loopBody270_321 : HolLoopProg 64 :=
.seq loopBody270_17 loopBody270_320

def loopBody270_322 : HolLoopProg 64 :=
.seq loopBody270_1 loopBody270_321

def loopBody270_323 : HolLoopProg 64 :=
.seq loopBody270_1 loopBody270_322

def loopBody270_324 : HolLoopProg 64 :=
.seq loopBody270_3 loopBody270_323

def loopBody270_325 : HolLoopProg 64 :=
.seq loopBody270_1 loopBody270_324

def output270 : Nat × List Nat × HolLoopProg 64 :=
  (334, [0, 1, 2, 3, 4, 5, 6, 7], loopBody270_325)
end InitECandidate.Proofs.FrontendStages.Loop
