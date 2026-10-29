import InitECandidate.Proofs.FrontendStages.Loop.Translate525
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody541_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody541_1 : HolLoopProg 64 :=
.mark loopBody541_0

def loopBody541_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 112#64]))

def loopBody541_3 : HolLoopProg 64 :=
.mark loopBody541_2

def loopBody541_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 8#64]))

def loopBody541_5 : HolLoopProg 64 :=
.mark loopBody541_4

def loopBody541_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 152#64]))

def loopBody541_7 : HolLoopProg 64 :=
.mark loopBody541_6

def loopBody541_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody541_9 : HolLoopProg 64 :=
.mark loopBody541_8

def loopBody541_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody541_11 : HolLoopProg 64 :=
.mark loopBody541_10

def loopBody541_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody541_13 : HolLoopProg 64 :=
.mark loopBody541_12

def loopBody541_14 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.reg 5) loopBody541_11 loopBody541_13 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))

def loopBody541_15 : HolLoopProg 64 :=
.mark loopBody541_14

def loopBody541_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody541_17 : HolLoopProg 64 :=
.mark loopBody541_16

def loopBody541_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody541_19 : HolLoopProg 64 :=
.mark loopBody541_18

def loopBody541_20 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 593) ([]) (some (4, loopBody541_19, loopBody541_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody541_21 : HolLoopProg 64 :=
.mark loopBody541_20

def loopBody541_22 : HolLoopProg 64 :=
.seq loopBody541_21 loopBody541_1

def loopBody541_23 : HolLoopProg 64 :=
.mark loopBody541_22

def loopBody541_24 : HolLoopProg 64 :=
.seq loopBody541_1 loopBody541_23

def loopBody541_25 : HolLoopProg 64 :=
.mark loopBody541_24

def loopBody541_26 : HolLoopProg 64 :=
.seq loopBody541_1 loopBody541_25

def loopBody541_27 : HolLoopProg 64 :=
.mark loopBody541_26

def loopBody541_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]))

def loopBody541_29 : HolLoopProg 64 :=
.mark loopBody541_28

def loopBody541_30 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 473) ([4]) (some (4, loopBody541_19, loopBody541_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody541_31 : HolLoopProg 64 :=
.mark loopBody541_30

def loopBody541_32 : HolLoopProg 64 :=
.seq loopBody541_31 loopBody541_1

def loopBody541_33 : HolLoopProg 64 :=
.mark loopBody541_32

def loopBody541_34 : HolLoopProg 64 :=
.seq loopBody541_29 loopBody541_33

def loopBody541_35 : HolLoopProg 64 :=
.mark loopBody541_34

def loopBody541_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 200#64])

def loopBody541_37 : HolLoopProg 64 :=
.mark loopBody541_36

def loopBody541_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody541_39 : HolLoopProg 64 :=
.mark loopBody541_38

def loopBody541_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 5)

def loopBody541_41 : HolLoopProg 64 :=
.mark loopBody541_40

def loopBody541_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 4) 6

def loopBody541_43 : HolLoopProg 64 :=
.mark loopBody541_42

def loopBody541_44 : HolLoopProg 64 :=
.seq loopBody541_43 loopBody541_1

def loopBody541_45 : HolLoopProg 64 :=
.mark loopBody541_44

def loopBody541_46 : HolLoopProg 64 :=
.seq loopBody541_41 loopBody541_45

def loopBody541_47 : HolLoopProg 64 :=
.mark loopBody541_46

def loopBody541_48 : HolLoopProg 64 :=
.seq loopBody541_47 loopBody541_1

def loopBody541_49 : HolLoopProg 64 :=
.mark loopBody541_48

def loopBody541_50 : HolLoopProg 64 :=
.seq loopBody541_39 loopBody541_49

def loopBody541_51 : HolLoopProg 64 :=
.mark loopBody541_50

def loopBody541_52 : HolLoopProg 64 :=
.seq loopBody541_1 loopBody541_51

def loopBody541_53 : HolLoopProg 64 :=
.mark loopBody541_52

def loopBody541_54 : HolLoopProg 64 :=
.seq loopBody541_37 loopBody541_53

def loopBody541_55 : HolLoopProg 64 :=
.mark loopBody541_54

def loopBody541_56 : HolLoopProg 64 :=
.seq loopBody541_1 loopBody541_55

def loopBody541_57 : HolLoopProg 64 :=
.mark loopBody541_56

def loopBody541_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 48#64])

def loopBody541_59 : HolLoopProg 64 :=
.mark loopBody541_58

def loopBody541_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 72#64]))

def loopBody541_61 : HolLoopProg 64 :=
.mark loopBody541_60

def loopBody541_62 : HolLoopProg 64 :=
.seq loopBody541_61 loopBody541_49

def loopBody541_63 : HolLoopProg 64 :=
.mark loopBody541_62

def loopBody541_64 : HolLoopProg 64 :=
.seq loopBody541_1 loopBody541_63

def loopBody541_65 : HolLoopProg 64 :=
.mark loopBody541_64

def loopBody541_66 : HolLoopProg 64 :=
.seq loopBody541_59 loopBody541_65

def loopBody541_67 : HolLoopProg 64 :=
.mark loopBody541_66

def loopBody541_68 : HolLoopProg 64 :=
.seq loopBody541_1 loopBody541_67

def loopBody541_69 : HolLoopProg 64 :=
.mark loopBody541_68

def loopBody541_70 : HolLoopProg 64 :=
.seq loopBody541_57 loopBody541_69

def loopBody541_71 : HolLoopProg 64 :=
.mark loopBody541_70

def loopBody541_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 192#64])

def loopBody541_73 : HolLoopProg 64 :=
.mark loopBody541_72

def loopBody541_74 : HolLoopProg 64 :=
.seq loopBody541_9 loopBody541_49

def loopBody541_75 : HolLoopProg 64 :=
.mark loopBody541_74

def loopBody541_76 : HolLoopProg 64 :=
.seq loopBody541_1 loopBody541_75

def loopBody541_77 : HolLoopProg 64 :=
.mark loopBody541_76

def loopBody541_78 : HolLoopProg 64 :=
.seq loopBody541_73 loopBody541_77

def loopBody541_79 : HolLoopProg 64 :=
.mark loopBody541_78

def loopBody541_80 : HolLoopProg 64 :=
.seq loopBody541_1 loopBody541_79

def loopBody541_81 : HolLoopProg 64 :=
.mark loopBody541_80

def loopBody541_82 : HolLoopProg 64 :=
.seq loopBody541_71 loopBody541_81

def loopBody541_83 : HolLoopProg 64 :=
.mark loopBody541_82

def loopBody541_84 : HolLoopProg 64 :=
.seq loopBody541_35 loopBody541_83

def loopBody541_85 : HolLoopProg 64 :=
.mark loopBody541_84

def loopBody541_86 : HolLoopProg 64 :=
.seq loopBody541_1 loopBody541_85

def loopBody541_87 : HolLoopProg 64 :=
.mark loopBody541_86

def loopBody541_88 : HolLoopProg 64 :=
.seq loopBody541_1 loopBody541_87

def loopBody541_89 : HolLoopProg 64 :=
.mark loopBody541_88

def loopBody541_90 : HolLoopProg 64 :=
.seq loopBody541_27 loopBody541_89

def loopBody541_91 : HolLoopProg 64 :=
.mark loopBody541_90

def loopBody541_92 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody541_91 loopBody541_1 (Flapjack.Spt.ln)

def loopBody541_93 : HolLoopProg 64 :=
.mark loopBody541_92

def loopBody541_94 : HolLoopProg 64 :=
.seq loopBody541_93 loopBody541_1

def loopBody541_95 : HolLoopProg 64 :=
.mark loopBody541_94

def loopBody541_96 : HolLoopProg 64 :=
.seq loopBody541_17 loopBody541_95

def loopBody541_97 : HolLoopProg 64 :=
.mark loopBody541_96

def loopBody541_98 : HolLoopProg 64 :=
.seq loopBody541_15 loopBody541_97

def loopBody541_99 : HolLoopProg 64 :=
.mark loopBody541_98

def loopBody541_100 : HolLoopProg 64 :=
.seq loopBody541_9 loopBody541_99

def loopBody541_101 : HolLoopProg 64 :=
.mark loopBody541_100

def loopBody541_102 : HolLoopProg 64 :=
.seq loopBody541_7 loopBody541_101

def loopBody541_103 : HolLoopProg 64 :=
.mark loopBody541_102

def loopBody541_104 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.ln)) (some 594) ([]) (some (4, loopBody541_19, loopBody541_1, (Flapjack.Spt.ln)))

def loopBody541_105 : HolLoopProg 64 :=
.mark loopBody541_104

def loopBody541_106 : HolLoopProg 64 :=
.seq loopBody541_105 loopBody541_1

def loopBody541_107 : HolLoopProg 64 :=
.mark loopBody541_106

def loopBody541_108 : HolLoopProg 64 :=
.seq loopBody541_1 loopBody541_107

def loopBody541_109 : HolLoopProg 64 :=
.mark loopBody541_108

def loopBody541_110 : HolLoopProg 64 :=
.seq loopBody541_1 loopBody541_109

def loopBody541_111 : HolLoopProg 64 :=
.mark loopBody541_110

def loopBody541_112 : HolLoopProg 64 :=
.seq loopBody541_103 loopBody541_111

def loopBody541_113 : HolLoopProg 64 :=
.mark loopBody541_112

def loopBody541_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody541_115 : HolLoopProg 64 :=
.mark loopBody541_114

def loopBody541_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody541_117 : HolLoopProg 64 :=
.mark loopBody541_116

def loopBody541_118 : HolLoopProg 64 :=
.seq loopBody541_117 loopBody541_1

def loopBody541_119 : HolLoopProg 64 :=
.mark loopBody541_118

def loopBody541_120 : HolLoopProg 64 :=
.seq loopBody541_115 loopBody541_119

def loopBody541_121 : HolLoopProg 64 :=
.mark loopBody541_120

def loopBody541_122 : HolLoopProg 64 :=
.seq loopBody541_113 loopBody541_121

def loopBody541_123 : HolLoopProg 64 :=
.mark loopBody541_122

def loopBody541_124 : HolLoopProg 64 :=
.seq loopBody541_5 loopBody541_123

def loopBody541_125 : HolLoopProg 64 :=
.mark loopBody541_124

def loopBody541_126 : HolLoopProg 64 :=
.seq loopBody541_1 loopBody541_125

def loopBody541_127 : HolLoopProg 64 :=
.mark loopBody541_126

def loopBody541_128 : HolLoopProg 64 :=
.seq loopBody541_3 loopBody541_127

def loopBody541_129 : HolLoopProg 64 :=
.mark loopBody541_128

def loopBody541_130 : HolLoopProg 64 :=
.seq loopBody541_1 loopBody541_129

def loopBody541_131 : HolLoopProg 64 :=
.mark loopBody541_130

def output541 : Nat × List Nat × HolLoopProg 64 :=
  (605, [], loopBody541_131)
end InitECandidate.Proofs.FrontendStages.Loop
