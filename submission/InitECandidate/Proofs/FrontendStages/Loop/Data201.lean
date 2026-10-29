import InitECandidate.Proofs.FrontendStages.Loop.Translate185
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody201_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody201_1 : HolLoopProg 64 :=
.mark loopBody201_0

def loopBody201_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody201_3 : HolLoopProg 64 :=
.mark loopBody201_2

def loopBody201_4 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 69) ([]) (some (6, loopBody201_3, loopBody201_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody201_5 : HolLoopProg 64 :=
.mark loopBody201_4

def loopBody201_6 : HolLoopProg 64 :=
.seq loopBody201_5 loopBody201_1

def loopBody201_7 : HolLoopProg 64 :=
.mark loopBody201_6

def loopBody201_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 5#64),
      Flapjack.HolLoopExp.const 32#64])

def loopBody201_9 : HolLoopProg 64 :=
.mark loopBody201_8

def loopBody201_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody201_11 : HolLoopProg 64 :=
.mark loopBody201_10

def loopBody201_12 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([7]) (some (7, loopBody201_11, loopBody201_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody201_13 : HolLoopProg 64 :=
.mark loopBody201_12

def loopBody201_14 : HolLoopProg 64 :=
.seq loopBody201_13 loopBody201_1

def loopBody201_15 : HolLoopProg 64 :=
.mark loopBody201_14

def loopBody201_16 : HolLoopProg 64 :=
.seq loopBody201_9 loopBody201_15

def loopBody201_17 : HolLoopProg 64 :=
.mark loopBody201_16

def loopBody201_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody201_19 : HolLoopProg 64 :=
.mark loopBody201_18

def loopBody201_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody201_21 : HolLoopProg 64 :=
.mark loopBody201_20

def loopBody201_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 2)

def loopBody201_23 : HolLoopProg 64 :=
.mark loopBody201_22

def loopBody201_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 1#64)

def loopBody201_25 : HolLoopProg 64 :=
.mark loopBody201_24

def loopBody201_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody201_27 : HolLoopProg 64 :=
.mark loopBody201_26

def loopBody201_28 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.less) 9 (Flapjack.RegImm.reg 10) loopBody201_25 loopBody201_27 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody201_29 : HolLoopProg 64 :=
.mark loopBody201_28

def loopBody201_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 9)

def loopBody201_31 : HolLoopProg 64 :=
.mark loopBody201_30

def loopBody201_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 0)

def loopBody201_33 : HolLoopProg 64 :=
.mark loopBody201_32

def loopBody201_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody201_35 : HolLoopProg 64 :=
.mark loopBody201_34

def loopBody201_36 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 9 (Flapjack.RegImm.reg 10) loopBody201_25 loopBody201_27 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody201_37 : HolLoopProg 64 :=
.mark loopBody201_36

def loopBody201_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 3)

def loopBody201_39 : HolLoopProg 64 :=
.mark loopBody201_38

def loopBody201_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 11 11 9 10)

def loopBody201_41 : HolLoopProg 64 :=
.mark loopBody201_40

def loopBody201_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 11])

def loopBody201_43 : HolLoopProg 64 :=
.mark loopBody201_42

def loopBody201_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 6,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 7) (Flapjack.HolLoopExp.const 5#64)])

def loopBody201_45 : HolLoopProg 64 :=
.mark loopBody201_44

def loopBody201_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody201_47 : HolLoopProg 64 :=
.mark loopBody201_46

def loopBody201_48 : HolLoopProg 64 :=
.call (some
  ([8],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 260) ([12, 13]) (some (9, loopBody201_47, loopBody201_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody201_49 : HolLoopProg 64 :=
.mark loopBody201_48

def loopBody201_50 : HolLoopProg 64 :=
.seq loopBody201_49 loopBody201_1

def loopBody201_51 : HolLoopProg 64 :=
.mark loopBody201_50

def loopBody201_52 : HolLoopProg 64 :=
.seq loopBody201_45 loopBody201_51

def loopBody201_53 : HolLoopProg 64 :=
.mark loopBody201_52

def loopBody201_54 : HolLoopProg 64 :=
.seq loopBody201_43 loopBody201_53

def loopBody201_55 : HolLoopProg 64 :=
.mark loopBody201_54

def loopBody201_56 : HolLoopProg 64 :=
.seq loopBody201_41 loopBody201_55

def loopBody201_57 : HolLoopProg 64 :=
.mark loopBody201_56

def loopBody201_58 : HolLoopProg 64 :=
.seq loopBody201_39 loopBody201_57

def loopBody201_59 : HolLoopProg 64 :=
.mark loopBody201_58

def loopBody201_60 : HolLoopProg 64 :=
.seq loopBody201_21 loopBody201_59

def loopBody201_61 : HolLoopProg 64 :=
.mark loopBody201_60

def loopBody201_62 : HolLoopProg 64 :=
.seq loopBody201_1 loopBody201_61

def loopBody201_63 : HolLoopProg 64 :=
.mark loopBody201_62

def loopBody201_64 : HolLoopProg 64 :=
.seq loopBody201_1 loopBody201_63

def loopBody201_65 : HolLoopProg 64 :=
.mark loopBody201_64

def loopBody201_66 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody201_65 loopBody201_1 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody201_67 : HolLoopProg 64 :=
.mark loopBody201_66

def loopBody201_68 : HolLoopProg 64 :=
.seq loopBody201_67 loopBody201_1

def loopBody201_69 : HolLoopProg 64 :=
.mark loopBody201_68

def loopBody201_70 : HolLoopProg 64 :=
.seq loopBody201_31 loopBody201_69

def loopBody201_71 : HolLoopProg 64 :=
.mark loopBody201_70

def loopBody201_72 : HolLoopProg 64 :=
.seq loopBody201_37 loopBody201_71

def loopBody201_73 : HolLoopProg 64 :=
.mark loopBody201_72

def loopBody201_74 : HolLoopProg 64 :=
.seq loopBody201_35 loopBody201_73

def loopBody201_75 : HolLoopProg 64 :=
.mark loopBody201_74

def loopBody201_76 : HolLoopProg 64 :=
.seq loopBody201_33 loopBody201_75

def loopBody201_77 : HolLoopProg 64 :=
.mark loopBody201_76

def loopBody201_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 1#64)

def loopBody201_79 : HolLoopProg 64 :=
.mark loopBody201_78

def loopBody201_80 : HolLoopProg 64 :=
.call (some
  ([8],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 261) ([12, 13]) (some (9, loopBody201_47, loopBody201_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody201_81 : HolLoopProg 64 :=
.mark loopBody201_80

def loopBody201_82 : HolLoopProg 64 :=
.seq loopBody201_81 loopBody201_1

def loopBody201_83 : HolLoopProg 64 :=
.mark loopBody201_82

def loopBody201_84 : HolLoopProg 64 :=
.seq loopBody201_45 loopBody201_83

def loopBody201_85 : HolLoopProg 64 :=
.mark loopBody201_84

def loopBody201_86 : HolLoopProg 64 :=
.seq loopBody201_43 loopBody201_85

def loopBody201_87 : HolLoopProg 64 :=
.mark loopBody201_86

def loopBody201_88 : HolLoopProg 64 :=
.seq loopBody201_41 loopBody201_87

def loopBody201_89 : HolLoopProg 64 :=
.mark loopBody201_88

def loopBody201_90 : HolLoopProg 64 :=
.seq loopBody201_39 loopBody201_89

def loopBody201_91 : HolLoopProg 64 :=
.mark loopBody201_90

def loopBody201_92 : HolLoopProg 64 :=
.seq loopBody201_21 loopBody201_91

def loopBody201_93 : HolLoopProg 64 :=
.mark loopBody201_92

def loopBody201_94 : HolLoopProg 64 :=
.seq loopBody201_1 loopBody201_93

def loopBody201_95 : HolLoopProg 64 :=
.mark loopBody201_94

def loopBody201_96 : HolLoopProg 64 :=
.seq loopBody201_1 loopBody201_95

def loopBody201_97 : HolLoopProg 64 :=
.mark loopBody201_96

def loopBody201_98 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody201_97 loopBody201_1 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody201_99 : HolLoopProg 64 :=
.mark loopBody201_98

def loopBody201_100 : HolLoopProg 64 :=
.seq loopBody201_99 loopBody201_1

def loopBody201_101 : HolLoopProg 64 :=
.mark loopBody201_100

def loopBody201_102 : HolLoopProg 64 :=
.seq loopBody201_31 loopBody201_101

def loopBody201_103 : HolLoopProg 64 :=
.mark loopBody201_102

def loopBody201_104 : HolLoopProg 64 :=
.seq loopBody201_37 loopBody201_103

def loopBody201_105 : HolLoopProg 64 :=
.mark loopBody201_104

def loopBody201_106 : HolLoopProg 64 :=
.seq loopBody201_79 loopBody201_105

def loopBody201_107 : HolLoopProg 64 :=
.mark loopBody201_106

def loopBody201_108 : HolLoopProg 64 :=
.seq loopBody201_33 loopBody201_107

def loopBody201_109 : HolLoopProg 64 :=
.mark loopBody201_108

def loopBody201_110 : HolLoopProg 64 :=
.seq loopBody201_77 loopBody201_109

def loopBody201_111 : HolLoopProg 64 :=
.mark loopBody201_110

def loopBody201_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 2#64)

def loopBody201_113 : HolLoopProg 64 :=
.mark loopBody201_112

def loopBody201_114 : HolLoopProg 64 :=
.call (some
  ([8],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 262) ([12, 13]) (some (9, loopBody201_47, loopBody201_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody201_115 : HolLoopProg 64 :=
.mark loopBody201_114

def loopBody201_116 : HolLoopProg 64 :=
.seq loopBody201_115 loopBody201_1

def loopBody201_117 : HolLoopProg 64 :=
.mark loopBody201_116

def loopBody201_118 : HolLoopProg 64 :=
.seq loopBody201_45 loopBody201_117

def loopBody201_119 : HolLoopProg 64 :=
.mark loopBody201_118

def loopBody201_120 : HolLoopProg 64 :=
.seq loopBody201_43 loopBody201_119

def loopBody201_121 : HolLoopProg 64 :=
.mark loopBody201_120

def loopBody201_122 : HolLoopProg 64 :=
.seq loopBody201_41 loopBody201_121

def loopBody201_123 : HolLoopProg 64 :=
.mark loopBody201_122

def loopBody201_124 : HolLoopProg 64 :=
.seq loopBody201_39 loopBody201_123

def loopBody201_125 : HolLoopProg 64 :=
.mark loopBody201_124

def loopBody201_126 : HolLoopProg 64 :=
.seq loopBody201_21 loopBody201_125

def loopBody201_127 : HolLoopProg 64 :=
.mark loopBody201_126

def loopBody201_128 : HolLoopProg 64 :=
.seq loopBody201_1 loopBody201_127

def loopBody201_129 : HolLoopProg 64 :=
.mark loopBody201_128

def loopBody201_130 : HolLoopProg 64 :=
.seq loopBody201_1 loopBody201_129

def loopBody201_131 : HolLoopProg 64 :=
.mark loopBody201_130

def loopBody201_132 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody201_131 loopBody201_1 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody201_133 : HolLoopProg 64 :=
.mark loopBody201_132

def loopBody201_134 : HolLoopProg 64 :=
.seq loopBody201_133 loopBody201_1

def loopBody201_135 : HolLoopProg 64 :=
.mark loopBody201_134

def loopBody201_136 : HolLoopProg 64 :=
.seq loopBody201_31 loopBody201_135

def loopBody201_137 : HolLoopProg 64 :=
.mark loopBody201_136

def loopBody201_138 : HolLoopProg 64 :=
.seq loopBody201_37 loopBody201_137

def loopBody201_139 : HolLoopProg 64 :=
.mark loopBody201_138

def loopBody201_140 : HolLoopProg 64 :=
.seq loopBody201_113 loopBody201_139

def loopBody201_141 : HolLoopProg 64 :=
.mark loopBody201_140

def loopBody201_142 : HolLoopProg 64 :=
.seq loopBody201_33 loopBody201_141

def loopBody201_143 : HolLoopProg 64 :=
.mark loopBody201_142

def loopBody201_144 : HolLoopProg 64 :=
.seq loopBody201_111 loopBody201_143

def loopBody201_145 : HolLoopProg 64 :=
.mark loopBody201_144

def loopBody201_146 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 3#64)

def loopBody201_147 : HolLoopProg 64 :=
.mark loopBody201_146

def loopBody201_148 : HolLoopProg 64 :=
.call (some
  ([8],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 263) ([12, 13]) (some (9, loopBody201_47, loopBody201_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody201_149 : HolLoopProg 64 :=
.mark loopBody201_148

def loopBody201_150 : HolLoopProg 64 :=
.seq loopBody201_149 loopBody201_1

def loopBody201_151 : HolLoopProg 64 :=
.mark loopBody201_150

def loopBody201_152 : HolLoopProg 64 :=
.seq loopBody201_45 loopBody201_151

def loopBody201_153 : HolLoopProg 64 :=
.mark loopBody201_152

def loopBody201_154 : HolLoopProg 64 :=
.seq loopBody201_43 loopBody201_153

def loopBody201_155 : HolLoopProg 64 :=
.mark loopBody201_154

def loopBody201_156 : HolLoopProg 64 :=
.seq loopBody201_41 loopBody201_155

def loopBody201_157 : HolLoopProg 64 :=
.mark loopBody201_156

def loopBody201_158 : HolLoopProg 64 :=
.seq loopBody201_39 loopBody201_157

def loopBody201_159 : HolLoopProg 64 :=
.mark loopBody201_158

def loopBody201_160 : HolLoopProg 64 :=
.seq loopBody201_21 loopBody201_159

def loopBody201_161 : HolLoopProg 64 :=
.mark loopBody201_160

def loopBody201_162 : HolLoopProg 64 :=
.seq loopBody201_1 loopBody201_161

def loopBody201_163 : HolLoopProg 64 :=
.mark loopBody201_162

def loopBody201_164 : HolLoopProg 64 :=
.seq loopBody201_1 loopBody201_163

def loopBody201_165 : HolLoopProg 64 :=
.mark loopBody201_164

def loopBody201_166 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody201_165 loopBody201_1 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody201_167 : HolLoopProg 64 :=
.mark loopBody201_166

def loopBody201_168 : HolLoopProg 64 :=
.seq loopBody201_167 loopBody201_1

def loopBody201_169 : HolLoopProg 64 :=
.mark loopBody201_168

def loopBody201_170 : HolLoopProg 64 :=
.seq loopBody201_31 loopBody201_169

def loopBody201_171 : HolLoopProg 64 :=
.mark loopBody201_170

def loopBody201_172 : HolLoopProg 64 :=
.seq loopBody201_37 loopBody201_171

def loopBody201_173 : HolLoopProg 64 :=
.mark loopBody201_172

def loopBody201_174 : HolLoopProg 64 :=
.seq loopBody201_147 loopBody201_173

def loopBody201_175 : HolLoopProg 64 :=
.mark loopBody201_174

def loopBody201_176 : HolLoopProg 64 :=
.seq loopBody201_33 loopBody201_175

def loopBody201_177 : HolLoopProg 64 :=
.mark loopBody201_176

def loopBody201_178 : HolLoopProg 64 :=
.seq loopBody201_145 loopBody201_177

def loopBody201_179 : HolLoopProg 64 :=
.mark loopBody201_178

def loopBody201_180 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 4#64)

def loopBody201_181 : HolLoopProg 64 :=
.mark loopBody201_180

def loopBody201_182 : HolLoopProg 64 :=
.call (some
  ([8],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 264) ([12, 13]) (some (9, loopBody201_47, loopBody201_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody201_183 : HolLoopProg 64 :=
.mark loopBody201_182

def loopBody201_184 : HolLoopProg 64 :=
.seq loopBody201_183 loopBody201_1

def loopBody201_185 : HolLoopProg 64 :=
.mark loopBody201_184

def loopBody201_186 : HolLoopProg 64 :=
.seq loopBody201_45 loopBody201_185

def loopBody201_187 : HolLoopProg 64 :=
.mark loopBody201_186

def loopBody201_188 : HolLoopProg 64 :=
.seq loopBody201_43 loopBody201_187

def loopBody201_189 : HolLoopProg 64 :=
.mark loopBody201_188

def loopBody201_190 : HolLoopProg 64 :=
.seq loopBody201_41 loopBody201_189

def loopBody201_191 : HolLoopProg 64 :=
.mark loopBody201_190

def loopBody201_192 : HolLoopProg 64 :=
.seq loopBody201_39 loopBody201_191

def loopBody201_193 : HolLoopProg 64 :=
.mark loopBody201_192

def loopBody201_194 : HolLoopProg 64 :=
.seq loopBody201_21 loopBody201_193

def loopBody201_195 : HolLoopProg 64 :=
.mark loopBody201_194

def loopBody201_196 : HolLoopProg 64 :=
.seq loopBody201_1 loopBody201_195

def loopBody201_197 : HolLoopProg 64 :=
.mark loopBody201_196

def loopBody201_198 : HolLoopProg 64 :=
.seq loopBody201_1 loopBody201_197

def loopBody201_199 : HolLoopProg 64 :=
.mark loopBody201_198

def loopBody201_200 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody201_199 loopBody201_1 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody201_201 : HolLoopProg 64 :=
.mark loopBody201_200

def loopBody201_202 : HolLoopProg 64 :=
.seq loopBody201_201 loopBody201_1

def loopBody201_203 : HolLoopProg 64 :=
.mark loopBody201_202

def loopBody201_204 : HolLoopProg 64 :=
.seq loopBody201_31 loopBody201_203

def loopBody201_205 : HolLoopProg 64 :=
.mark loopBody201_204

def loopBody201_206 : HolLoopProg 64 :=
.seq loopBody201_37 loopBody201_205

def loopBody201_207 : HolLoopProg 64 :=
.mark loopBody201_206

def loopBody201_208 : HolLoopProg 64 :=
.seq loopBody201_181 loopBody201_207

def loopBody201_209 : HolLoopProg 64 :=
.mark loopBody201_208

def loopBody201_210 : HolLoopProg 64 :=
.seq loopBody201_33 loopBody201_209

def loopBody201_211 : HolLoopProg 64 :=
.mark loopBody201_210

def loopBody201_212 : HolLoopProg 64 :=
.seq loopBody201_179 loopBody201_211

def loopBody201_213 : HolLoopProg 64 :=
.mark loopBody201_212

def loopBody201_214 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.const 1#64])

def loopBody201_215 : HolLoopProg 64 :=
.mark loopBody201_214

def loopBody201_216 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 8)

def loopBody201_217 : HolLoopProg 64 :=
.mark loopBody201_216

def loopBody201_218 : HolLoopProg 64 :=
.seq loopBody201_217 loopBody201_1

def loopBody201_219 : HolLoopProg 64 :=
.mark loopBody201_218

def loopBody201_220 : HolLoopProg 64 :=
.seq loopBody201_219 loopBody201_1

def loopBody201_221 : HolLoopProg 64 :=
.mark loopBody201_220

def loopBody201_222 : HolLoopProg 64 :=
.seq loopBody201_215 loopBody201_221

def loopBody201_223 : HolLoopProg 64 :=
.mark loopBody201_222

def loopBody201_224 : HolLoopProg 64 :=
.seq loopBody201_1 loopBody201_223

def loopBody201_225 : HolLoopProg 64 :=
.mark loopBody201_224

def loopBody201_226 : HolLoopProg 64 :=
.seq loopBody201_213 loopBody201_225

def loopBody201_227 : HolLoopProg 64 :=
.mark loopBody201_226

def loopBody201_228 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody201_229 : HolLoopProg 64 :=
.mark loopBody201_228

def loopBody201_230 : HolLoopProg 64 :=
.seq loopBody201_227 loopBody201_229

def loopBody201_231 : HolLoopProg 64 :=
.mark loopBody201_230

def loopBody201_232 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody201_233 : HolLoopProg 64 :=
.mark loopBody201_232

def loopBody201_234 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody201_231 loopBody201_233 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody201_235 : HolLoopProg 64 :=
.mark loopBody201_234

def loopBody201_236 : HolLoopProg 64 :=
.seq loopBody201_235 loopBody201_1

def loopBody201_237 : HolLoopProg 64 :=
.mark loopBody201_236

def loopBody201_238 : HolLoopProg 64 :=
.seq loopBody201_31 loopBody201_237

def loopBody201_239 : HolLoopProg 64 :=
.mark loopBody201_238

def loopBody201_240 : HolLoopProg 64 :=
.seq loopBody201_29 loopBody201_239

def loopBody201_241 : HolLoopProg 64 :=
.mark loopBody201_240

def loopBody201_242 : HolLoopProg 64 :=
.seq loopBody201_23 loopBody201_241

def loopBody201_243 : HolLoopProg 64 :=
.mark loopBody201_242

def loopBody201_244 : HolLoopProg 64 :=
.seq loopBody201_21 loopBody201_243

def loopBody201_245 : HolLoopProg 64 :=
.mark loopBody201_244

def loopBody201_246 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) loopBody201_245 (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody201_247 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 6)

def loopBody201_248 : HolLoopProg 64 :=
.mark loopBody201_247

def loopBody201_249 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 2)

def loopBody201_250 : HolLoopProg 64 :=
.mark loopBody201_249

def loopBody201_251 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 4)

def loopBody201_252 : HolLoopProg 64 :=
.mark loopBody201_251

def loopBody201_253 : HolLoopProg 64 :=
.call (some ([8], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))) (some 238) ([9, 10, 11, 12]) (some (9, loopBody201_47, loopBody201_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody201_254 : HolLoopProg 64 :=
.mark loopBody201_253

def loopBody201_255 : HolLoopProg 64 :=
.seq loopBody201_254 loopBody201_1

def loopBody201_256 : HolLoopProg 64 :=
.mark loopBody201_255

def loopBody201_257 : HolLoopProg 64 :=
.seq loopBody201_252 loopBody201_256

def loopBody201_258 : HolLoopProg 64 :=
.mark loopBody201_257

def loopBody201_259 : HolLoopProg 64 :=
.seq loopBody201_250 loopBody201_258

def loopBody201_260 : HolLoopProg 64 :=
.mark loopBody201_259

def loopBody201_261 : HolLoopProg 64 :=
.seq loopBody201_23 loopBody201_260

def loopBody201_262 : HolLoopProg 64 :=
.mark loopBody201_261

def loopBody201_263 : HolLoopProg 64 :=
.seq loopBody201_248 loopBody201_262

def loopBody201_264 : HolLoopProg 64 :=
.mark loopBody201_263

def loopBody201_265 : HolLoopProg 64 :=
.seq loopBody201_1 loopBody201_264

def loopBody201_266 : HolLoopProg 64 :=
.mark loopBody201_265

def loopBody201_267 : HolLoopProg 64 :=
.seq loopBody201_1 loopBody201_266

def loopBody201_268 : HolLoopProg 64 :=
.mark loopBody201_267

def loopBody201_269 : HolLoopProg 64 :=
.seq loopBody201_246 loopBody201_268

def loopBody201_270 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 5)

def loopBody201_271 : HolLoopProg 64 :=
.mark loopBody201_270

def loopBody201_272 : HolLoopProg 64 :=
.call (some ([8], Flapjack.Spt.ln)) (some 70) ([9]) (some (9, loopBody201_47, loopBody201_1, (Flapjack.Spt.ln)))

def loopBody201_273 : HolLoopProg 64 :=
.mark loopBody201_272

def loopBody201_274 : HolLoopProg 64 :=
.seq loopBody201_273 loopBody201_1

def loopBody201_275 : HolLoopProg 64 :=
.mark loopBody201_274

def loopBody201_276 : HolLoopProg 64 :=
.seq loopBody201_271 loopBody201_275

def loopBody201_277 : HolLoopProg 64 :=
.mark loopBody201_276

def loopBody201_278 : HolLoopProg 64 :=
.seq loopBody201_1 loopBody201_277

def loopBody201_279 : HolLoopProg 64 :=
.mark loopBody201_278

def loopBody201_280 : HolLoopProg 64 :=
.seq loopBody201_1 loopBody201_279

def loopBody201_281 : HolLoopProg 64 :=
.mark loopBody201_280

def loopBody201_282 : HolLoopProg 64 :=
.seq loopBody201_269 loopBody201_281

def loopBody201_283 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody201_284 : HolLoopProg 64 :=
.mark loopBody201_283

def loopBody201_285 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [8]

def loopBody201_286 : HolLoopProg 64 :=
.mark loopBody201_285

def loopBody201_287 : HolLoopProg 64 :=
.seq loopBody201_286 loopBody201_1

def loopBody201_288 : HolLoopProg 64 :=
.mark loopBody201_287

def loopBody201_289 : HolLoopProg 64 :=
.seq loopBody201_284 loopBody201_288

def loopBody201_290 : HolLoopProg 64 :=
.mark loopBody201_289

def loopBody201_291 : HolLoopProg 64 :=
.seq loopBody201_282 loopBody201_290

def loopBody201_292 : HolLoopProg 64 :=
.seq loopBody201_19 loopBody201_291

def loopBody201_293 : HolLoopProg 64 :=
.seq loopBody201_1 loopBody201_292

def loopBody201_294 : HolLoopProg 64 :=
.seq loopBody201_17 loopBody201_293

def loopBody201_295 : HolLoopProg 64 :=
.seq loopBody201_1 loopBody201_294

def loopBody201_296 : HolLoopProg 64 :=
.seq loopBody201_1 loopBody201_295

def loopBody201_297 : HolLoopProg 64 :=
.seq loopBody201_7 loopBody201_296

def loopBody201_298 : HolLoopProg 64 :=
.seq loopBody201_1 loopBody201_297

def loopBody201_299 : HolLoopProg 64 :=
.seq loopBody201_1 loopBody201_298

def output201 : Nat × List Nat × HolLoopProg 64 :=
  (265, [0, 1, 2, 3, 4], loopBody201_299)
end InitECandidate.Proofs.FrontendStages.Loop
