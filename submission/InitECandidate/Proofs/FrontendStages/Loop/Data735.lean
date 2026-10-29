import InitECandidate.Proofs.FrontendStages.Loop.Translate719
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody735_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody735_1 : HolLoopProg 64 :=
.mark loopBody735_0

def loopBody735_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody735_3 : HolLoopProg 64 :=
.mark loopBody735_2

def loopBody735_4 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 69) ([]) (some (8, loopBody735_3, loopBody735_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody735_5 : HolLoopProg 64 :=
.mark loopBody735_4

def loopBody735_6 : HolLoopProg 64 :=
.seq loopBody735_5 loopBody735_1

def loopBody735_7 : HolLoopProg 64 :=
.mark loopBody735_6

def loopBody735_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 144#64)

def loopBody735_9 : HolLoopProg 64 :=
.mark loopBody735_8

def loopBody735_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody735_11 : HolLoopProg 64 :=
.mark loopBody735_10

def loopBody735_12 : HolLoopProg 64 :=
.call (some
  ([8],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 68) ([9]) (some (9, loopBody735_11, loopBody735_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody735_13 : HolLoopProg 64 :=
.mark loopBody735_12

def loopBody735_14 : HolLoopProg 64 :=
.seq loopBody735_13 loopBody735_1

def loopBody735_15 : HolLoopProg 64 :=
.mark loopBody735_14

def loopBody735_16 : HolLoopProg 64 :=
.seq loopBody735_9 loopBody735_15

def loopBody735_17 : HolLoopProg 64 :=
.mark loopBody735_16

def loopBody735_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody735_19 : HolLoopProg 64 :=
.mark loopBody735_18

def loopBody735_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 1)

def loopBody735_21 : HolLoopProg 64 :=
.mark loopBody735_20

def loopBody735_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 2)

def loopBody735_23 : HolLoopProg 64 :=
.mark loopBody735_22

def loopBody735_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 3)

def loopBody735_25 : HolLoopProg 64 :=
.mark loopBody735_24

def loopBody735_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 4)

def loopBody735_27 : HolLoopProg 64 :=
.mark loopBody735_26

def loopBody735_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 5)

def loopBody735_29 : HolLoopProg 64 :=
.mark loopBody735_28

def loopBody735_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 6)

def loopBody735_31 : HolLoopProg 64 :=
.mark loopBody735_30

def loopBody735_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody735_33 : HolLoopProg 64 :=
.mark loopBody735_32

def loopBody735_34 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))) (some 796) ([10, 11, 12, 13, 14, 15, 16]) (some (10, loopBody735_33, loopBody735_1, (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody735_35 : HolLoopProg 64 :=
.mark loopBody735_34

def loopBody735_36 : HolLoopProg 64 :=
.seq loopBody735_35 loopBody735_1

def loopBody735_37 : HolLoopProg 64 :=
.mark loopBody735_36

def loopBody735_38 : HolLoopProg 64 :=
.seq loopBody735_31 loopBody735_37

def loopBody735_39 : HolLoopProg 64 :=
.mark loopBody735_38

def loopBody735_40 : HolLoopProg 64 :=
.seq loopBody735_29 loopBody735_39

def loopBody735_41 : HolLoopProg 64 :=
.mark loopBody735_40

def loopBody735_42 : HolLoopProg 64 :=
.seq loopBody735_27 loopBody735_41

def loopBody735_43 : HolLoopProg 64 :=
.mark loopBody735_42

def loopBody735_44 : HolLoopProg 64 :=
.seq loopBody735_25 loopBody735_43

def loopBody735_45 : HolLoopProg 64 :=
.mark loopBody735_44

def loopBody735_46 : HolLoopProg 64 :=
.seq loopBody735_23 loopBody735_45

def loopBody735_47 : HolLoopProg 64 :=
.mark loopBody735_46

def loopBody735_48 : HolLoopProg 64 :=
.seq loopBody735_21 loopBody735_47

def loopBody735_49 : HolLoopProg 64 :=
.mark loopBody735_48

def loopBody735_50 : HolLoopProg 64 :=
.seq loopBody735_19 loopBody735_49

def loopBody735_51 : HolLoopProg 64 :=
.mark loopBody735_50

def loopBody735_52 : HolLoopProg 64 :=
.seq loopBody735_1 loopBody735_51

def loopBody735_53 : HolLoopProg 64 :=
.mark loopBody735_52

def loopBody735_54 : HolLoopProg 64 :=
.seq loopBody735_1 loopBody735_53

def loopBody735_55 : HolLoopProg 64 :=
.mark loopBody735_54

def loopBody735_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 8)

def loopBody735_57 : HolLoopProg 64 :=
.mark loopBody735_56

def loopBody735_58 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))) (some 798) ([10, 11]) (some (10, loopBody735_33, loopBody735_1, (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody735_59 : HolLoopProg 64 :=
.mark loopBody735_58

def loopBody735_60 : HolLoopProg 64 :=
.seq loopBody735_59 loopBody735_1

def loopBody735_61 : HolLoopProg 64 :=
.mark loopBody735_60

def loopBody735_62 : HolLoopProg 64 :=
.seq loopBody735_57 loopBody735_61

def loopBody735_63 : HolLoopProg 64 :=
.mark loopBody735_62

def loopBody735_64 : HolLoopProg 64 :=
.seq loopBody735_19 loopBody735_63

def loopBody735_65 : HolLoopProg 64 :=
.mark loopBody735_64

def loopBody735_66 : HolLoopProg 64 :=
.seq loopBody735_1 loopBody735_65

def loopBody735_67 : HolLoopProg 64 :=
.mark loopBody735_66

def loopBody735_68 : HolLoopProg 64 :=
.seq loopBody735_1 loopBody735_67

def loopBody735_69 : HolLoopProg 64 :=
.mark loopBody735_68

def loopBody735_70 : HolLoopProg 64 :=
.seq loopBody735_55 loopBody735_69

def loopBody735_71 : HolLoopProg 64 :=
.mark loopBody735_70

def loopBody735_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 0)

def loopBody735_73 : HolLoopProg 64 :=
.mark loopBody735_72

def loopBody735_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 392#64]),
      Flapjack.HolLoopExp.const 1624#64])

def loopBody735_75 : HolLoopProg 64 :=
.mark loopBody735_74

def loopBody735_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 1#64)

def loopBody735_77 : HolLoopProg 64 :=
.mark loopBody735_76

def loopBody735_78 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))) (some 772) ([10, 11, 12, 13]) (some (10, loopBody735_33, loopBody735_1, (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody735_79 : HolLoopProg 64 :=
.mark loopBody735_78

def loopBody735_80 : HolLoopProg 64 :=
.seq loopBody735_79 loopBody735_1

def loopBody735_81 : HolLoopProg 64 :=
.mark loopBody735_80

def loopBody735_82 : HolLoopProg 64 :=
.seq loopBody735_77 loopBody735_81

def loopBody735_83 : HolLoopProg 64 :=
.mark loopBody735_82

def loopBody735_84 : HolLoopProg 64 :=
.seq loopBody735_75 loopBody735_83

def loopBody735_85 : HolLoopProg 64 :=
.mark loopBody735_84

def loopBody735_86 : HolLoopProg 64 :=
.seq loopBody735_57 loopBody735_85

def loopBody735_87 : HolLoopProg 64 :=
.mark loopBody735_86

def loopBody735_88 : HolLoopProg 64 :=
.seq loopBody735_73 loopBody735_87

def loopBody735_89 : HolLoopProg 64 :=
.mark loopBody735_88

def loopBody735_90 : HolLoopProg 64 :=
.seq loopBody735_1 loopBody735_89

def loopBody735_91 : HolLoopProg 64 :=
.mark loopBody735_90

def loopBody735_92 : HolLoopProg 64 :=
.seq loopBody735_1 loopBody735_91

def loopBody735_93 : HolLoopProg 64 :=
.mark loopBody735_92

def loopBody735_94 : HolLoopProg 64 :=
.seq loopBody735_71 loopBody735_93

def loopBody735_95 : HolLoopProg 64 :=
.mark loopBody735_94

def loopBody735_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 7)

def loopBody735_97 : HolLoopProg 64 :=
.mark loopBody735_96

def loopBody735_98 : HolLoopProg 64 :=
.call (some ([9], Flapjack.Spt.ln)) (some 70) ([10]) (some (10, loopBody735_33, loopBody735_1, (Flapjack.Spt.ln)))

def loopBody735_99 : HolLoopProg 64 :=
.mark loopBody735_98

def loopBody735_100 : HolLoopProg 64 :=
.seq loopBody735_99 loopBody735_1

def loopBody735_101 : HolLoopProg 64 :=
.mark loopBody735_100

def loopBody735_102 : HolLoopProg 64 :=
.seq loopBody735_97 loopBody735_101

def loopBody735_103 : HolLoopProg 64 :=
.mark loopBody735_102

def loopBody735_104 : HolLoopProg 64 :=
.seq loopBody735_1 loopBody735_103

def loopBody735_105 : HolLoopProg 64 :=
.mark loopBody735_104

def loopBody735_106 : HolLoopProg 64 :=
.seq loopBody735_1 loopBody735_105

def loopBody735_107 : HolLoopProg 64 :=
.mark loopBody735_106

def loopBody735_108 : HolLoopProg 64 :=
.seq loopBody735_95 loopBody735_107

def loopBody735_109 : HolLoopProg 64 :=
.mark loopBody735_108

def loopBody735_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody735_111 : HolLoopProg 64 :=
.mark loopBody735_110

def loopBody735_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [9]

def loopBody735_113 : HolLoopProg 64 :=
.mark loopBody735_112

def loopBody735_114 : HolLoopProg 64 :=
.seq loopBody735_113 loopBody735_1

def loopBody735_115 : HolLoopProg 64 :=
.mark loopBody735_114

def loopBody735_116 : HolLoopProg 64 :=
.seq loopBody735_111 loopBody735_115

def loopBody735_117 : HolLoopProg 64 :=
.mark loopBody735_116

def loopBody735_118 : HolLoopProg 64 :=
.seq loopBody735_109 loopBody735_117

def loopBody735_119 : HolLoopProg 64 :=
.mark loopBody735_118

def loopBody735_120 : HolLoopProg 64 :=
.seq loopBody735_17 loopBody735_119

def loopBody735_121 : HolLoopProg 64 :=
.mark loopBody735_120

def loopBody735_122 : HolLoopProg 64 :=
.seq loopBody735_1 loopBody735_121

def loopBody735_123 : HolLoopProg 64 :=
.mark loopBody735_122

def loopBody735_124 : HolLoopProg 64 :=
.seq loopBody735_1 loopBody735_123

def loopBody735_125 : HolLoopProg 64 :=
.mark loopBody735_124

def loopBody735_126 : HolLoopProg 64 :=
.seq loopBody735_7 loopBody735_125

def loopBody735_127 : HolLoopProg 64 :=
.mark loopBody735_126

def loopBody735_128 : HolLoopProg 64 :=
.seq loopBody735_1 loopBody735_127

def loopBody735_129 : HolLoopProg 64 :=
.mark loopBody735_128

def loopBody735_130 : HolLoopProg 64 :=
.seq loopBody735_1 loopBody735_129

def loopBody735_131 : HolLoopProg 64 :=
.mark loopBody735_130

def output735 : Nat × List Nat × HolLoopProg 64 :=
  (799, [0, 1, 2, 3, 4, 5, 6], loopBody735_131)
end InitECandidate.Proofs.FrontendStages.Loop
