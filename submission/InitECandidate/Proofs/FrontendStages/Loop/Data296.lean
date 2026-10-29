import InitECandidate.Proofs.FrontendStages.Loop.Translate280
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody296_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody296_1 : HolLoopProg 64 :=
.mark loopBody296_0

def loopBody296_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody296_3 : HolLoopProg 64 :=
.mark loopBody296_2

def loopBody296_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody296_5 : HolLoopProg 64 :=
.mark loopBody296_4

def loopBody296_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody296_7 : HolLoopProg 64 :=
.mark loopBody296_6

def loopBody296_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody296_9 : HolLoopProg 64 :=
.mark loopBody296_8

def loopBody296_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody296_11 : HolLoopProg 64 :=
.mark loopBody296_10

def loopBody296_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody296_13 : HolLoopProg 64 :=
.mark loopBody296_12

def loopBody296_14 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.RegImm.reg 6) loopBody296_11 loopBody296_13 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody296_15 : HolLoopProg 64 :=
.mark loopBody296_14

def loopBody296_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody296_17 : HolLoopProg 64 :=
.mark loopBody296_16

def loopBody296_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody296_19 : HolLoopProg 64 :=
.mark loopBody296_18

def loopBody296_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 24#64)

def loopBody296_21 : HolLoopProg 64 :=
.mark loopBody296_20

def loopBody296_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 6 6 4 5)

def loopBody296_23 : HolLoopProg 64 :=
.mark loopBody296_22

def loopBody296_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 16#64]))

def loopBody296_25 : HolLoopProg 64 :=
.mark loopBody296_24

def loopBody296_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 33#64)

def loopBody296_27 : HolLoopProg 64 :=
.mark loopBody296_26

def loopBody296_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 9 9 7 8)

def loopBody296_29 : HolLoopProg 64 :=
.mark loopBody296_28

def loopBody296_30 : HolLoopProg 64 :=
.seq loopBody296_29 loopBody296_1

def loopBody296_31 : HolLoopProg 64 :=
.mark loopBody296_30

def loopBody296_32 : HolLoopProg 64 :=
.seq loopBody296_27 loopBody296_31

def loopBody296_33 : HolLoopProg 64 :=
.mark loopBody296_32

def loopBody296_34 : HolLoopProg 64 :=
.seq loopBody296_25 loopBody296_33

def loopBody296_35 : HolLoopProg 64 :=
.mark loopBody296_34

def loopBody296_36 : HolLoopProg 64 :=
.seq loopBody296_23 loopBody296_35

def loopBody296_37 : HolLoopProg 64 :=
.mark loopBody296_36

def loopBody296_38 : HolLoopProg 64 :=
.seq loopBody296_21 loopBody296_37

def loopBody296_39 : HolLoopProg 64 :=
.mark loopBody296_38

def loopBody296_40 : HolLoopProg 64 :=
.seq loopBody296_19 loopBody296_39

def loopBody296_41 : HolLoopProg 64 :=
.mark loopBody296_40

def loopBody296_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 9)

def loopBody296_43 : HolLoopProg 64 :=
.mark loopBody296_42

def loopBody296_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 10)

def loopBody296_45 : HolLoopProg 64 :=
.mark loopBody296_44

def loopBody296_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 12

def loopBody296_47 : HolLoopProg 64 :=
.mark loopBody296_46

def loopBody296_48 : HolLoopProg 64 :=
.call (some
  ([11],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 180) ([12]) (some (12, loopBody296_47, loopBody296_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))))

def loopBody296_49 : HolLoopProg 64 :=
.mark loopBody296_48

def loopBody296_50 : HolLoopProg 64 :=
.seq loopBody296_49 loopBody296_1

def loopBody296_51 : HolLoopProg 64 :=
.mark loopBody296_50

def loopBody296_52 : HolLoopProg 64 :=
.seq loopBody296_45 loopBody296_51

def loopBody296_53 : HolLoopProg 64 :=
.mark loopBody296_52

def loopBody296_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.const 21#64, Flapjack.HolLoopExp.var 11, Flapjack.HolLoopExp.var 10])

def loopBody296_55 : HolLoopProg 64 :=
.mark loopBody296_54

def loopBody296_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 12)

def loopBody296_57 : HolLoopProg 64 :=
.mark loopBody296_56

def loopBody296_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 14

def loopBody296_59 : HolLoopProg 64 :=
.mark loopBody296_58

def loopBody296_60 : HolLoopProg 64 :=
.call (some
  ([13],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 180) ([14]) (some (14, loopBody296_59, loopBody296_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit)))))

def loopBody296_61 : HolLoopProg 64 :=
.mark loopBody296_60

def loopBody296_62 : HolLoopProg 64 :=
.seq loopBody296_61 loopBody296_1

def loopBody296_63 : HolLoopProg 64 :=
.mark loopBody296_62

def loopBody296_64 : HolLoopProg 64 :=
.seq loopBody296_57 loopBody296_63

def loopBody296_65 : HolLoopProg 64 :=
.mark loopBody296_64

def loopBody296_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 13, Flapjack.HolLoopExp.var 12])

def loopBody296_67 : HolLoopProg 64 :=
.mark loopBody296_66

def loopBody296_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 14)

def loopBody296_69 : HolLoopProg 64 :=
.mark loopBody296_68

def loopBody296_70 : HolLoopProg 64 :=
.seq loopBody296_69 loopBody296_1

def loopBody296_71 : HolLoopProg 64 :=
.mark loopBody296_70

def loopBody296_72 : HolLoopProg 64 :=
.seq loopBody296_71 loopBody296_1

def loopBody296_73 : HolLoopProg 64 :=
.mark loopBody296_72

def loopBody296_74 : HolLoopProg 64 :=
.seq loopBody296_67 loopBody296_73

def loopBody296_75 : HolLoopProg 64 :=
.mark loopBody296_74

def loopBody296_76 : HolLoopProg 64 :=
.seq loopBody296_1 loopBody296_75

def loopBody296_77 : HolLoopProg 64 :=
.mark loopBody296_76

def loopBody296_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 1#64])

def loopBody296_79 : HolLoopProg 64 :=
.mark loopBody296_78

def loopBody296_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 14)

def loopBody296_81 : HolLoopProg 64 :=
.mark loopBody296_80

def loopBody296_82 : HolLoopProg 64 :=
.seq loopBody296_81 loopBody296_1

def loopBody296_83 : HolLoopProg 64 :=
.mark loopBody296_82

def loopBody296_84 : HolLoopProg 64 :=
.seq loopBody296_83 loopBody296_1

def loopBody296_85 : HolLoopProg 64 :=
.mark loopBody296_84

def loopBody296_86 : HolLoopProg 64 :=
.seq loopBody296_79 loopBody296_85

def loopBody296_87 : HolLoopProg 64 :=
.mark loopBody296_86

def loopBody296_88 : HolLoopProg 64 :=
.seq loopBody296_1 loopBody296_87

def loopBody296_89 : HolLoopProg 64 :=
.mark loopBody296_88

def loopBody296_90 : HolLoopProg 64 :=
.seq loopBody296_77 loopBody296_89

def loopBody296_91 : HolLoopProg 64 :=
.mark loopBody296_90

def loopBody296_92 : HolLoopProg 64 :=
.seq loopBody296_65 loopBody296_91

def loopBody296_93 : HolLoopProg 64 :=
.mark loopBody296_92

def loopBody296_94 : HolLoopProg 64 :=
.seq loopBody296_1 loopBody296_93

def loopBody296_95 : HolLoopProg 64 :=
.mark loopBody296_94

def loopBody296_96 : HolLoopProg 64 :=
.seq loopBody296_1 loopBody296_95

def loopBody296_97 : HolLoopProg 64 :=
.mark loopBody296_96

def loopBody296_98 : HolLoopProg 64 :=
.seq loopBody296_55 loopBody296_97

def loopBody296_99 : HolLoopProg 64 :=
.mark loopBody296_98

def loopBody296_100 : HolLoopProg 64 :=
.seq loopBody296_1 loopBody296_99

def loopBody296_101 : HolLoopProg 64 :=
.mark loopBody296_100

def loopBody296_102 : HolLoopProg 64 :=
.seq loopBody296_53 loopBody296_101

def loopBody296_103 : HolLoopProg 64 :=
.mark loopBody296_102

def loopBody296_104 : HolLoopProg 64 :=
.seq loopBody296_1 loopBody296_103

def loopBody296_105 : HolLoopProg 64 :=
.mark loopBody296_104

def loopBody296_106 : HolLoopProg 64 :=
.seq loopBody296_1 loopBody296_105

def loopBody296_107 : HolLoopProg 64 :=
.mark loopBody296_106

def loopBody296_108 : HolLoopProg 64 :=
.seq loopBody296_43 loopBody296_107

def loopBody296_109 : HolLoopProg 64 :=
.mark loopBody296_108

def loopBody296_110 : HolLoopProg 64 :=
.seq loopBody296_41 loopBody296_109

def loopBody296_111 : HolLoopProg 64 :=
.mark loopBody296_110

def loopBody296_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody296_113 : HolLoopProg 64 :=
.mark loopBody296_112

def loopBody296_114 : HolLoopProg 64 :=
.seq loopBody296_111 loopBody296_113

def loopBody296_115 : HolLoopProg 64 :=
.mark loopBody296_114

def loopBody296_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody296_117 : HolLoopProg 64 :=
.mark loopBody296_116

def loopBody296_118 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody296_115 loopBody296_117 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody296_119 : HolLoopProg 64 :=
.mark loopBody296_118

def loopBody296_120 : HolLoopProg 64 :=
.seq loopBody296_119 loopBody296_1

def loopBody296_121 : HolLoopProg 64 :=
.mark loopBody296_120

def loopBody296_122 : HolLoopProg 64 :=
.seq loopBody296_17 loopBody296_121

def loopBody296_123 : HolLoopProg 64 :=
.mark loopBody296_122

def loopBody296_124 : HolLoopProg 64 :=
.seq loopBody296_15 loopBody296_123

def loopBody296_125 : HolLoopProg 64 :=
.mark loopBody296_124

def loopBody296_126 : HolLoopProg 64 :=
.seq loopBody296_9 loopBody296_125

def loopBody296_127 : HolLoopProg 64 :=
.mark loopBody296_126

def loopBody296_128 : HolLoopProg 64 :=
.seq loopBody296_7 loopBody296_127

def loopBody296_129 : HolLoopProg 64 :=
.mark loopBody296_128

def loopBody296_130 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody296_129 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)

def loopBody296_131 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody296_132 : HolLoopProg 64 :=
.mark loopBody296_131

def loopBody296_133 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody296_134 : HolLoopProg 64 :=
.mark loopBody296_133

def loopBody296_135 : HolLoopProg 64 :=
.seq loopBody296_134 loopBody296_1

def loopBody296_136 : HolLoopProg 64 :=
.mark loopBody296_135

def loopBody296_137 : HolLoopProg 64 :=
.seq loopBody296_132 loopBody296_136

def loopBody296_138 : HolLoopProg 64 :=
.mark loopBody296_137

def loopBody296_139 : HolLoopProg 64 :=
.seq loopBody296_130 loopBody296_138

def loopBody296_140 : HolLoopProg 64 :=
.seq loopBody296_5 loopBody296_139

def loopBody296_141 : HolLoopProg 64 :=
.seq loopBody296_1 loopBody296_140

def loopBody296_142 : HolLoopProg 64 :=
.seq loopBody296_3 loopBody296_141

def loopBody296_143 : HolLoopProg 64 :=
.seq loopBody296_1 loopBody296_142

def output296 : Nat × List Nat × HolLoopProg 64 :=
  (360, [0, 1], loopBody296_143)
end InitECandidate.Proofs.FrontendStages.Loop
