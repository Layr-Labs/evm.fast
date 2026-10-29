import InitECandidate.Proofs.FrontendStages.Loop.Translate155
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody171_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody171_1 : HolLoopProg 64 :=
.mark loopBody171_0

def loopBody171_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody171_3 : HolLoopProg 64 :=
.mark loopBody171_2

def loopBody171_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody171_5 : HolLoopProg 64 :=
.mark loopBody171_4

def loopBody171_6 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 97) ([5]) (some (5, loopBody171_5, loopBody171_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody171_7 : HolLoopProg 64 :=
.mark loopBody171_6

def loopBody171_8 : HolLoopProg 64 :=
.seq loopBody171_7 loopBody171_1

def loopBody171_9 : HolLoopProg 64 :=
.mark loopBody171_8

def loopBody171_10 : HolLoopProg 64 :=
.seq loopBody171_3 loopBody171_9

def loopBody171_11 : HolLoopProg 64 :=
.mark loopBody171_10

def loopBody171_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody171_13 : HolLoopProg 64 :=
.mark loopBody171_12

def loopBody171_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody171_15 : HolLoopProg 64 :=
.mark loopBody171_14

def loopBody171_16 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 97) ([6]) (some (6, loopBody171_15, loopBody171_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody171_17 : HolLoopProg 64 :=
.mark loopBody171_16

def loopBody171_18 : HolLoopProg 64 :=
.seq loopBody171_17 loopBody171_1

def loopBody171_19 : HolLoopProg 64 :=
.mark loopBody171_18

def loopBody171_20 : HolLoopProg 64 :=
.seq loopBody171_13 loopBody171_19

def loopBody171_21 : HolLoopProg 64 :=
.mark loopBody171_20

def loopBody171_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody171_23 : HolLoopProg 64 :=
.mark loopBody171_22

def loopBody171_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody171_25 : HolLoopProg 64 :=
.mark loopBody171_24

def loopBody171_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody171_27 : HolLoopProg 64 :=
.mark loopBody171_26

def loopBody171_28 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 93) ([7, 8]) (some (7, loopBody171_27, loopBody171_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody171_29 : HolLoopProg 64 :=
.mark loopBody171_28

def loopBody171_30 : HolLoopProg 64 :=
.seq loopBody171_29 loopBody171_1

def loopBody171_31 : HolLoopProg 64 :=
.mark loopBody171_30

def loopBody171_32 : HolLoopProg 64 :=
.seq loopBody171_25 loopBody171_31

def loopBody171_33 : HolLoopProg 64 :=
.mark loopBody171_32

def loopBody171_34 : HolLoopProg 64 :=
.seq loopBody171_23 loopBody171_33

def loopBody171_35 : HolLoopProg 64 :=
.mark loopBody171_34

def loopBody171_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody171_37 : HolLoopProg 64 :=
.mark loopBody171_36

def loopBody171_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody171_39 : HolLoopProg 64 :=
.mark loopBody171_38

def loopBody171_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody171_41 : HolLoopProg 64 :=
.mark loopBody171_40

def loopBody171_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody171_43 : HolLoopProg 64 :=
.mark loopBody171_42

def loopBody171_44 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.RegImm.reg 9) loopBody171_41 loopBody171_43 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody171_45 : HolLoopProg 64 :=
.mark loopBody171_44

def loopBody171_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody171_47 : HolLoopProg 64 :=
.mark loopBody171_46

def loopBody171_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody171_49 : HolLoopProg 64 :=
.mark loopBody171_48

def loopBody171_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 96#64]),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 6) (Flapjack.HolLoopExp.const 5#64)])

def loopBody171_51 : HolLoopProg 64 :=
.mark loopBody171_50

def loopBody171_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 32#64)

def loopBody171_53 : HolLoopProg 64 :=
.mark loopBody171_52

def loopBody171_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody171_55 : HolLoopProg 64 :=
.mark loopBody171_54

def loopBody171_56 : HolLoopProg 64 :=
.call (some ([7], Flapjack.Spt.ln)) (some 77) ([8, 9, 10]) (some (8, loopBody171_55, loopBody171_1, (Flapjack.Spt.ln)))

def loopBody171_57 : HolLoopProg 64 :=
.mark loopBody171_56

def loopBody171_58 : HolLoopProg 64 :=
.seq loopBody171_57 loopBody171_1

def loopBody171_59 : HolLoopProg 64 :=
.mark loopBody171_58

def loopBody171_60 : HolLoopProg 64 :=
.seq loopBody171_53 loopBody171_59

def loopBody171_61 : HolLoopProg 64 :=
.mark loopBody171_60

def loopBody171_62 : HolLoopProg 64 :=
.seq loopBody171_51 loopBody171_61

def loopBody171_63 : HolLoopProg 64 :=
.mark loopBody171_62

def loopBody171_64 : HolLoopProg 64 :=
.seq loopBody171_49 loopBody171_63

def loopBody171_65 : HolLoopProg 64 :=
.mark loopBody171_64

def loopBody171_66 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_65

def loopBody171_67 : HolLoopProg 64 :=
.mark loopBody171_66

def loopBody171_68 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_67

def loopBody171_69 : HolLoopProg 64 :=
.mark loopBody171_68

def loopBody171_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody171_71 : HolLoopProg 64 :=
.mark loopBody171_70

def loopBody171_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [7]

def loopBody171_73 : HolLoopProg 64 :=
.mark loopBody171_72

def loopBody171_74 : HolLoopProg 64 :=
.seq loopBody171_73 loopBody171_1

def loopBody171_75 : HolLoopProg 64 :=
.mark loopBody171_74

def loopBody171_76 : HolLoopProg 64 :=
.seq loopBody171_71 loopBody171_75

def loopBody171_77 : HolLoopProg 64 :=
.mark loopBody171_76

def loopBody171_78 : HolLoopProg 64 :=
.seq loopBody171_69 loopBody171_77

def loopBody171_79 : HolLoopProg 64 :=
.mark loopBody171_78

def loopBody171_80 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody171_79 loopBody171_1 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody171_81 : HolLoopProg 64 :=
.mark loopBody171_80

def loopBody171_82 : HolLoopProg 64 :=
.seq loopBody171_81 loopBody171_1

def loopBody171_83 : HolLoopProg 64 :=
.mark loopBody171_82

def loopBody171_84 : HolLoopProg 64 :=
.seq loopBody171_47 loopBody171_83

def loopBody171_85 : HolLoopProg 64 :=
.mark loopBody171_84

def loopBody171_86 : HolLoopProg 64 :=
.seq loopBody171_45 loopBody171_85

def loopBody171_87 : HolLoopProg 64 :=
.mark loopBody171_86

def loopBody171_88 : HolLoopProg 64 :=
.seq loopBody171_39 loopBody171_87

def loopBody171_89 : HolLoopProg 64 :=
.mark loopBody171_88

def loopBody171_90 : HolLoopProg 64 :=
.seq loopBody171_37 loopBody171_89

def loopBody171_91 : HolLoopProg 64 :=
.mark loopBody171_90

def loopBody171_92 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 69) ([]) (some (8, loopBody171_55, loopBody171_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody171_93 : HolLoopProg 64 :=
.mark loopBody171_92

def loopBody171_94 : HolLoopProg 64 :=
.seq loopBody171_93 loopBody171_1

def loopBody171_95 : HolLoopProg 64 :=
.mark loopBody171_94

def loopBody171_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.const 1#64) (Flapjack.HolLoopExp.var 5))

def loopBody171_97 : HolLoopProg 64 :=
.mark loopBody171_96

def loopBody171_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 8) (Flapjack.HolLoopExp.const 5#64))

def loopBody171_99 : HolLoopProg 64 :=
.mark loopBody171_98

def loopBody171_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody171_101 : HolLoopProg 64 :=
.mark loopBody171_100

def loopBody171_102 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 68) ([10]) (some (10, loopBody171_101, loopBody171_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody171_103 : HolLoopProg 64 :=
.mark loopBody171_102

def loopBody171_104 : HolLoopProg 64 :=
.seq loopBody171_103 loopBody171_1

def loopBody171_105 : HolLoopProg 64 :=
.mark loopBody171_104

def loopBody171_106 : HolLoopProg 64 :=
.seq loopBody171_99 loopBody171_105

def loopBody171_107 : HolLoopProg 64 :=
.mark loopBody171_106

def loopBody171_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 9)

def loopBody171_109 : HolLoopProg 64 :=
.mark loopBody171_108

def loopBody171_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 0)

def loopBody171_111 : HolLoopProg 64 :=
.mark loopBody171_110

def loopBody171_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 5#64))

def loopBody171_113 : HolLoopProg 64 :=
.mark loopBody171_112

def loopBody171_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 11

def loopBody171_115 : HolLoopProg 64 :=
.mark loopBody171_114

def loopBody171_116 : HolLoopProg 64 :=
.call (some
  ([10],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 77) ([11, 12, 13]) (some (11, loopBody171_115, loopBody171_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody171_117 : HolLoopProg 64 :=
.mark loopBody171_116

def loopBody171_118 : HolLoopProg 64 :=
.seq loopBody171_117 loopBody171_1

def loopBody171_119 : HolLoopProg 64 :=
.mark loopBody171_118

def loopBody171_120 : HolLoopProg 64 :=
.seq loopBody171_113 loopBody171_119

def loopBody171_121 : HolLoopProg 64 :=
.mark loopBody171_120

def loopBody171_122 : HolLoopProg 64 :=
.seq loopBody171_111 loopBody171_121

def loopBody171_123 : HolLoopProg 64 :=
.mark loopBody171_122

def loopBody171_124 : HolLoopProg 64 :=
.seq loopBody171_109 loopBody171_123

def loopBody171_125 : HolLoopProg 64 :=
.mark loopBody171_124

def loopBody171_126 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_125

def loopBody171_127 : HolLoopProg 64 :=
.mark loopBody171_126

def loopBody171_128 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_127

def loopBody171_129 : HolLoopProg 64 :=
.mark loopBody171_128

def loopBody171_130 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 9,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 5#64)])

def loopBody171_131 : HolLoopProg 64 :=
.mark loopBody171_130

def loopBody171_132 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 8, Flapjack.HolLoopExp.var 1])
    (Flapjack.HolLoopExp.const 5#64))

def loopBody171_133 : HolLoopProg 64 :=
.mark loopBody171_132

def loopBody171_134 : HolLoopProg 64 :=
.call (some
  ([10],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 78) ([11, 12]) (some (11, loopBody171_115, loopBody171_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody171_135 : HolLoopProg 64 :=
.mark loopBody171_134

def loopBody171_136 : HolLoopProg 64 :=
.seq loopBody171_135 loopBody171_1

def loopBody171_137 : HolLoopProg 64 :=
.mark loopBody171_136

def loopBody171_138 : HolLoopProg 64 :=
.seq loopBody171_133 loopBody171_137

def loopBody171_139 : HolLoopProg 64 :=
.mark loopBody171_138

def loopBody171_140 : HolLoopProg 64 :=
.seq loopBody171_131 loopBody171_139

def loopBody171_141 : HolLoopProg 64 :=
.mark loopBody171_140

def loopBody171_142 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_141

def loopBody171_143 : HolLoopProg 64 :=
.mark loopBody171_142

def loopBody171_144 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_143

def loopBody171_145 : HolLoopProg 64 :=
.mark loopBody171_144

def loopBody171_146 : HolLoopProg 64 :=
.seq loopBody171_129 loopBody171_145

def loopBody171_147 : HolLoopProg 64 :=
.mark loopBody171_146

def loopBody171_148 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 1#64)

def loopBody171_149 : HolLoopProg 64 :=
.mark loopBody171_148

def loopBody171_150 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 10)

def loopBody171_151 : HolLoopProg 64 :=
.mark loopBody171_150

def loopBody171_152 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 0#64)

def loopBody171_153 : HolLoopProg 64 :=
.mark loopBody171_152

def loopBody171_154 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.less) 12 (Flapjack.RegImm.reg 13) loopBody171_149 loopBody171_153 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody171_155 : HolLoopProg 64 :=
.mark loopBody171_154

def loopBody171_156 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 12)

def loopBody171_157 : HolLoopProg 64 :=
.mark loopBody171_156

def loopBody171_158 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 10) (Flapjack.HolLoopExp.const 1#64))

def loopBody171_159 : HolLoopProg 64 :=
.mark loopBody171_158

def loopBody171_160 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 11)

def loopBody171_161 : HolLoopProg 64 :=
.mark loopBody171_160

def loopBody171_162 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 1#64)

def loopBody171_163 : HolLoopProg 64 :=
.mark loopBody171_162

def loopBody171_164 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 0#64)

def loopBody171_165 : HolLoopProg 64 :=
.mark loopBody171_164

def loopBody171_166 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.less) 14 (Flapjack.RegImm.reg 15) loopBody171_163 loopBody171_165 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody171_167 : HolLoopProg 64 :=
.mark loopBody171_166

def loopBody171_168 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 14)

def loopBody171_169 : HolLoopProg 64 :=
.mark loopBody171_168

def loopBody171_170 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 9,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 12) (Flapjack.HolLoopExp.const 6#64)])

def loopBody171_171 : HolLoopProg 64 :=
.mark loopBody171_170

def loopBody171_172 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 9,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 12) (Flapjack.HolLoopExp.const 6#64),
      Flapjack.HolLoopExp.const 32#64])

def loopBody171_173 : HolLoopProg 64 :=
.mark loopBody171_172

def loopBody171_174 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 9,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 12) (Flapjack.HolLoopExp.const 5#64)])

def loopBody171_175 : HolLoopProg 64 :=
.mark loopBody171_174

def loopBody171_176 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 14

def loopBody171_177 : HolLoopProg 64 :=
.mark loopBody171_176

def loopBody171_178 : HolLoopProg 64 :=
.call (some
  ([13],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 154) ([14, 15, 16]) (some (14, loopBody171_177, loopBody171_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody171_179 : HolLoopProg 64 :=
.mark loopBody171_178

def loopBody171_180 : HolLoopProg 64 :=
.seq loopBody171_179 loopBody171_1

def loopBody171_181 : HolLoopProg 64 :=
.mark loopBody171_180

def loopBody171_182 : HolLoopProg 64 :=
.seq loopBody171_175 loopBody171_181

def loopBody171_183 : HolLoopProg 64 :=
.mark loopBody171_182

def loopBody171_184 : HolLoopProg 64 :=
.seq loopBody171_173 loopBody171_183

def loopBody171_185 : HolLoopProg 64 :=
.mark loopBody171_184

def loopBody171_186 : HolLoopProg 64 :=
.seq loopBody171_171 loopBody171_185

def loopBody171_187 : HolLoopProg 64 :=
.mark loopBody171_186

def loopBody171_188 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_187

def loopBody171_189 : HolLoopProg 64 :=
.mark loopBody171_188

def loopBody171_190 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_189

def loopBody171_191 : HolLoopProg 64 :=
.mark loopBody171_190

def loopBody171_192 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 12, Flapjack.HolLoopExp.const 1#64])

def loopBody171_193 : HolLoopProg 64 :=
.mark loopBody171_192

def loopBody171_194 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 13)

def loopBody171_195 : HolLoopProg 64 :=
.mark loopBody171_194

def loopBody171_196 : HolLoopProg 64 :=
.seq loopBody171_195 loopBody171_1

def loopBody171_197 : HolLoopProg 64 :=
.mark loopBody171_196

def loopBody171_198 : HolLoopProg 64 :=
.seq loopBody171_197 loopBody171_1

def loopBody171_199 : HolLoopProg 64 :=
.mark loopBody171_198

def loopBody171_200 : HolLoopProg 64 :=
.seq loopBody171_193 loopBody171_199

def loopBody171_201 : HolLoopProg 64 :=
.mark loopBody171_200

def loopBody171_202 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_201

def loopBody171_203 : HolLoopProg 64 :=
.mark loopBody171_202

def loopBody171_204 : HolLoopProg 64 :=
.seq loopBody171_191 loopBody171_203

def loopBody171_205 : HolLoopProg 64 :=
.mark loopBody171_204

def loopBody171_206 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody171_207 : HolLoopProg 64 :=
.mark loopBody171_206

def loopBody171_208 : HolLoopProg 64 :=
.seq loopBody171_205 loopBody171_207

def loopBody171_209 : HolLoopProg 64 :=
.mark loopBody171_208

def loopBody171_210 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody171_211 : HolLoopProg 64 :=
.mark loopBody171_210

def loopBody171_212 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.RegImm.imm 0#64) loopBody171_209 loopBody171_211 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody171_213 : HolLoopProg 64 :=
.mark loopBody171_212

def loopBody171_214 : HolLoopProg 64 :=
.seq loopBody171_213 loopBody171_1

def loopBody171_215 : HolLoopProg 64 :=
.mark loopBody171_214

def loopBody171_216 : HolLoopProg 64 :=
.seq loopBody171_169 loopBody171_215

def loopBody171_217 : HolLoopProg 64 :=
.mark loopBody171_216

def loopBody171_218 : HolLoopProg 64 :=
.seq loopBody171_167 loopBody171_217

def loopBody171_219 : HolLoopProg 64 :=
.mark loopBody171_218

def loopBody171_220 : HolLoopProg 64 :=
.seq loopBody171_161 loopBody171_219

def loopBody171_221 : HolLoopProg 64 :=
.mark loopBody171_220

def loopBody171_222 : HolLoopProg 64 :=
.seq loopBody171_157 loopBody171_221

def loopBody171_223 : HolLoopProg 64 :=
.mark loopBody171_222

def loopBody171_224 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) loopBody171_223 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody171_225 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 11)

def loopBody171_226 : HolLoopProg 64 :=
.mark loopBody171_225

def loopBody171_227 : HolLoopProg 64 :=
.seq loopBody171_226 loopBody171_1

def loopBody171_228 : HolLoopProg 64 :=
.mark loopBody171_227

def loopBody171_229 : HolLoopProg 64 :=
.seq loopBody171_228 loopBody171_1

def loopBody171_230 : HolLoopProg 64 :=
.mark loopBody171_229

def loopBody171_231 : HolLoopProg 64 :=
.seq loopBody171_224 loopBody171_230

def loopBody171_232 : HolLoopProg 64 :=
.seq loopBody171_153 loopBody171_231

def loopBody171_233 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_232

def loopBody171_234 : HolLoopProg 64 :=
.seq loopBody171_159 loopBody171_233

def loopBody171_235 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_234

def loopBody171_236 : HolLoopProg 64 :=
.seq loopBody171_235 loopBody171_207

def loopBody171_237 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.RegImm.imm 0#64) loopBody171_236 loopBody171_211 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody171_238 : HolLoopProg 64 :=
.seq loopBody171_237 loopBody171_1

def loopBody171_239 : HolLoopProg 64 :=
.seq loopBody171_157 loopBody171_238

def loopBody171_240 : HolLoopProg 64 :=
.seq loopBody171_155 loopBody171_239

def loopBody171_241 : HolLoopProg 64 :=
.seq loopBody171_151 loopBody171_240

def loopBody171_242 : HolLoopProg 64 :=
.seq loopBody171_149 loopBody171_241

def loopBody171_243 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) loopBody171_242 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody171_244 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 5)

def loopBody171_245 : HolLoopProg 64 :=
.mark loopBody171_244

def loopBody171_246 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 11)

def loopBody171_247 : HolLoopProg 64 :=
.mark loopBody171_246

def loopBody171_248 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 6)

def loopBody171_249 : HolLoopProg 64 :=
.mark loopBody171_248

def loopBody171_250 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 1#64)

def loopBody171_251 : HolLoopProg 64 :=
.mark loopBody171_250

def loopBody171_252 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 0#64)

def loopBody171_253 : HolLoopProg 64 :=
.mark loopBody171_252

def loopBody171_254 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.less) 13 (Flapjack.RegImm.reg 14) loopBody171_251 loopBody171_253 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody171_255 : HolLoopProg 64 :=
.mark loopBody171_254

def loopBody171_256 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 13)

def loopBody171_257 : HolLoopProg 64 :=
.mark loopBody171_256

def loopBody171_258 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 9)

def loopBody171_259 : HolLoopProg 64 :=
.mark loopBody171_258

def loopBody171_260 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 96#64]),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 11) (Flapjack.HolLoopExp.const 5#64)])

def loopBody171_261 : HolLoopProg 64 :=
.mark loopBody171_260

def loopBody171_262 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 9)

def loopBody171_263 : HolLoopProg 64 :=
.mark loopBody171_262

def loopBody171_264 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 13

def loopBody171_265 : HolLoopProg 64 :=
.mark loopBody171_264

def loopBody171_266 : HolLoopProg 64 :=
.call (some
  ([12],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 154) ([13, 14, 15]) (some (13, loopBody171_265, loopBody171_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody171_267 : HolLoopProg 64 :=
.mark loopBody171_266

def loopBody171_268 : HolLoopProg 64 :=
.seq loopBody171_267 loopBody171_1

def loopBody171_269 : HolLoopProg 64 :=
.mark loopBody171_268

def loopBody171_270 : HolLoopProg 64 :=
.seq loopBody171_263 loopBody171_269

def loopBody171_271 : HolLoopProg 64 :=
.mark loopBody171_270

def loopBody171_272 : HolLoopProg 64 :=
.seq loopBody171_261 loopBody171_271

def loopBody171_273 : HolLoopProg 64 :=
.mark loopBody171_272

def loopBody171_274 : HolLoopProg 64 :=
.seq loopBody171_259 loopBody171_273

def loopBody171_275 : HolLoopProg 64 :=
.mark loopBody171_274

def loopBody171_276 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_275

def loopBody171_277 : HolLoopProg 64 :=
.mark loopBody171_276

def loopBody171_278 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_277

def loopBody171_279 : HolLoopProg 64 :=
.mark loopBody171_278

def loopBody171_280 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 11, Flapjack.HolLoopExp.const 1#64])

def loopBody171_281 : HolLoopProg 64 :=
.mark loopBody171_280

def loopBody171_282 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 12)

def loopBody171_283 : HolLoopProg 64 :=
.mark loopBody171_282

def loopBody171_284 : HolLoopProg 64 :=
.seq loopBody171_283 loopBody171_1

def loopBody171_285 : HolLoopProg 64 :=
.mark loopBody171_284

def loopBody171_286 : HolLoopProg 64 :=
.seq loopBody171_285 loopBody171_1

def loopBody171_287 : HolLoopProg 64 :=
.mark loopBody171_286

def loopBody171_288 : HolLoopProg 64 :=
.seq loopBody171_281 loopBody171_287

def loopBody171_289 : HolLoopProg 64 :=
.mark loopBody171_288

def loopBody171_290 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_289

def loopBody171_291 : HolLoopProg 64 :=
.mark loopBody171_290

def loopBody171_292 : HolLoopProg 64 :=
.seq loopBody171_279 loopBody171_291

def loopBody171_293 : HolLoopProg 64 :=
.mark loopBody171_292

def loopBody171_294 : HolLoopProg 64 :=
.seq loopBody171_293 loopBody171_207

def loopBody171_295 : HolLoopProg 64 :=
.mark loopBody171_294

def loopBody171_296 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 15 (Flapjack.RegImm.imm 0#64) loopBody171_295 loopBody171_211 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody171_297 : HolLoopProg 64 :=
.mark loopBody171_296

def loopBody171_298 : HolLoopProg 64 :=
.seq loopBody171_297 loopBody171_1

def loopBody171_299 : HolLoopProg 64 :=
.mark loopBody171_298

def loopBody171_300 : HolLoopProg 64 :=
.seq loopBody171_257 loopBody171_299

def loopBody171_301 : HolLoopProg 64 :=
.mark loopBody171_300

def loopBody171_302 : HolLoopProg 64 :=
.seq loopBody171_255 loopBody171_301

def loopBody171_303 : HolLoopProg 64 :=
.mark loopBody171_302

def loopBody171_304 : HolLoopProg 64 :=
.seq loopBody171_249 loopBody171_303

def loopBody171_305 : HolLoopProg 64 :=
.mark loopBody171_304

def loopBody171_306 : HolLoopProg 64 :=
.seq loopBody171_247 loopBody171_305

def loopBody171_307 : HolLoopProg 64 :=
.mark loopBody171_306

def loopBody171_308 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) loopBody171_307 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody171_309 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 3)

def loopBody171_310 : HolLoopProg 64 :=
.mark loopBody171_309

def loopBody171_311 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 9)

def loopBody171_312 : HolLoopProg 64 :=
.mark loopBody171_311

def loopBody171_313 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.const 32#64)

def loopBody171_314 : HolLoopProg 64 :=
.mark loopBody171_313

def loopBody171_315 : HolLoopProg 64 :=
.call (some
  ([12],
    Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))) (some 77) ([13, 14, 15]) (some (13, loopBody171_265, loopBody171_1, (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody171_316 : HolLoopProg 64 :=
.mark loopBody171_315

def loopBody171_317 : HolLoopProg 64 :=
.seq loopBody171_316 loopBody171_1

def loopBody171_318 : HolLoopProg 64 :=
.mark loopBody171_317

def loopBody171_319 : HolLoopProg 64 :=
.seq loopBody171_314 loopBody171_318

def loopBody171_320 : HolLoopProg 64 :=
.mark loopBody171_319

def loopBody171_321 : HolLoopProg 64 :=
.seq loopBody171_312 loopBody171_320

def loopBody171_322 : HolLoopProg 64 :=
.mark loopBody171_321

def loopBody171_323 : HolLoopProg 64 :=
.seq loopBody171_310 loopBody171_322

def loopBody171_324 : HolLoopProg 64 :=
.mark loopBody171_323

def loopBody171_325 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_324

def loopBody171_326 : HolLoopProg 64 :=
.mark loopBody171_325

def loopBody171_327 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_326

def loopBody171_328 : HolLoopProg 64 :=
.mark loopBody171_327

def loopBody171_329 : HolLoopProg 64 :=
.seq loopBody171_308 loopBody171_328

def loopBody171_330 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 7)

def loopBody171_331 : HolLoopProg 64 :=
.mark loopBody171_330

def loopBody171_332 : HolLoopProg 64 :=
.call (some ([12], Flapjack.Spt.ln)) (some 70) ([13]) (some (13, loopBody171_265, loopBody171_1, (Flapjack.Spt.ln)))

def loopBody171_333 : HolLoopProg 64 :=
.mark loopBody171_332

def loopBody171_334 : HolLoopProg 64 :=
.seq loopBody171_333 loopBody171_1

def loopBody171_335 : HolLoopProg 64 :=
.mark loopBody171_334

def loopBody171_336 : HolLoopProg 64 :=
.seq loopBody171_331 loopBody171_335

def loopBody171_337 : HolLoopProg 64 :=
.mark loopBody171_336

def loopBody171_338 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_337

def loopBody171_339 : HolLoopProg 64 :=
.mark loopBody171_338

def loopBody171_340 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_339

def loopBody171_341 : HolLoopProg 64 :=
.mark loopBody171_340

def loopBody171_342 : HolLoopProg 64 :=
.seq loopBody171_329 loopBody171_341

def loopBody171_343 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [12]

def loopBody171_344 : HolLoopProg 64 :=
.mark loopBody171_343

def loopBody171_345 : HolLoopProg 64 :=
.seq loopBody171_344 loopBody171_1

def loopBody171_346 : HolLoopProg 64 :=
.mark loopBody171_345

def loopBody171_347 : HolLoopProg 64 :=
.seq loopBody171_153 loopBody171_346

def loopBody171_348 : HolLoopProg 64 :=
.mark loopBody171_347

def loopBody171_349 : HolLoopProg 64 :=
.seq loopBody171_342 loopBody171_348

def loopBody171_350 : HolLoopProg 64 :=
.seq loopBody171_245 loopBody171_349

def loopBody171_351 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_350

def loopBody171_352 : HolLoopProg 64 :=
.seq loopBody171_243 loopBody171_351

def loopBody171_353 : HolLoopProg 64 :=
.seq loopBody171_47 loopBody171_352

def loopBody171_354 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_353

def loopBody171_355 : HolLoopProg 64 :=
.seq loopBody171_147 loopBody171_354

def loopBody171_356 : HolLoopProg 64 :=
.seq loopBody171_107 loopBody171_355

def loopBody171_357 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_356

def loopBody171_358 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_357

def loopBody171_359 : HolLoopProg 64 :=
.seq loopBody171_97 loopBody171_358

def loopBody171_360 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_359

def loopBody171_361 : HolLoopProg 64 :=
.seq loopBody171_95 loopBody171_360

def loopBody171_362 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_361

def loopBody171_363 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_362

def loopBody171_364 : HolLoopProg 64 :=
.seq loopBody171_91 loopBody171_363

def loopBody171_365 : HolLoopProg 64 :=
.seq loopBody171_35 loopBody171_364

def loopBody171_366 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_365

def loopBody171_367 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_366

def loopBody171_368 : HolLoopProg 64 :=
.seq loopBody171_21 loopBody171_367

def loopBody171_369 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_368

def loopBody171_370 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_369

def loopBody171_371 : HolLoopProg 64 :=
.seq loopBody171_11 loopBody171_370

def loopBody171_372 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_371

def loopBody171_373 : HolLoopProg 64 :=
.seq loopBody171_1 loopBody171_372

def output171 : Nat × List Nat × HolLoopProg 64 :=
  (235, [0, 1, 2, 3], loopBody171_373)
end InitECandidate.Proofs.FrontendStages.Loop
