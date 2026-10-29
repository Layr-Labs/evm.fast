import InitECandidate.Proofs.FrontendStages.Loop.Translate285
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody301_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody301_1 : HolLoopProg 64 :=
.mark loopBody301_0

def loopBody301_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody301_3 : HolLoopProg 64 :=
.mark loopBody301_2

def loopBody301_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody301_5 : HolLoopProg 64 :=
.mark loopBody301_4

def loopBody301_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody301_7 : HolLoopProg 64 :=
.mark loopBody301_6

def loopBody301_8 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 364) ([4, 5]) (some (4, loopBody301_7, loopBody301_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody301_9 : HolLoopProg 64 :=
.mark loopBody301_8

def loopBody301_10 : HolLoopProg 64 :=
.seq loopBody301_9 loopBody301_1

def loopBody301_11 : HolLoopProg 64 :=
.mark loopBody301_10

def loopBody301_12 : HolLoopProg 64 :=
.seq loopBody301_5 loopBody301_11

def loopBody301_13 : HolLoopProg 64 :=
.mark loopBody301_12

def loopBody301_14 : HolLoopProg 64 :=
.seq loopBody301_3 loopBody301_13

def loopBody301_15 : HolLoopProg 64 :=
.mark loopBody301_14

def loopBody301_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody301_17 : HolLoopProg 64 :=
.mark loopBody301_16

def loopBody301_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody301_19 : HolLoopProg 64 :=
.mark loopBody301_18

def loopBody301_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody301_21 : HolLoopProg 64 :=
.mark loopBody301_20

def loopBody301_22 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 178) ([5, 6]) (some (5, loopBody301_21, loopBody301_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody301_23 : HolLoopProg 64 :=
.mark loopBody301_22

def loopBody301_24 : HolLoopProg 64 :=
.seq loopBody301_23 loopBody301_1

def loopBody301_25 : HolLoopProg 64 :=
.mark loopBody301_24

def loopBody301_26 : HolLoopProg 64 :=
.seq loopBody301_19 loopBody301_25

def loopBody301_27 : HolLoopProg 64 :=
.mark loopBody301_26

def loopBody301_28 : HolLoopProg 64 :=
.seq loopBody301_17 loopBody301_27

def loopBody301_29 : HolLoopProg 64 :=
.mark loopBody301_28

def loopBody301_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 4])

def loopBody301_31 : HolLoopProg 64 :=
.mark loopBody301_30

def loopBody301_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody301_33 : HolLoopProg 64 :=
.mark loopBody301_32

def loopBody301_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody301_35 : HolLoopProg 64 :=
.mark loopBody301_34

def loopBody301_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 2)

def loopBody301_37 : HolLoopProg 64 :=
.mark loopBody301_36

def loopBody301_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody301_39 : HolLoopProg 64 :=
.mark loopBody301_38

def loopBody301_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody301_41 : HolLoopProg 64 :=
.mark loopBody301_40

def loopBody301_42 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.RegImm.reg 9) loopBody301_39 loopBody301_41 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody301_43 : HolLoopProg 64 :=
.mark loopBody301_42

def loopBody301_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody301_45 : HolLoopProg 64 :=
.mark loopBody301_44

def loopBody301_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 6)

def loopBody301_47 : HolLoopProg 64 :=
.mark loopBody301_46

def loopBody301_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 120#64)

def loopBody301_49 : HolLoopProg 64 :=
.mark loopBody301_48

def loopBody301_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 9 9 7 8)

def loopBody301_51 : HolLoopProg 64 :=
.mark loopBody301_50

def loopBody301_52 : HolLoopProg 64 :=
.seq loopBody301_51 loopBody301_1

def loopBody301_53 : HolLoopProg 64 :=
.mark loopBody301_52

def loopBody301_54 : HolLoopProg 64 :=
.seq loopBody301_49 loopBody301_53

def loopBody301_55 : HolLoopProg 64 :=
.mark loopBody301_54

def loopBody301_56 : HolLoopProg 64 :=
.seq loopBody301_47 loopBody301_55

def loopBody301_57 : HolLoopProg 64 :=
.mark loopBody301_56

def loopBody301_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 9])

def loopBody301_59 : HolLoopProg 64 :=
.mark loopBody301_58

def loopBody301_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 10)

def loopBody301_61 : HolLoopProg 64 :=
.mark loopBody301_60

def loopBody301_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 12

def loopBody301_63 : HolLoopProg 64 :=
.mark loopBody301_62

def loopBody301_64 : HolLoopProg 64 :=
.call (some
  ([11],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 363) ([12]) (some (12, loopBody301_63, loopBody301_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))))

def loopBody301_65 : HolLoopProg 64 :=
.mark loopBody301_64

def loopBody301_66 : HolLoopProg 64 :=
.seq loopBody301_65 loopBody301_1

def loopBody301_67 : HolLoopProg 64 :=
.mark loopBody301_66

def loopBody301_68 : HolLoopProg 64 :=
.seq loopBody301_61 loopBody301_67

def loopBody301_69 : HolLoopProg 64 :=
.mark loopBody301_68

def loopBody301_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 5)

def loopBody301_71 : HolLoopProg 64 :=
.mark loopBody301_70

def loopBody301_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 11)

def loopBody301_73 : HolLoopProg 64 :=
.mark loopBody301_72

def loopBody301_74 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 178) ([12, 13]) (some (12, loopBody301_63, loopBody301_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody301_75 : HolLoopProg 64 :=
.mark loopBody301_74

def loopBody301_76 : HolLoopProg 64 :=
.seq loopBody301_75 loopBody301_1

def loopBody301_77 : HolLoopProg 64 :=
.mark loopBody301_76

def loopBody301_78 : HolLoopProg 64 :=
.seq loopBody301_73 loopBody301_77

def loopBody301_79 : HolLoopProg 64 :=
.mark loopBody301_78

def loopBody301_80 : HolLoopProg 64 :=
.seq loopBody301_71 loopBody301_79

def loopBody301_81 : HolLoopProg 64 :=
.mark loopBody301_80

def loopBody301_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.var 4])

def loopBody301_83 : HolLoopProg 64 :=
.mark loopBody301_82

def loopBody301_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 12)

def loopBody301_85 : HolLoopProg 64 :=
.mark loopBody301_84

def loopBody301_86 : HolLoopProg 64 :=
.seq loopBody301_85 loopBody301_1

def loopBody301_87 : HolLoopProg 64 :=
.mark loopBody301_86

def loopBody301_88 : HolLoopProg 64 :=
.seq loopBody301_87 loopBody301_1

def loopBody301_89 : HolLoopProg 64 :=
.mark loopBody301_88

def loopBody301_90 : HolLoopProg 64 :=
.seq loopBody301_83 loopBody301_89

def loopBody301_91 : HolLoopProg 64 :=
.mark loopBody301_90

def loopBody301_92 : HolLoopProg 64 :=
.seq loopBody301_1 loopBody301_91

def loopBody301_93 : HolLoopProg 64 :=
.mark loopBody301_92

def loopBody301_94 : HolLoopProg 64 :=
.seq loopBody301_81 loopBody301_93

def loopBody301_95 : HolLoopProg 64 :=
.mark loopBody301_94

def loopBody301_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 10, Flapjack.HolLoopExp.const 0#64]))

def loopBody301_97 : HolLoopProg 64 :=
.mark loopBody301_96

def loopBody301_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 10, Flapjack.HolLoopExp.const 0#64],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody301_99 : HolLoopProg 64 :=
.mark loopBody301_98

def loopBody301_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 10, Flapjack.HolLoopExp.const 0#64],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody301_101 : HolLoopProg 64 :=
.mark loopBody301_100

def loopBody301_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 10, Flapjack.HolLoopExp.const 0#64],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody301_103 : HolLoopProg 64 :=
.mark loopBody301_102

def loopBody301_104 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 357) ([12, 13, 14, 15, 16]) (some (12, loopBody301_63, loopBody301_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody301_105 : HolLoopProg 64 :=
.mark loopBody301_104

def loopBody301_106 : HolLoopProg 64 :=
.seq loopBody301_105 loopBody301_1

def loopBody301_107 : HolLoopProg 64 :=
.mark loopBody301_106

def loopBody301_108 : HolLoopProg 64 :=
.seq loopBody301_103 loopBody301_107

def loopBody301_109 : HolLoopProg 64 :=
.mark loopBody301_108

def loopBody301_110 : HolLoopProg 64 :=
.seq loopBody301_101 loopBody301_109

def loopBody301_111 : HolLoopProg 64 :=
.mark loopBody301_110

def loopBody301_112 : HolLoopProg 64 :=
.seq loopBody301_99 loopBody301_111

def loopBody301_113 : HolLoopProg 64 :=
.mark loopBody301_112

def loopBody301_114 : HolLoopProg 64 :=
.seq loopBody301_97 loopBody301_113

def loopBody301_115 : HolLoopProg 64 :=
.mark loopBody301_114

def loopBody301_116 : HolLoopProg 64 :=
.seq loopBody301_71 loopBody301_115

def loopBody301_117 : HolLoopProg 64 :=
.mark loopBody301_116

def loopBody301_118 : HolLoopProg 64 :=
.seq loopBody301_95 loopBody301_117

def loopBody301_119 : HolLoopProg 64 :=
.mark loopBody301_118

def loopBody301_120 : HolLoopProg 64 :=
.seq loopBody301_119 loopBody301_93

def loopBody301_121 : HolLoopProg 64 :=
.mark loopBody301_120

def loopBody301_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 10, Flapjack.HolLoopExp.const 32#64]))

def loopBody301_123 : HolLoopProg 64 :=
.mark loopBody301_122

def loopBody301_124 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 20#64)

def loopBody301_125 : HolLoopProg 64 :=
.mark loopBody301_124

def loopBody301_126 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 176) ([12, 13, 14]) (some (12, loopBody301_63, loopBody301_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody301_127 : HolLoopProg 64 :=
.mark loopBody301_126

def loopBody301_128 : HolLoopProg 64 :=
.seq loopBody301_127 loopBody301_1

def loopBody301_129 : HolLoopProg 64 :=
.mark loopBody301_128

def loopBody301_130 : HolLoopProg 64 :=
.seq loopBody301_125 loopBody301_129

def loopBody301_131 : HolLoopProg 64 :=
.mark loopBody301_130

def loopBody301_132 : HolLoopProg 64 :=
.seq loopBody301_123 loopBody301_131

def loopBody301_133 : HolLoopProg 64 :=
.mark loopBody301_132

def loopBody301_134 : HolLoopProg 64 :=
.seq loopBody301_71 loopBody301_133

def loopBody301_135 : HolLoopProg 64 :=
.mark loopBody301_134

def loopBody301_136 : HolLoopProg 64 :=
.seq loopBody301_121 loopBody301_135

def loopBody301_137 : HolLoopProg 64 :=
.mark loopBody301_136

def loopBody301_138 : HolLoopProg 64 :=
.seq loopBody301_137 loopBody301_93

def loopBody301_139 : HolLoopProg 64 :=
.mark loopBody301_138

def loopBody301_140 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 10, Flapjack.HolLoopExp.const 40#64]))

def loopBody301_141 : HolLoopProg 64 :=
.mark loopBody301_140

def loopBody301_142 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 177) ([12, 13]) (some (12, loopBody301_63, loopBody301_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody301_143 : HolLoopProg 64 :=
.mark loopBody301_142

def loopBody301_144 : HolLoopProg 64 :=
.seq loopBody301_143 loopBody301_1

def loopBody301_145 : HolLoopProg 64 :=
.mark loopBody301_144

def loopBody301_146 : HolLoopProg 64 :=
.seq loopBody301_141 loopBody301_145

def loopBody301_147 : HolLoopProg 64 :=
.mark loopBody301_146

def loopBody301_148 : HolLoopProg 64 :=
.seq loopBody301_71 loopBody301_147

def loopBody301_149 : HolLoopProg 64 :=
.mark loopBody301_148

def loopBody301_150 : HolLoopProg 64 :=
.seq loopBody301_139 loopBody301_149

def loopBody301_151 : HolLoopProg 64 :=
.mark loopBody301_150

def loopBody301_152 : HolLoopProg 64 :=
.seq loopBody301_151 loopBody301_93

def loopBody301_153 : HolLoopProg 64 :=
.mark loopBody301_152

def loopBody301_154 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 10, Flapjack.HolLoopExp.const 48#64]))

def loopBody301_155 : HolLoopProg 64 :=
.mark loopBody301_154

def loopBody301_156 : HolLoopProg 64 :=
.seq loopBody301_155 loopBody301_145

def loopBody301_157 : HolLoopProg 64 :=
.mark loopBody301_156

def loopBody301_158 : HolLoopProg 64 :=
.seq loopBody301_71 loopBody301_157

def loopBody301_159 : HolLoopProg 64 :=
.mark loopBody301_158

def loopBody301_160 : HolLoopProg 64 :=
.seq loopBody301_153 loopBody301_159

def loopBody301_161 : HolLoopProg 64 :=
.mark loopBody301_160

def loopBody301_162 : HolLoopProg 64 :=
.seq loopBody301_161 loopBody301_93

def loopBody301_163 : HolLoopProg 64 :=
.mark loopBody301_162

def loopBody301_164 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 10, Flapjack.HolLoopExp.const 56#64]))

def loopBody301_165 : HolLoopProg 64 :=
.mark loopBody301_164

def loopBody301_166 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 10, Flapjack.HolLoopExp.const 56#64],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody301_167 : HolLoopProg 64 :=
.mark loopBody301_166

def loopBody301_168 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 10, Flapjack.HolLoopExp.const 56#64],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody301_169 : HolLoopProg 64 :=
.mark loopBody301_168

def loopBody301_170 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 10, Flapjack.HolLoopExp.const 56#64],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody301_171 : HolLoopProg 64 :=
.mark loopBody301_170

def loopBody301_172 : HolLoopProg 64 :=
.seq loopBody301_171 loopBody301_107

def loopBody301_173 : HolLoopProg 64 :=
.mark loopBody301_172

def loopBody301_174 : HolLoopProg 64 :=
.seq loopBody301_169 loopBody301_173

def loopBody301_175 : HolLoopProg 64 :=
.mark loopBody301_174

def loopBody301_176 : HolLoopProg 64 :=
.seq loopBody301_167 loopBody301_175

def loopBody301_177 : HolLoopProg 64 :=
.mark loopBody301_176

def loopBody301_178 : HolLoopProg 64 :=
.seq loopBody301_165 loopBody301_177

def loopBody301_179 : HolLoopProg 64 :=
.mark loopBody301_178

def loopBody301_180 : HolLoopProg 64 :=
.seq loopBody301_71 loopBody301_179

def loopBody301_181 : HolLoopProg 64 :=
.mark loopBody301_180

def loopBody301_182 : HolLoopProg 64 :=
.seq loopBody301_163 loopBody301_181

def loopBody301_183 : HolLoopProg 64 :=
.mark loopBody301_182

def loopBody301_184 : HolLoopProg 64 :=
.seq loopBody301_183 loopBody301_93

def loopBody301_185 : HolLoopProg 64 :=
.mark loopBody301_184

def loopBody301_186 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 10, Flapjack.HolLoopExp.const 88#64]))

def loopBody301_187 : HolLoopProg 64 :=
.mark loopBody301_186

def loopBody301_188 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 10, Flapjack.HolLoopExp.const 88#64],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody301_189 : HolLoopProg 64 :=
.mark loopBody301_188

def loopBody301_190 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 10, Flapjack.HolLoopExp.const 88#64],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody301_191 : HolLoopProg 64 :=
.mark loopBody301_190

def loopBody301_192 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 10, Flapjack.HolLoopExp.const 88#64],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody301_193 : HolLoopProg 64 :=
.mark loopBody301_192

def loopBody301_194 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 357) ([12, 13, 14, 15, 16]) (some (12, loopBody301_63, loopBody301_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody301_195 : HolLoopProg 64 :=
.mark loopBody301_194

def loopBody301_196 : HolLoopProg 64 :=
.seq loopBody301_195 loopBody301_1

def loopBody301_197 : HolLoopProg 64 :=
.mark loopBody301_196

def loopBody301_198 : HolLoopProg 64 :=
.seq loopBody301_193 loopBody301_197

def loopBody301_199 : HolLoopProg 64 :=
.mark loopBody301_198

def loopBody301_200 : HolLoopProg 64 :=
.seq loopBody301_191 loopBody301_199

def loopBody301_201 : HolLoopProg 64 :=
.mark loopBody301_200

def loopBody301_202 : HolLoopProg 64 :=
.seq loopBody301_189 loopBody301_201

def loopBody301_203 : HolLoopProg 64 :=
.mark loopBody301_202

def loopBody301_204 : HolLoopProg 64 :=
.seq loopBody301_187 loopBody301_203

def loopBody301_205 : HolLoopProg 64 :=
.mark loopBody301_204

def loopBody301_206 : HolLoopProg 64 :=
.seq loopBody301_71 loopBody301_205

def loopBody301_207 : HolLoopProg 64 :=
.mark loopBody301_206

def loopBody301_208 : HolLoopProg 64 :=
.seq loopBody301_185 loopBody301_207

def loopBody301_209 : HolLoopProg 64 :=
.mark loopBody301_208

def loopBody301_210 : HolLoopProg 64 :=
.seq loopBody301_209 loopBody301_93

def loopBody301_211 : HolLoopProg 64 :=
.mark loopBody301_210

def loopBody301_212 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 1#64])

def loopBody301_213 : HolLoopProg 64 :=
.mark loopBody301_212

def loopBody301_214 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 12)

def loopBody301_215 : HolLoopProg 64 :=
.mark loopBody301_214

def loopBody301_216 : HolLoopProg 64 :=
.seq loopBody301_215 loopBody301_1

def loopBody301_217 : HolLoopProg 64 :=
.mark loopBody301_216

def loopBody301_218 : HolLoopProg 64 :=
.seq loopBody301_217 loopBody301_1

def loopBody301_219 : HolLoopProg 64 :=
.mark loopBody301_218

def loopBody301_220 : HolLoopProg 64 :=
.seq loopBody301_213 loopBody301_219

def loopBody301_221 : HolLoopProg 64 :=
.mark loopBody301_220

def loopBody301_222 : HolLoopProg 64 :=
.seq loopBody301_1 loopBody301_221

def loopBody301_223 : HolLoopProg 64 :=
.mark loopBody301_222

def loopBody301_224 : HolLoopProg 64 :=
.seq loopBody301_211 loopBody301_223

def loopBody301_225 : HolLoopProg 64 :=
.mark loopBody301_224

def loopBody301_226 : HolLoopProg 64 :=
.seq loopBody301_69 loopBody301_225

def loopBody301_227 : HolLoopProg 64 :=
.mark loopBody301_226

def loopBody301_228 : HolLoopProg 64 :=
.seq loopBody301_1 loopBody301_227

def loopBody301_229 : HolLoopProg 64 :=
.mark loopBody301_228

def loopBody301_230 : HolLoopProg 64 :=
.seq loopBody301_1 loopBody301_229

def loopBody301_231 : HolLoopProg 64 :=
.mark loopBody301_230

def loopBody301_232 : HolLoopProg 64 :=
.seq loopBody301_59 loopBody301_231

def loopBody301_233 : HolLoopProg 64 :=
.mark loopBody301_232

def loopBody301_234 : HolLoopProg 64 :=
.seq loopBody301_57 loopBody301_233

def loopBody301_235 : HolLoopProg 64 :=
.mark loopBody301_234

def loopBody301_236 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody301_237 : HolLoopProg 64 :=
.mark loopBody301_236

def loopBody301_238 : HolLoopProg 64 :=
.seq loopBody301_235 loopBody301_237

def loopBody301_239 : HolLoopProg 64 :=
.mark loopBody301_238

def loopBody301_240 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody301_241 : HolLoopProg 64 :=
.mark loopBody301_240

def loopBody301_242 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody301_239 loopBody301_241 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody301_243 : HolLoopProg 64 :=
.mark loopBody301_242

def loopBody301_244 : HolLoopProg 64 :=
.seq loopBody301_243 loopBody301_1

def loopBody301_245 : HolLoopProg 64 :=
.mark loopBody301_244

def loopBody301_246 : HolLoopProg 64 :=
.seq loopBody301_45 loopBody301_245

def loopBody301_247 : HolLoopProg 64 :=
.mark loopBody301_246

def loopBody301_248 : HolLoopProg 64 :=
.seq loopBody301_43 loopBody301_247

def loopBody301_249 : HolLoopProg 64 :=
.mark loopBody301_248

def loopBody301_250 : HolLoopProg 64 :=
.seq loopBody301_37 loopBody301_249

def loopBody301_251 : HolLoopProg 64 :=
.mark loopBody301_250

def loopBody301_252 : HolLoopProg 64 :=
.seq loopBody301_35 loopBody301_251

def loopBody301_253 : HolLoopProg 64 :=
.mark loopBody301_252

def loopBody301_254 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody301_253 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody301_255 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.var 0])

def loopBody301_256 : HolLoopProg 64 :=
.mark loopBody301_255

def loopBody301_257 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [7]

def loopBody301_258 : HolLoopProg 64 :=
.mark loopBody301_257

def loopBody301_259 : HolLoopProg 64 :=
.seq loopBody301_258 loopBody301_1

def loopBody301_260 : HolLoopProg 64 :=
.mark loopBody301_259

def loopBody301_261 : HolLoopProg 64 :=
.seq loopBody301_256 loopBody301_260

def loopBody301_262 : HolLoopProg 64 :=
.mark loopBody301_261

def loopBody301_263 : HolLoopProg 64 :=
.seq loopBody301_254 loopBody301_262

def loopBody301_264 : HolLoopProg 64 :=
.seq loopBody301_33 loopBody301_263

def loopBody301_265 : HolLoopProg 64 :=
.seq loopBody301_1 loopBody301_264

def loopBody301_266 : HolLoopProg 64 :=
.seq loopBody301_31 loopBody301_265

def loopBody301_267 : HolLoopProg 64 :=
.seq loopBody301_1 loopBody301_266

def loopBody301_268 : HolLoopProg 64 :=
.seq loopBody301_29 loopBody301_267

def loopBody301_269 : HolLoopProg 64 :=
.seq loopBody301_1 loopBody301_268

def loopBody301_270 : HolLoopProg 64 :=
.seq loopBody301_1 loopBody301_269

def loopBody301_271 : HolLoopProg 64 :=
.seq loopBody301_15 loopBody301_270

def loopBody301_272 : HolLoopProg 64 :=
.seq loopBody301_1 loopBody301_271

def loopBody301_273 : HolLoopProg 64 :=
.seq loopBody301_1 loopBody301_272

def output301 : Nat × List Nat × HolLoopProg 64 :=
  (365, [0, 1, 2], loopBody301_273)
end InitECandidate.Proofs.FrontendStages.Loop
