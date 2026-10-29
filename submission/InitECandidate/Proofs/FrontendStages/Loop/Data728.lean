import InitECandidate.Proofs.FrontendStages.Loop.Translate712
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody728_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody728_1 : HolLoopProg 64 :=
.mark loopBody728_0

def loopBody728_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 15

def loopBody728_3 : HolLoopProg 64 :=
.mark loopBody728_2

def loopBody728_4 : HolLoopProg 64 :=
.call (some
  ([14],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 69) ([]) (some (15, loopBody728_3, loopBody728_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody728_5 : HolLoopProg 64 :=
.mark loopBody728_4

def loopBody728_6 : HolLoopProg 64 :=
.seq loopBody728_5 loopBody728_1

def loopBody728_7 : HolLoopProg 64 :=
.mark loopBody728_6

def loopBody728_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.const 576#64)

def loopBody728_9 : HolLoopProg 64 :=
.mark loopBody728_8

def loopBody728_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 16

def loopBody728_11 : HolLoopProg 64 :=
.mark loopBody728_10

def loopBody728_12 : HolLoopProg 64 :=
.call (some
  ([15],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 68) ([16]) (some (16, loopBody728_11, loopBody728_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))

def loopBody728_13 : HolLoopProg 64 :=
.mark loopBody728_12

def loopBody728_14 : HolLoopProg 64 :=
.seq loopBody728_13 loopBody728_1

def loopBody728_15 : HolLoopProg 64 :=
.mark loopBody728_14

def loopBody728_16 : HolLoopProg 64 :=
.seq loopBody728_9 loopBody728_15

def loopBody728_17 : HolLoopProg 64 :=
.mark loopBody728_16

def loopBody728_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 15)

def loopBody728_19 : HolLoopProg 64 :=
.mark loopBody728_18

def loopBody728_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.const 576#64)

def loopBody728_21 : HolLoopProg 64 :=
.mark loopBody728_20

def loopBody728_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 17

def loopBody728_23 : HolLoopProg 64 :=
.mark loopBody728_22

def loopBody728_24 : HolLoopProg 64 :=
.call (some
  ([16],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))) (some 78) ([17, 18]) (some (17, loopBody728_23, loopBody728_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))

def loopBody728_25 : HolLoopProg 64 :=
.mark loopBody728_24

def loopBody728_26 : HolLoopProg 64 :=
.seq loopBody728_25 loopBody728_1

def loopBody728_27 : HolLoopProg 64 :=
.mark loopBody728_26

def loopBody728_28 : HolLoopProg 64 :=
.seq loopBody728_21 loopBody728_27

def loopBody728_29 : HolLoopProg 64 :=
.mark loopBody728_28

def loopBody728_30 : HolLoopProg 64 :=
.seq loopBody728_19 loopBody728_29

def loopBody728_31 : HolLoopProg 64 :=
.mark loopBody728_30

def loopBody728_32 : HolLoopProg 64 :=
.seq loopBody728_1 loopBody728_31

def loopBody728_33 : HolLoopProg 64 :=
.mark loopBody728_32

def loopBody728_34 : HolLoopProg 64 :=
.seq loopBody728_1 loopBody728_33

def loopBody728_35 : HolLoopProg 64 :=
.mark loopBody728_34

def loopBody728_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 192#64])

def loopBody728_37 : HolLoopProg 64 :=
.mark loopBody728_36

def loopBody728_38 : HolLoopProg 64 :=
.call (some
  ([16],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))) (some 729) ([17, 18]) (some (17, loopBody728_23, loopBody728_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))

def loopBody728_39 : HolLoopProg 64 :=
.mark loopBody728_38

def loopBody728_40 : HolLoopProg 64 :=
.seq loopBody728_39 loopBody728_1

def loopBody728_41 : HolLoopProg 64 :=
.mark loopBody728_40

def loopBody728_42 : HolLoopProg 64 :=
.seq loopBody728_37 loopBody728_41

def loopBody728_43 : HolLoopProg 64 :=
.mark loopBody728_42

def loopBody728_44 : HolLoopProg 64 :=
.seq loopBody728_19 loopBody728_43

def loopBody728_45 : HolLoopProg 64 :=
.mark loopBody728_44

def loopBody728_46 : HolLoopProg 64 :=
.seq loopBody728_1 loopBody728_45

def loopBody728_47 : HolLoopProg 64 :=
.mark loopBody728_46

def loopBody728_48 : HolLoopProg 64 :=
.seq loopBody728_1 loopBody728_47

def loopBody728_49 : HolLoopProg 64 :=
.mark loopBody728_48

def loopBody728_50 : HolLoopProg 64 :=
.seq loopBody728_35 loopBody728_49

def loopBody728_51 : HolLoopProg 64 :=
.mark loopBody728_50

def loopBody728_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 15, Flapjack.HolLoopExp.const 96#64])

def loopBody728_53 : HolLoopProg 64 :=
.mark loopBody728_52

def loopBody728_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 96#64])

def loopBody728_55 : HolLoopProg 64 :=
.mark loopBody728_54

def loopBody728_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 2)

def loopBody728_57 : HolLoopProg 64 :=
.mark loopBody728_56

def loopBody728_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 3)

def loopBody728_59 : HolLoopProg 64 :=
.mark loopBody728_58

def loopBody728_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.var 4)

def loopBody728_61 : HolLoopProg 64 :=
.mark loopBody728_60

def loopBody728_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 22 (Flapjack.HolLoopExp.var 5)

def loopBody728_63 : HolLoopProg 64 :=
.mark loopBody728_62

def loopBody728_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 23 (Flapjack.HolLoopExp.var 6)

def loopBody728_65 : HolLoopProg 64 :=
.mark loopBody728_64

def loopBody728_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 24 (Flapjack.HolLoopExp.var 7)

def loopBody728_67 : HolLoopProg 64 :=
.mark loopBody728_66

def loopBody728_68 : HolLoopProg 64 :=
.call (some
  ([16],
    Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))) (some 742) ([17, 18, 19, 20, 21, 22, 23, 24]) (some (17, loopBody728_23, loopBody728_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))

def loopBody728_69 : HolLoopProg 64 :=
.mark loopBody728_68

def loopBody728_70 : HolLoopProg 64 :=
.seq loopBody728_69 loopBody728_1

def loopBody728_71 : HolLoopProg 64 :=
.mark loopBody728_70

def loopBody728_72 : HolLoopProg 64 :=
.seq loopBody728_67 loopBody728_71

def loopBody728_73 : HolLoopProg 64 :=
.mark loopBody728_72

def loopBody728_74 : HolLoopProg 64 :=
.seq loopBody728_65 loopBody728_73

def loopBody728_75 : HolLoopProg 64 :=
.mark loopBody728_74

def loopBody728_76 : HolLoopProg 64 :=
.seq loopBody728_63 loopBody728_75

def loopBody728_77 : HolLoopProg 64 :=
.mark loopBody728_76

def loopBody728_78 : HolLoopProg 64 :=
.seq loopBody728_61 loopBody728_77

def loopBody728_79 : HolLoopProg 64 :=
.mark loopBody728_78

def loopBody728_80 : HolLoopProg 64 :=
.seq loopBody728_59 loopBody728_79

def loopBody728_81 : HolLoopProg 64 :=
.mark loopBody728_80

def loopBody728_82 : HolLoopProg 64 :=
.seq loopBody728_57 loopBody728_81

def loopBody728_83 : HolLoopProg 64 :=
.mark loopBody728_82

def loopBody728_84 : HolLoopProg 64 :=
.seq loopBody728_55 loopBody728_83

def loopBody728_85 : HolLoopProg 64 :=
.mark loopBody728_84

def loopBody728_86 : HolLoopProg 64 :=
.seq loopBody728_53 loopBody728_85

def loopBody728_87 : HolLoopProg 64 :=
.mark loopBody728_86

def loopBody728_88 : HolLoopProg 64 :=
.seq loopBody728_1 loopBody728_87

def loopBody728_89 : HolLoopProg 64 :=
.mark loopBody728_88

def loopBody728_90 : HolLoopProg 64 :=
.seq loopBody728_1 loopBody728_89

def loopBody728_91 : HolLoopProg 64 :=
.mark loopBody728_90

def loopBody728_92 : HolLoopProg 64 :=
.seq loopBody728_51 loopBody728_91

def loopBody728_93 : HolLoopProg 64 :=
.mark loopBody728_92

def loopBody728_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 15, Flapjack.HolLoopExp.const 384#64])

def loopBody728_95 : HolLoopProg 64 :=
.mark loopBody728_94

def loopBody728_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 1)

def loopBody728_97 : HolLoopProg 64 :=
.mark loopBody728_96

def loopBody728_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 8)

def loopBody728_99 : HolLoopProg 64 :=
.mark loopBody728_98

def loopBody728_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 9)

def loopBody728_101 : HolLoopProg 64 :=
.mark loopBody728_100

def loopBody728_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.var 10)

def loopBody728_103 : HolLoopProg 64 :=
.mark loopBody728_102

def loopBody728_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 22 (Flapjack.HolLoopExp.var 11)

def loopBody728_105 : HolLoopProg 64 :=
.mark loopBody728_104

def loopBody728_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 23 (Flapjack.HolLoopExp.var 12)

def loopBody728_107 : HolLoopProg 64 :=
.mark loopBody728_106

def loopBody728_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 24 (Flapjack.HolLoopExp.var 13)

def loopBody728_109 : HolLoopProg 64 :=
.mark loopBody728_108

def loopBody728_110 : HolLoopProg 64 :=
.call (some
  ([16],
    Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))) (some 742) ([17, 18, 19, 20, 21, 22, 23, 24]) (some (17, loopBody728_23, loopBody728_1, (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
  PUnit.unit
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))

def loopBody728_111 : HolLoopProg 64 :=
.mark loopBody728_110

def loopBody728_112 : HolLoopProg 64 :=
.seq loopBody728_111 loopBody728_1

def loopBody728_113 : HolLoopProg 64 :=
.mark loopBody728_112

def loopBody728_114 : HolLoopProg 64 :=
.seq loopBody728_109 loopBody728_113

def loopBody728_115 : HolLoopProg 64 :=
.mark loopBody728_114

def loopBody728_116 : HolLoopProg 64 :=
.seq loopBody728_107 loopBody728_115

def loopBody728_117 : HolLoopProg 64 :=
.mark loopBody728_116

def loopBody728_118 : HolLoopProg 64 :=
.seq loopBody728_105 loopBody728_117

def loopBody728_119 : HolLoopProg 64 :=
.mark loopBody728_118

def loopBody728_120 : HolLoopProg 64 :=
.seq loopBody728_103 loopBody728_119

def loopBody728_121 : HolLoopProg 64 :=
.mark loopBody728_120

def loopBody728_122 : HolLoopProg 64 :=
.seq loopBody728_101 loopBody728_121

def loopBody728_123 : HolLoopProg 64 :=
.mark loopBody728_122

def loopBody728_124 : HolLoopProg 64 :=
.seq loopBody728_99 loopBody728_123

def loopBody728_125 : HolLoopProg 64 :=
.mark loopBody728_124

def loopBody728_126 : HolLoopProg 64 :=
.seq loopBody728_97 loopBody728_125

def loopBody728_127 : HolLoopProg 64 :=
.mark loopBody728_126

def loopBody728_128 : HolLoopProg 64 :=
.seq loopBody728_95 loopBody728_127

def loopBody728_129 : HolLoopProg 64 :=
.mark loopBody728_128

def loopBody728_130 : HolLoopProg 64 :=
.seq loopBody728_1 loopBody728_129

def loopBody728_131 : HolLoopProg 64 :=
.mark loopBody728_130

def loopBody728_132 : HolLoopProg 64 :=
.seq loopBody728_1 loopBody728_131

def loopBody728_133 : HolLoopProg 64 :=
.mark loopBody728_132

def loopBody728_134 : HolLoopProg 64 :=
.seq loopBody728_93 loopBody728_133

def loopBody728_135 : HolLoopProg 64 :=
.mark loopBody728_134

def loopBody728_136 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 0)

def loopBody728_137 : HolLoopProg 64 :=
.mark loopBody728_136

def loopBody728_138 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 0)

def loopBody728_139 : HolLoopProg 64 :=
.mark loopBody728_138

def loopBody728_140 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 15)

def loopBody728_141 : HolLoopProg 64 :=
.mark loopBody728_140

def loopBody728_142 : HolLoopProg 64 :=
.call (some
  ([16],
    Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      Flapjack.Spt.ln)) (some 758) ([17, 18, 19]) (some (17, loopBody728_23, loopBody728_1, (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
  Flapjack.Spt.ln)))

def loopBody728_143 : HolLoopProg 64 :=
.mark loopBody728_142

def loopBody728_144 : HolLoopProg 64 :=
.seq loopBody728_143 loopBody728_1

def loopBody728_145 : HolLoopProg 64 :=
.mark loopBody728_144

def loopBody728_146 : HolLoopProg 64 :=
.seq loopBody728_141 loopBody728_145

def loopBody728_147 : HolLoopProg 64 :=
.mark loopBody728_146

def loopBody728_148 : HolLoopProg 64 :=
.seq loopBody728_139 loopBody728_147

def loopBody728_149 : HolLoopProg 64 :=
.mark loopBody728_148

def loopBody728_150 : HolLoopProg 64 :=
.seq loopBody728_137 loopBody728_149

def loopBody728_151 : HolLoopProg 64 :=
.mark loopBody728_150

def loopBody728_152 : HolLoopProg 64 :=
.seq loopBody728_1 loopBody728_151

def loopBody728_153 : HolLoopProg 64 :=
.mark loopBody728_152

def loopBody728_154 : HolLoopProg 64 :=
.seq loopBody728_1 loopBody728_153

def loopBody728_155 : HolLoopProg 64 :=
.mark loopBody728_154

def loopBody728_156 : HolLoopProg 64 :=
.seq loopBody728_135 loopBody728_155

def loopBody728_157 : HolLoopProg 64 :=
.mark loopBody728_156

def loopBody728_158 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 14)

def loopBody728_159 : HolLoopProg 64 :=
.mark loopBody728_158

def loopBody728_160 : HolLoopProg 64 :=
.call (some ([16], Flapjack.Spt.ln)) (some 70) ([17]) (some (17, loopBody728_23, loopBody728_1, (Flapjack.Spt.ln)))

def loopBody728_161 : HolLoopProg 64 :=
.mark loopBody728_160

def loopBody728_162 : HolLoopProg 64 :=
.seq loopBody728_161 loopBody728_1

def loopBody728_163 : HolLoopProg 64 :=
.mark loopBody728_162

def loopBody728_164 : HolLoopProg 64 :=
.seq loopBody728_159 loopBody728_163

def loopBody728_165 : HolLoopProg 64 :=
.mark loopBody728_164

def loopBody728_166 : HolLoopProg 64 :=
.seq loopBody728_1 loopBody728_165

def loopBody728_167 : HolLoopProg 64 :=
.mark loopBody728_166

def loopBody728_168 : HolLoopProg 64 :=
.seq loopBody728_1 loopBody728_167

def loopBody728_169 : HolLoopProg 64 :=
.mark loopBody728_168

def loopBody728_170 : HolLoopProg 64 :=
.seq loopBody728_157 loopBody728_169

def loopBody728_171 : HolLoopProg 64 :=
.mark loopBody728_170

def loopBody728_172 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.const 0#64)

def loopBody728_173 : HolLoopProg 64 :=
.mark loopBody728_172

def loopBody728_174 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [16]

def loopBody728_175 : HolLoopProg 64 :=
.mark loopBody728_174

def loopBody728_176 : HolLoopProg 64 :=
.seq loopBody728_175 loopBody728_1

def loopBody728_177 : HolLoopProg 64 :=
.mark loopBody728_176

def loopBody728_178 : HolLoopProg 64 :=
.seq loopBody728_173 loopBody728_177

def loopBody728_179 : HolLoopProg 64 :=
.mark loopBody728_178

def loopBody728_180 : HolLoopProg 64 :=
.seq loopBody728_171 loopBody728_179

def loopBody728_181 : HolLoopProg 64 :=
.mark loopBody728_180

def loopBody728_182 : HolLoopProg 64 :=
.seq loopBody728_17 loopBody728_181

def loopBody728_183 : HolLoopProg 64 :=
.mark loopBody728_182

def loopBody728_184 : HolLoopProg 64 :=
.seq loopBody728_1 loopBody728_183

def loopBody728_185 : HolLoopProg 64 :=
.mark loopBody728_184

def loopBody728_186 : HolLoopProg 64 :=
.seq loopBody728_1 loopBody728_185

def loopBody728_187 : HolLoopProg 64 :=
.mark loopBody728_186

def loopBody728_188 : HolLoopProg 64 :=
.seq loopBody728_7 loopBody728_187

def loopBody728_189 : HolLoopProg 64 :=
.mark loopBody728_188

def loopBody728_190 : HolLoopProg 64 :=
.seq loopBody728_1 loopBody728_189

def loopBody728_191 : HolLoopProg 64 :=
.mark loopBody728_190

def loopBody728_192 : HolLoopProg 64 :=
.seq loopBody728_1 loopBody728_191

def loopBody728_193 : HolLoopProg 64 :=
.mark loopBody728_192

def output728 : Nat × List Nat × HolLoopProg 64 :=
  (792, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], loopBody728_193)
end InitECandidate.Proofs.FrontendStages.Loop
