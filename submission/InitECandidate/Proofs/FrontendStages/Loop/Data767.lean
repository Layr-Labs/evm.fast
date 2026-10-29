import InitECandidate.Proofs.FrontendStages.Loop.Translate751
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody767_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody767_1 : HolLoopProg 64 :=
.mark loopBody767_0

def loopBody767_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 112#64]))

def loopBody767_3 : HolLoopProg 64 :=
.mark loopBody767_2

def loopBody767_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 96#64]))

def loopBody767_5 : HolLoopProg 64 :=
.mark loopBody767_4

def loopBody767_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody767_7 : HolLoopProg 64 :=
.mark loopBody767_6

def loopBody767_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody767_9 : HolLoopProg 64 :=
.mark loopBody767_8

def loopBody767_10 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))) (some 465) ([4]) (some (4, loopBody767_9, loopBody767_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody767_11 : HolLoopProg 64 :=
.mark loopBody767_10

def loopBody767_12 : HolLoopProg 64 :=
.seq loopBody767_11 loopBody767_1

def loopBody767_13 : HolLoopProg 64 :=
.mark loopBody767_12

def loopBody767_14 : HolLoopProg 64 :=
.seq loopBody767_7 loopBody767_13

def loopBody767_15 : HolLoopProg 64 :=
.mark loopBody767_14

def loopBody767_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody767_17 : HolLoopProg 64 :=
.mark loopBody767_16

def loopBody767_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 12#64)

def loopBody767_19 : HolLoopProg 64 :=
.mark loopBody767_18

def loopBody767_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 7 7 5 6)

def loopBody767_21 : HolLoopProg 64 :=
.mark loopBody767_20

def loopBody767_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.const 60#64, Flapjack.HolLoopExp.var 7])

def loopBody767_23 : HolLoopProg 64 :=
.mark loopBody767_22

def loopBody767_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody767_25 : HolLoopProg 64 :=
.mark loopBody767_24

def loopBody767_26 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))) (some 470) ([8]) (some (5, loopBody767_25, loopBody767_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))

def loopBody767_27 : HolLoopProg 64 :=
.mark loopBody767_26

def loopBody767_28 : HolLoopProg 64 :=
.seq loopBody767_27 loopBody767_1

def loopBody767_29 : HolLoopProg 64 :=
.mark loopBody767_28

def loopBody767_30 : HolLoopProg 64 :=
.seq loopBody767_23 loopBody767_29

def loopBody767_31 : HolLoopProg 64 :=
.mark loopBody767_30

def loopBody767_32 : HolLoopProg 64 :=
.seq loopBody767_21 loopBody767_31

def loopBody767_33 : HolLoopProg 64 :=
.mark loopBody767_32

def loopBody767_34 : HolLoopProg 64 :=
.seq loopBody767_19 loopBody767_33

def loopBody767_35 : HolLoopProg 64 :=
.mark loopBody767_34

def loopBody767_36 : HolLoopProg 64 :=
.seq loopBody767_17 loopBody767_35

def loopBody767_37 : HolLoopProg 64 :=
.mark loopBody767_36

def loopBody767_38 : HolLoopProg 64 :=
.seq loopBody767_1 loopBody767_37

def loopBody767_39 : HolLoopProg 64 :=
.mark loopBody767_38

def loopBody767_40 : HolLoopProg 64 :=
.seq loopBody767_1 loopBody767_39

def loopBody767_41 : HolLoopProg 64 :=
.mark loopBody767_40

def loopBody767_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 32#64)

def loopBody767_43 : HolLoopProg 64 :=
.mark loopBody767_42

def loopBody767_44 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))) (some 68) ([5]) (some (5, loopBody767_25, loopBody767_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))))

def loopBody767_45 : HolLoopProg 64 :=
.mark loopBody767_44

def loopBody767_46 : HolLoopProg 64 :=
.seq loopBody767_45 loopBody767_1

def loopBody767_47 : HolLoopProg 64 :=
.mark loopBody767_46

def loopBody767_48 : HolLoopProg 64 :=
.seq loopBody767_43 loopBody767_47

def loopBody767_49 : HolLoopProg 64 :=
.mark loopBody767_48

def loopBody767_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 88#64]))

def loopBody767_51 : HolLoopProg 64 :=
.mark loopBody767_50

def loopBody767_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody767_53 : HolLoopProg 64 :=
.mark loopBody767_52

def loopBody767_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 4)

def loopBody767_55 : HolLoopProg 64 :=
.mark loopBody767_54

def loopBody767_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody767_57 : HolLoopProg 64 :=
.mark loopBody767_56

def loopBody767_58 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)) (some 153) ([6, 7, 8]) (some (6, loopBody767_57, loopBody767_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))

def loopBody767_59 : HolLoopProg 64 :=
.mark loopBody767_58

def loopBody767_60 : HolLoopProg 64 :=
.seq loopBody767_59 loopBody767_1

def loopBody767_61 : HolLoopProg 64 :=
.mark loopBody767_60

def loopBody767_62 : HolLoopProg 64 :=
.seq loopBody767_55 loopBody767_61

def loopBody767_63 : HolLoopProg 64 :=
.mark loopBody767_62

def loopBody767_64 : HolLoopProg 64 :=
.seq loopBody767_53 loopBody767_63

def loopBody767_65 : HolLoopProg 64 :=
.mark loopBody767_64

def loopBody767_66 : HolLoopProg 64 :=
.seq loopBody767_51 loopBody767_65

def loopBody767_67 : HolLoopProg 64 :=
.mark loopBody767_66

def loopBody767_68 : HolLoopProg 64 :=
.seq loopBody767_1 loopBody767_67

def loopBody767_69 : HolLoopProg 64 :=
.mark loopBody767_68

def loopBody767_70 : HolLoopProg 64 :=
.seq loopBody767_1 loopBody767_69

def loopBody767_71 : HolLoopProg 64 :=
.mark loopBody767_70

def loopBody767_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 120#64])

def loopBody767_73 : HolLoopProg 64 :=
.mark loopBody767_72

def loopBody767_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody767_75 : HolLoopProg 64 :=
.mark loopBody767_74

def loopBody767_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 6)

def loopBody767_77 : HolLoopProg 64 :=
.mark loopBody767_76

def loopBody767_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 5) 7

def loopBody767_79 : HolLoopProg 64 :=
.mark loopBody767_78

def loopBody767_80 : HolLoopProg 64 :=
.seq loopBody767_79 loopBody767_1

def loopBody767_81 : HolLoopProg 64 :=
.mark loopBody767_80

def loopBody767_82 : HolLoopProg 64 :=
.seq loopBody767_77 loopBody767_81

def loopBody767_83 : HolLoopProg 64 :=
.mark loopBody767_82

def loopBody767_84 : HolLoopProg 64 :=
.seq loopBody767_83 loopBody767_1

def loopBody767_85 : HolLoopProg 64 :=
.mark loopBody767_84

def loopBody767_86 : HolLoopProg 64 :=
.seq loopBody767_75 loopBody767_85

def loopBody767_87 : HolLoopProg 64 :=
.mark loopBody767_86

def loopBody767_88 : HolLoopProg 64 :=
.seq loopBody767_1 loopBody767_87

def loopBody767_89 : HolLoopProg 64 :=
.mark loopBody767_88

def loopBody767_90 : HolLoopProg 64 :=
.seq loopBody767_73 loopBody767_89

def loopBody767_91 : HolLoopProg 64 :=
.mark loopBody767_90

def loopBody767_92 : HolLoopProg 64 :=
.seq loopBody767_1 loopBody767_91

def loopBody767_93 : HolLoopProg 64 :=
.mark loopBody767_92

def loopBody767_94 : HolLoopProg 64 :=
.seq loopBody767_71 loopBody767_93

def loopBody767_95 : HolLoopProg 64 :=
.mark loopBody767_94

def loopBody767_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 128#64])

def loopBody767_97 : HolLoopProg 64 :=
.mark loopBody767_96

def loopBody767_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 32#64)

def loopBody767_99 : HolLoopProg 64 :=
.mark loopBody767_98

def loopBody767_100 : HolLoopProg 64 :=
.seq loopBody767_99 loopBody767_85

def loopBody767_101 : HolLoopProg 64 :=
.mark loopBody767_100

def loopBody767_102 : HolLoopProg 64 :=
.seq loopBody767_1 loopBody767_101

def loopBody767_103 : HolLoopProg 64 :=
.mark loopBody767_102

def loopBody767_104 : HolLoopProg 64 :=
.seq loopBody767_97 loopBody767_103

def loopBody767_105 : HolLoopProg 64 :=
.mark loopBody767_104

def loopBody767_106 : HolLoopProg 64 :=
.seq loopBody767_1 loopBody767_105

def loopBody767_107 : HolLoopProg 64 :=
.mark loopBody767_106

def loopBody767_108 : HolLoopProg 64 :=
.seq loopBody767_95 loopBody767_107

def loopBody767_109 : HolLoopProg 64 :=
.mark loopBody767_108

def loopBody767_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody767_111 : HolLoopProg 64 :=
.mark loopBody767_110

def loopBody767_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody767_113 : HolLoopProg 64 :=
.mark loopBody767_112

def loopBody767_114 : HolLoopProg 64 :=
.seq loopBody767_113 loopBody767_1

def loopBody767_115 : HolLoopProg 64 :=
.mark loopBody767_114

def loopBody767_116 : HolLoopProg 64 :=
.seq loopBody767_111 loopBody767_115

def loopBody767_117 : HolLoopProg 64 :=
.mark loopBody767_116

def loopBody767_118 : HolLoopProg 64 :=
.seq loopBody767_109 loopBody767_117

def loopBody767_119 : HolLoopProg 64 :=
.mark loopBody767_118

def loopBody767_120 : HolLoopProg 64 :=
.seq loopBody767_49 loopBody767_119

def loopBody767_121 : HolLoopProg 64 :=
.mark loopBody767_120

def loopBody767_122 : HolLoopProg 64 :=
.seq loopBody767_1 loopBody767_121

def loopBody767_123 : HolLoopProg 64 :=
.mark loopBody767_122

def loopBody767_124 : HolLoopProg 64 :=
.seq loopBody767_1 loopBody767_123

def loopBody767_125 : HolLoopProg 64 :=
.mark loopBody767_124

def loopBody767_126 : HolLoopProg 64 :=
.seq loopBody767_41 loopBody767_125

def loopBody767_127 : HolLoopProg 64 :=
.mark loopBody767_126

def loopBody767_128 : HolLoopProg 64 :=
.seq loopBody767_15 loopBody767_127

def loopBody767_129 : HolLoopProg 64 :=
.mark loopBody767_128

def loopBody767_130 : HolLoopProg 64 :=
.seq loopBody767_1 loopBody767_129

def loopBody767_131 : HolLoopProg 64 :=
.mark loopBody767_130

def loopBody767_132 : HolLoopProg 64 :=
.seq loopBody767_1 loopBody767_131

def loopBody767_133 : HolLoopProg 64 :=
.mark loopBody767_132

def loopBody767_134 : HolLoopProg 64 :=
.seq loopBody767_5 loopBody767_133

def loopBody767_135 : HolLoopProg 64 :=
.mark loopBody767_134

def loopBody767_136 : HolLoopProg 64 :=
.seq loopBody767_1 loopBody767_135

def loopBody767_137 : HolLoopProg 64 :=
.mark loopBody767_136

def loopBody767_138 : HolLoopProg 64 :=
.seq loopBody767_3 loopBody767_137

def loopBody767_139 : HolLoopProg 64 :=
.mark loopBody767_138

def loopBody767_140 : HolLoopProg 64 :=
.seq loopBody767_1 loopBody767_139

def loopBody767_141 : HolLoopProg 64 :=
.mark loopBody767_140

def output767 : Nat × List Nat × HolLoopProg 64 :=
  (831, [], loopBody767_141)
end InitECandidate.Proofs.FrontendStages.Loop
