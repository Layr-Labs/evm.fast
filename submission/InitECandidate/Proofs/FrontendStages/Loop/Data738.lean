import InitECandidate.Proofs.FrontendStages.Loop.Translate722
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody738_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody738_1 : HolLoopProg 64 :=
.mark loopBody738_0

def loopBody738_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody738_3 : HolLoopProg 64 :=
.mark loopBody738_2

def loopBody738_4 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 69) ([]) (some (6, loopBody738_3, loopBody738_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody738_5 : HolLoopProg 64 :=
.mark loopBody738_4

def loopBody738_6 : HolLoopProg 64 :=
.seq loopBody738_5 loopBody738_1

def loopBody738_7 : HolLoopProg 64 :=
.mark loopBody738_6

def loopBody738_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 96#64)

def loopBody738_9 : HolLoopProg 64 :=
.mark loopBody738_8

def loopBody738_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody738_11 : HolLoopProg 64 :=
.mark loopBody738_10

def loopBody738_12 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([7]) (some (7, loopBody738_11, loopBody738_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody738_13 : HolLoopProg 64 :=
.mark loopBody738_12

def loopBody738_14 : HolLoopProg 64 :=
.seq loopBody738_13 loopBody738_1

def loopBody738_15 : HolLoopProg 64 :=
.mark loopBody738_14

def loopBody738_16 : HolLoopProg 64 :=
.seq loopBody738_9 loopBody738_15

def loopBody738_17 : HolLoopProg 64 :=
.mark loopBody738_16

def loopBody738_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 96#64)

def loopBody738_19 : HolLoopProg 64 :=
.mark loopBody738_18

def loopBody738_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody738_21 : HolLoopProg 64 :=
.mark loopBody738_20

def loopBody738_22 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([8]) (some (8, loopBody738_21, loopBody738_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody738_23 : HolLoopProg 64 :=
.mark loopBody738_22

def loopBody738_24 : HolLoopProg 64 :=
.seq loopBody738_23 loopBody738_1

def loopBody738_25 : HolLoopProg 64 :=
.mark loopBody738_24

def loopBody738_26 : HolLoopProg 64 :=
.seq loopBody738_19 loopBody738_25

def loopBody738_27 : HolLoopProg 64 :=
.mark loopBody738_26

def loopBody738_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 1#64])

def loopBody738_29 : HolLoopProg 64 :=
.mark loopBody738_28

def loopBody738_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 96#64)

def loopBody738_31 : HolLoopProg 64 :=
.mark loopBody738_30

def loopBody738_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 11 11 9 10)

def loopBody738_33 : HolLoopProg 64 :=
.mark loopBody738_32

def loopBody738_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 6)

def loopBody738_35 : HolLoopProg 64 :=
.mark loopBody738_34

def loopBody738_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 11])

def loopBody738_37 : HolLoopProg 64 :=
.mark loopBody738_36

def loopBody738_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody738_39 : HolLoopProg 64 :=
.mark loopBody738_38

def loopBody738_40 : HolLoopProg 64 :=
.call (some
  ([8],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 729) ([12, 13]) (some (9, loopBody738_39, loopBody738_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody738_41 : HolLoopProg 64 :=
.mark loopBody738_40

def loopBody738_42 : HolLoopProg 64 :=
.seq loopBody738_41 loopBody738_1

def loopBody738_43 : HolLoopProg 64 :=
.mark loopBody738_42

def loopBody738_44 : HolLoopProg 64 :=
.seq loopBody738_37 loopBody738_43

def loopBody738_45 : HolLoopProg 64 :=
.mark loopBody738_44

def loopBody738_46 : HolLoopProg 64 :=
.seq loopBody738_35 loopBody738_45

def loopBody738_47 : HolLoopProg 64 :=
.mark loopBody738_46

def loopBody738_48 : HolLoopProg 64 :=
.seq loopBody738_33 loopBody738_47

def loopBody738_49 : HolLoopProg 64 :=
.mark loopBody738_48

def loopBody738_50 : HolLoopProg 64 :=
.seq loopBody738_31 loopBody738_49

def loopBody738_51 : HolLoopProg 64 :=
.mark loopBody738_50

def loopBody738_52 : HolLoopProg 64 :=
.seq loopBody738_29 loopBody738_51

def loopBody738_53 : HolLoopProg 64 :=
.mark loopBody738_52

def loopBody738_54 : HolLoopProg 64 :=
.seq loopBody738_1 loopBody738_53

def loopBody738_55 : HolLoopProg 64 :=
.mark loopBody738_54

def loopBody738_56 : HolLoopProg 64 :=
.seq loopBody738_1 loopBody738_55

def loopBody738_57 : HolLoopProg 64 :=
.mark loopBody738_56

def loopBody738_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody738_59 : HolLoopProg 64 :=
.mark loopBody738_58

def loopBody738_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody738_61 : HolLoopProg 64 :=
.mark loopBody738_60

def loopBody738_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 1#64])

def loopBody738_63 : HolLoopProg 64 :=
.mark loopBody738_62

def loopBody738_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 1#64)

def loopBody738_65 : HolLoopProg 64 :=
.mark loopBody738_64

def loopBody738_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody738_67 : HolLoopProg 64 :=
.mark loopBody738_66

def loopBody738_68 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.RegImm.reg 11) loopBody738_65 loopBody738_67 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody738_69 : HolLoopProg 64 :=
.mark loopBody738_68

def loopBody738_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 10)

def loopBody738_71 : HolLoopProg 64 :=
.mark loopBody738_70

def loopBody738_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 6)

def loopBody738_73 : HolLoopProg 64 :=
.mark loopBody738_72

def loopBody738_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 6)

def loopBody738_75 : HolLoopProg 64 :=
.mark loopBody738_74

def loopBody738_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 3)

def loopBody738_77 : HolLoopProg 64 :=
.mark loopBody738_76

def loopBody738_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody738_79 : HolLoopProg 64 :=
.mark loopBody738_78

def loopBody738_80 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 739) ([10, 11, 12]) (some (10, loopBody738_79, loopBody738_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody738_81 : HolLoopProg 64 :=
.mark loopBody738_80

def loopBody738_82 : HolLoopProg 64 :=
.seq loopBody738_81 loopBody738_1

def loopBody738_83 : HolLoopProg 64 :=
.mark loopBody738_82

def loopBody738_84 : HolLoopProg 64 :=
.seq loopBody738_77 loopBody738_83

def loopBody738_85 : HolLoopProg 64 :=
.mark loopBody738_84

def loopBody738_86 : HolLoopProg 64 :=
.seq loopBody738_75 loopBody738_85

def loopBody738_87 : HolLoopProg 64 :=
.mark loopBody738_86

def loopBody738_88 : HolLoopProg 64 :=
.seq loopBody738_73 loopBody738_87

def loopBody738_89 : HolLoopProg 64 :=
.mark loopBody738_88

def loopBody738_90 : HolLoopProg 64 :=
.seq loopBody738_1 loopBody738_89

def loopBody738_91 : HolLoopProg 64 :=
.mark loopBody738_90

def loopBody738_92 : HolLoopProg 64 :=
.seq loopBody738_1 loopBody738_91

def loopBody738_93 : HolLoopProg 64 :=
.mark loopBody738_92

def loopBody738_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 96#64)

def loopBody738_95 : HolLoopProg 64 :=
.mark loopBody738_94

def loopBody738_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 12 12 10 11)

def loopBody738_97 : HolLoopProg 64 :=
.mark loopBody738_96

def loopBody738_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
    [Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 2#64],
      Flapjack.HolLoopExp.var 8])

def loopBody738_99 : HolLoopProg 64 :=
.mark loopBody738_98

def loopBody738_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 96#64)

def loopBody738_101 : HolLoopProg 64 :=
.mark loopBody738_100

def loopBody738_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 15 15 13 14)

def loopBody738_103 : HolLoopProg 64 :=
.mark loopBody738_102

def loopBody738_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 7)

def loopBody738_105 : HolLoopProg 64 :=
.mark loopBody738_104

def loopBody738_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.var 12])

def loopBody738_107 : HolLoopProg 64 :=
.mark loopBody738_106

def loopBody738_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 15])

def loopBody738_109 : HolLoopProg 64 :=
.mark loopBody738_108

def loopBody738_110 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 739) ([16, 17, 18]) (some (10, loopBody738_79, loopBody738_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody738_111 : HolLoopProg 64 :=
.mark loopBody738_110

def loopBody738_112 : HolLoopProg 64 :=
.seq loopBody738_111 loopBody738_1

def loopBody738_113 : HolLoopProg 64 :=
.mark loopBody738_112

def loopBody738_114 : HolLoopProg 64 :=
.seq loopBody738_109 loopBody738_113

def loopBody738_115 : HolLoopProg 64 :=
.mark loopBody738_114

def loopBody738_116 : HolLoopProg 64 :=
.seq loopBody738_107 loopBody738_115

def loopBody738_117 : HolLoopProg 64 :=
.mark loopBody738_116

def loopBody738_118 : HolLoopProg 64 :=
.seq loopBody738_105 loopBody738_117

def loopBody738_119 : HolLoopProg 64 :=
.mark loopBody738_118

def loopBody738_120 : HolLoopProg 64 :=
.seq loopBody738_103 loopBody738_119

def loopBody738_121 : HolLoopProg 64 :=
.mark loopBody738_120

def loopBody738_122 : HolLoopProg 64 :=
.seq loopBody738_101 loopBody738_121

def loopBody738_123 : HolLoopProg 64 :=
.mark loopBody738_122

def loopBody738_124 : HolLoopProg 64 :=
.seq loopBody738_99 loopBody738_123

def loopBody738_125 : HolLoopProg 64 :=
.mark loopBody738_124

def loopBody738_126 : HolLoopProg 64 :=
.seq loopBody738_97 loopBody738_125

def loopBody738_127 : HolLoopProg 64 :=
.mark loopBody738_126

def loopBody738_128 : HolLoopProg 64 :=
.seq loopBody738_95 loopBody738_127

def loopBody738_129 : HolLoopProg 64 :=
.mark loopBody738_128

def loopBody738_130 : HolLoopProg 64 :=
.seq loopBody738_61 loopBody738_129

def loopBody738_131 : HolLoopProg 64 :=
.mark loopBody738_130

def loopBody738_132 : HolLoopProg 64 :=
.seq loopBody738_1 loopBody738_131

def loopBody738_133 : HolLoopProg 64 :=
.mark loopBody738_132

def loopBody738_134 : HolLoopProg 64 :=
.seq loopBody738_1 loopBody738_133

def loopBody738_135 : HolLoopProg 64 :=
.mark loopBody738_134

def loopBody738_136 : HolLoopProg 64 :=
.seq loopBody738_93 loopBody738_135

def loopBody738_137 : HolLoopProg 64 :=
.mark loopBody738_136

def loopBody738_138 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 7)

def loopBody738_139 : HolLoopProg 64 :=
.mark loopBody738_138

def loopBody738_140 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 734) ([10, 11, 12]) (some (10, loopBody738_79, loopBody738_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody738_141 : HolLoopProg 64 :=
.mark loopBody738_140

def loopBody738_142 : HolLoopProg 64 :=
.seq loopBody738_141 loopBody738_1

def loopBody738_143 : HolLoopProg 64 :=
.mark loopBody738_142

def loopBody738_144 : HolLoopProg 64 :=
.seq loopBody738_139 loopBody738_143

def loopBody738_145 : HolLoopProg 64 :=
.mark loopBody738_144

def loopBody738_146 : HolLoopProg 64 :=
.seq loopBody738_75 loopBody738_145

def loopBody738_147 : HolLoopProg 64 :=
.mark loopBody738_146

def loopBody738_148 : HolLoopProg 64 :=
.seq loopBody738_73 loopBody738_147

def loopBody738_149 : HolLoopProg 64 :=
.mark loopBody738_148

def loopBody738_150 : HolLoopProg 64 :=
.seq loopBody738_1 loopBody738_149

def loopBody738_151 : HolLoopProg 64 :=
.mark loopBody738_150

def loopBody738_152 : HolLoopProg 64 :=
.seq loopBody738_1 loopBody738_151

def loopBody738_153 : HolLoopProg 64 :=
.mark loopBody738_152

def loopBody738_154 : HolLoopProg 64 :=
.seq loopBody738_137 loopBody738_153

def loopBody738_155 : HolLoopProg 64 :=
.mark loopBody738_154

def loopBody738_156 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 8, Flapjack.HolLoopExp.const 1#64])

def loopBody738_157 : HolLoopProg 64 :=
.mark loopBody738_156

def loopBody738_158 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 9)

def loopBody738_159 : HolLoopProg 64 :=
.mark loopBody738_158

def loopBody738_160 : HolLoopProg 64 :=
.seq loopBody738_159 loopBody738_1

def loopBody738_161 : HolLoopProg 64 :=
.mark loopBody738_160

def loopBody738_162 : HolLoopProg 64 :=
.seq loopBody738_161 loopBody738_1

def loopBody738_163 : HolLoopProg 64 :=
.mark loopBody738_162

def loopBody738_164 : HolLoopProg 64 :=
.seq loopBody738_157 loopBody738_163

def loopBody738_165 : HolLoopProg 64 :=
.mark loopBody738_164

def loopBody738_166 : HolLoopProg 64 :=
.seq loopBody738_1 loopBody738_165

def loopBody738_167 : HolLoopProg 64 :=
.mark loopBody738_166

def loopBody738_168 : HolLoopProg 64 :=
.seq loopBody738_155 loopBody738_167

def loopBody738_169 : HolLoopProg 64 :=
.mark loopBody738_168

def loopBody738_170 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody738_171 : HolLoopProg 64 :=
.mark loopBody738_170

def loopBody738_172 : HolLoopProg 64 :=
.seq loopBody738_169 loopBody738_171

def loopBody738_173 : HolLoopProg 64 :=
.mark loopBody738_172

def loopBody738_174 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody738_175 : HolLoopProg 64 :=
.mark loopBody738_174

def loopBody738_176 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.RegImm.imm 0#64) loopBody738_173 loopBody738_175 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody738_177 : HolLoopProg 64 :=
.mark loopBody738_176

def loopBody738_178 : HolLoopProg 64 :=
.seq loopBody738_177 loopBody738_1

def loopBody738_179 : HolLoopProg 64 :=
.mark loopBody738_178

def loopBody738_180 : HolLoopProg 64 :=
.seq loopBody738_71 loopBody738_179

def loopBody738_181 : HolLoopProg 64 :=
.mark loopBody738_180

def loopBody738_182 : HolLoopProg 64 :=
.seq loopBody738_69 loopBody738_181

def loopBody738_183 : HolLoopProg 64 :=
.mark loopBody738_182

def loopBody738_184 : HolLoopProg 64 :=
.seq loopBody738_63 loopBody738_183

def loopBody738_185 : HolLoopProg 64 :=
.mark loopBody738_184

def loopBody738_186 : HolLoopProg 64 :=
.seq loopBody738_61 loopBody738_185

def loopBody738_187 : HolLoopProg 64 :=
.mark loopBody738_186

def loopBody738_188 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) loopBody738_187 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody738_189 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 0)

def loopBody738_190 : HolLoopProg 64 :=
.mark loopBody738_189

def loopBody738_191 : HolLoopProg 64 :=
.call (some ([9], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))) (some 729) ([10, 11]) (some (10, loopBody738_79, loopBody738_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody738_192 : HolLoopProg 64 :=
.mark loopBody738_191

def loopBody738_193 : HolLoopProg 64 :=
.seq loopBody738_192 loopBody738_1

def loopBody738_194 : HolLoopProg 64 :=
.mark loopBody738_193

def loopBody738_195 : HolLoopProg 64 :=
.seq loopBody738_75 loopBody738_194

def loopBody738_196 : HolLoopProg 64 :=
.mark loopBody738_195

def loopBody738_197 : HolLoopProg 64 :=
.seq loopBody738_190 loopBody738_196

def loopBody738_198 : HolLoopProg 64 :=
.mark loopBody738_197

def loopBody738_199 : HolLoopProg 64 :=
.seq loopBody738_1 loopBody738_198

def loopBody738_200 : HolLoopProg 64 :=
.mark loopBody738_199

def loopBody738_201 : HolLoopProg 64 :=
.seq loopBody738_1 loopBody738_200

def loopBody738_202 : HolLoopProg 64 :=
.mark loopBody738_201

def loopBody738_203 : HolLoopProg 64 :=
.seq loopBody738_188 loopBody738_202

def loopBody738_204 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 5)

def loopBody738_205 : HolLoopProg 64 :=
.mark loopBody738_204

def loopBody738_206 : HolLoopProg 64 :=
.call (some ([9], Flapjack.Spt.ln)) (some 70) ([10]) (some (10, loopBody738_79, loopBody738_1, (Flapjack.Spt.ln)))

def loopBody738_207 : HolLoopProg 64 :=
.mark loopBody738_206

def loopBody738_208 : HolLoopProg 64 :=
.seq loopBody738_207 loopBody738_1

def loopBody738_209 : HolLoopProg 64 :=
.mark loopBody738_208

def loopBody738_210 : HolLoopProg 64 :=
.seq loopBody738_205 loopBody738_209

def loopBody738_211 : HolLoopProg 64 :=
.mark loopBody738_210

def loopBody738_212 : HolLoopProg 64 :=
.seq loopBody738_1 loopBody738_211

def loopBody738_213 : HolLoopProg 64 :=
.mark loopBody738_212

def loopBody738_214 : HolLoopProg 64 :=
.seq loopBody738_1 loopBody738_213

def loopBody738_215 : HolLoopProg 64 :=
.mark loopBody738_214

def loopBody738_216 : HolLoopProg 64 :=
.seq loopBody738_203 loopBody738_215

def loopBody738_217 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody738_218 : HolLoopProg 64 :=
.mark loopBody738_217

def loopBody738_219 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [9]

def loopBody738_220 : HolLoopProg 64 :=
.mark loopBody738_219

def loopBody738_221 : HolLoopProg 64 :=
.seq loopBody738_220 loopBody738_1

def loopBody738_222 : HolLoopProg 64 :=
.mark loopBody738_221

def loopBody738_223 : HolLoopProg 64 :=
.seq loopBody738_218 loopBody738_222

def loopBody738_224 : HolLoopProg 64 :=
.mark loopBody738_223

def loopBody738_225 : HolLoopProg 64 :=
.seq loopBody738_216 loopBody738_224

def loopBody738_226 : HolLoopProg 64 :=
.seq loopBody738_59 loopBody738_225

def loopBody738_227 : HolLoopProg 64 :=
.seq loopBody738_1 loopBody738_226

def loopBody738_228 : HolLoopProg 64 :=
.seq loopBody738_57 loopBody738_227

def loopBody738_229 : HolLoopProg 64 :=
.seq loopBody738_27 loopBody738_228

def loopBody738_230 : HolLoopProg 64 :=
.seq loopBody738_1 loopBody738_229

def loopBody738_231 : HolLoopProg 64 :=
.seq loopBody738_1 loopBody738_230

def loopBody738_232 : HolLoopProg 64 :=
.seq loopBody738_17 loopBody738_231

def loopBody738_233 : HolLoopProg 64 :=
.seq loopBody738_1 loopBody738_232

def loopBody738_234 : HolLoopProg 64 :=
.seq loopBody738_1 loopBody738_233

def loopBody738_235 : HolLoopProg 64 :=
.seq loopBody738_7 loopBody738_234

def loopBody738_236 : HolLoopProg 64 :=
.seq loopBody738_1 loopBody738_235

def loopBody738_237 : HolLoopProg 64 :=
.seq loopBody738_1 loopBody738_236

def output738 : Nat × List Nat × HolLoopProg 64 :=
  (802, [0, 1, 2, 3, 4], loopBody738_237)
end InitECandidate.Proofs.FrontendStages.Loop
