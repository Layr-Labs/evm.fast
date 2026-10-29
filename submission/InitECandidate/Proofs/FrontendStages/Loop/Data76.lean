import InitECandidate.Proofs.FrontendStages.Loop.Translate60
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody76_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody76_1 : HolLoopProg 64 :=
.mark loopBody76_0

def loopBody76_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody76_3 : HolLoopProg 64 :=
.mark loopBody76_2

def loopBody76_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody76_5 : HolLoopProg 64 :=
.mark loopBody76_4

def loopBody76_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody76_7 : HolLoopProg 64 :=
.mark loopBody76_6

def loopBody76_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 0#64)

def loopBody76_9 : HolLoopProg 64 :=
.mark loopBody76_8

def loopBody76_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 0)

def loopBody76_11 : HolLoopProg 64 :=
.mark loopBody76_10

def loopBody76_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 1)

def loopBody76_13 : HolLoopProg 64 :=
.mark loopBody76_12

def loopBody76_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 2)

def loopBody76_15 : HolLoopProg 64 :=
.mark loopBody76_14

def loopBody76_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 3)

def loopBody76_17 : HolLoopProg 64 :=
.mark loopBody76_16

def loopBody76_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 4)

def loopBody76_19 : HolLoopProg 64 :=
.mark loopBody76_18

def loopBody76_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 5)

def loopBody76_21 : HolLoopProg 64 :=
.mark loopBody76_20

def loopBody76_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 6)

def loopBody76_23 : HolLoopProg 64 :=
.mark loopBody76_22

def loopBody76_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 7)

def loopBody76_25 : HolLoopProg 64 :=
.mark loopBody76_24

def loopBody76_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 17

def loopBody76_27 : HolLoopProg 64 :=
.mark loopBody76_26

def loopBody76_28 : HolLoopProg 64 :=
.call (some
  ([16],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))) (some 138) ([17, 18, 19, 20]) (some (17, loopBody76_27, loopBody76_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))

def loopBody76_29 : HolLoopProg 64 :=
.mark loopBody76_28

def loopBody76_30 : HolLoopProg 64 :=
.seq loopBody76_29 loopBody76_1

def loopBody76_31 : HolLoopProg 64 :=
.mark loopBody76_30

def loopBody76_32 : HolLoopProg 64 :=
.seq loopBody76_25 loopBody76_31

def loopBody76_33 : HolLoopProg 64 :=
.mark loopBody76_32

def loopBody76_34 : HolLoopProg 64 :=
.seq loopBody76_23 loopBody76_33

def loopBody76_35 : HolLoopProg 64 :=
.mark loopBody76_34

def loopBody76_36 : HolLoopProg 64 :=
.seq loopBody76_21 loopBody76_35

def loopBody76_37 : HolLoopProg 64 :=
.mark loopBody76_36

def loopBody76_38 : HolLoopProg 64 :=
.seq loopBody76_19 loopBody76_37

def loopBody76_39 : HolLoopProg 64 :=
.mark loopBody76_38

def loopBody76_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.const 0#64)

def loopBody76_41 : HolLoopProg 64 :=
.mark loopBody76_40

def loopBody76_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 17)

def loopBody76_43 : HolLoopProg 64 :=
.mark loopBody76_42

def loopBody76_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 16)

def loopBody76_45 : HolLoopProg 64 :=
.mark loopBody76_44

def loopBody76_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.const 1#64)

def loopBody76_47 : HolLoopProg 64 :=
.mark loopBody76_46

def loopBody76_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.const 0#64)

def loopBody76_49 : HolLoopProg 64 :=
.mark loopBody76_48

def loopBody76_50 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 19 (Flapjack.RegImm.reg 20) loopBody76_47 loopBody76_49 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody76_51 : HolLoopProg 64 :=
.mark loopBody76_50

def loopBody76_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.var 19)

def loopBody76_53 : HolLoopProg 64 :=
.mark loopBody76_52

def loopBody76_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 4)

def loopBody76_55 : HolLoopProg 64 :=
.mark loopBody76_54

def loopBody76_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 5)

def loopBody76_57 : HolLoopProg 64 :=
.mark loopBody76_56

def loopBody76_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.var 6)

def loopBody76_59 : HolLoopProg 64 :=
.mark loopBody76_58

def loopBody76_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 22 (Flapjack.HolLoopExp.var 7)

def loopBody76_61 : HolLoopProg 64 :=
.mark loopBody76_60

def loopBody76_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 23 (Flapjack.HolLoopExp.var 17)

def loopBody76_63 : HolLoopProg 64 :=
.mark loopBody76_62

def loopBody76_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 19

def loopBody76_65 : HolLoopProg 64 :=
.mark loopBody76_64

def loopBody76_66 : HolLoopProg 64 :=
.call (some
  ([18],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))) (some 104) ([19, 20, 21, 22, 23]) (some (19, loopBody76_65, loopBody76_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))

def loopBody76_67 : HolLoopProg 64 :=
.mark loopBody76_66

def loopBody76_68 : HolLoopProg 64 :=
.seq loopBody76_67 loopBody76_1

def loopBody76_69 : HolLoopProg 64 :=
.mark loopBody76_68

def loopBody76_70 : HolLoopProg 64 :=
.seq loopBody76_63 loopBody76_69

def loopBody76_71 : HolLoopProg 64 :=
.mark loopBody76_70

def loopBody76_72 : HolLoopProg 64 :=
.seq loopBody76_61 loopBody76_71

def loopBody76_73 : HolLoopProg 64 :=
.mark loopBody76_72

def loopBody76_74 : HolLoopProg 64 :=
.seq loopBody76_59 loopBody76_73

def loopBody76_75 : HolLoopProg 64 :=
.mark loopBody76_74

def loopBody76_76 : HolLoopProg 64 :=
.seq loopBody76_57 loopBody76_75

def loopBody76_77 : HolLoopProg 64 :=
.mark loopBody76_76

def loopBody76_78 : HolLoopProg 64 :=
.seq loopBody76_55 loopBody76_77

def loopBody76_79 : HolLoopProg 64 :=
.mark loopBody76_78

def loopBody76_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 18)

def loopBody76_81 : HolLoopProg 64 :=
.mark loopBody76_80

def loopBody76_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.const 1#64)

def loopBody76_83 : HolLoopProg 64 :=
.mark loopBody76_82

def loopBody76_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.const 1#64)

def loopBody76_85 : HolLoopProg 64 :=
.mark loopBody76_84

def loopBody76_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.const 0#64)

def loopBody76_87 : HolLoopProg 64 :=
.mark loopBody76_86

def loopBody76_88 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 20 (Flapjack.RegImm.reg 21) loopBody76_85 loopBody76_87 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody76_89 : HolLoopProg 64 :=
.mark loopBody76_88

def loopBody76_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 22 (Flapjack.HolLoopExp.var 20)

def loopBody76_91 : HolLoopProg 64 :=
.mark loopBody76_90

def loopBody76_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 8)

def loopBody76_93 : HolLoopProg 64 :=
.mark loopBody76_92

def loopBody76_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 9)

def loopBody76_95 : HolLoopProg 64 :=
.mark loopBody76_94

def loopBody76_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.var 10)

def loopBody76_97 : HolLoopProg 64 :=
.mark loopBody76_96

def loopBody76_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 22 (Flapjack.HolLoopExp.var 11)

def loopBody76_99 : HolLoopProg 64 :=
.mark loopBody76_98

def loopBody76_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 23 (Flapjack.HolLoopExp.var 12)

def loopBody76_101 : HolLoopProg 64 :=
.mark loopBody76_100

def loopBody76_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 24 (Flapjack.HolLoopExp.var 13)

def loopBody76_103 : HolLoopProg 64 :=
.mark loopBody76_102

def loopBody76_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 25 (Flapjack.HolLoopExp.var 14)

def loopBody76_105 : HolLoopProg 64 :=
.mark loopBody76_104

def loopBody76_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 26 (Flapjack.HolLoopExp.var 15)

def loopBody76_107 : HolLoopProg 64 :=
.mark loopBody76_106

def loopBody76_108 : HolLoopProg 64 :=
.call (some
  ([8, 9, 10, 11],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))) (some 120) ([19, 20, 21, 22, 23, 24, 25, 26]) (some (19, loopBody76_65, loopBody76_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))

def loopBody76_109 : HolLoopProg 64 :=
.mark loopBody76_108

def loopBody76_110 : HolLoopProg 64 :=
.seq loopBody76_109 loopBody76_1

def loopBody76_111 : HolLoopProg 64 :=
.mark loopBody76_110

def loopBody76_112 : HolLoopProg 64 :=
.seq loopBody76_107 loopBody76_111

def loopBody76_113 : HolLoopProg 64 :=
.mark loopBody76_112

def loopBody76_114 : HolLoopProg 64 :=
.seq loopBody76_105 loopBody76_113

def loopBody76_115 : HolLoopProg 64 :=
.mark loopBody76_114

def loopBody76_116 : HolLoopProg 64 :=
.seq loopBody76_103 loopBody76_115

def loopBody76_117 : HolLoopProg 64 :=
.mark loopBody76_116

def loopBody76_118 : HolLoopProg 64 :=
.seq loopBody76_101 loopBody76_117

def loopBody76_119 : HolLoopProg 64 :=
.mark loopBody76_118

def loopBody76_120 : HolLoopProg 64 :=
.seq loopBody76_99 loopBody76_119

def loopBody76_121 : HolLoopProg 64 :=
.mark loopBody76_120

def loopBody76_122 : HolLoopProg 64 :=
.seq loopBody76_97 loopBody76_121

def loopBody76_123 : HolLoopProg 64 :=
.mark loopBody76_122

def loopBody76_124 : HolLoopProg 64 :=
.seq loopBody76_95 loopBody76_123

def loopBody76_125 : HolLoopProg 64 :=
.mark loopBody76_124

def loopBody76_126 : HolLoopProg 64 :=
.seq loopBody76_93 loopBody76_125

def loopBody76_127 : HolLoopProg 64 :=
.mark loopBody76_126

def loopBody76_128 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.RegImm.imm 0#64) loopBody76_127 loopBody76_1 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody76_129 : HolLoopProg 64 :=
.mark loopBody76_128

def loopBody76_130 : HolLoopProg 64 :=
.seq loopBody76_129 loopBody76_1

def loopBody76_131 : HolLoopProg 64 :=
.mark loopBody76_130

def loopBody76_132 : HolLoopProg 64 :=
.seq loopBody76_91 loopBody76_131

def loopBody76_133 : HolLoopProg 64 :=
.mark loopBody76_132

def loopBody76_134 : HolLoopProg 64 :=
.seq loopBody76_89 loopBody76_133

def loopBody76_135 : HolLoopProg 64 :=
.mark loopBody76_134

def loopBody76_136 : HolLoopProg 64 :=
.seq loopBody76_83 loopBody76_135

def loopBody76_137 : HolLoopProg 64 :=
.mark loopBody76_136

def loopBody76_138 : HolLoopProg 64 :=
.seq loopBody76_81 loopBody76_137

def loopBody76_139 : HolLoopProg 64 :=
.mark loopBody76_138

def loopBody76_140 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 17, Flapjack.HolLoopExp.const 1#64])

def loopBody76_141 : HolLoopProg 64 :=
.mark loopBody76_140

def loopBody76_142 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 19)

def loopBody76_143 : HolLoopProg 64 :=
.mark loopBody76_142

def loopBody76_144 : HolLoopProg 64 :=
.seq loopBody76_143 loopBody76_1

def loopBody76_145 : HolLoopProg 64 :=
.mark loopBody76_144

def loopBody76_146 : HolLoopProg 64 :=
.seq loopBody76_145 loopBody76_1

def loopBody76_147 : HolLoopProg 64 :=
.mark loopBody76_146

def loopBody76_148 : HolLoopProg 64 :=
.seq loopBody76_141 loopBody76_147

def loopBody76_149 : HolLoopProg 64 :=
.mark loopBody76_148

def loopBody76_150 : HolLoopProg 64 :=
.seq loopBody76_1 loopBody76_149

def loopBody76_151 : HolLoopProg 64 :=
.mark loopBody76_150

def loopBody76_152 : HolLoopProg 64 :=
.seq loopBody76_139 loopBody76_151

def loopBody76_153 : HolLoopProg 64 :=
.mark loopBody76_152

def loopBody76_154 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 17)

def loopBody76_155 : HolLoopProg 64 :=
.mark loopBody76_154

def loopBody76_156 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.var 16)

def loopBody76_157 : HolLoopProg 64 :=
.mark loopBody76_156

def loopBody76_158 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 20 (Flapjack.RegImm.reg 21) loopBody76_85 loopBody76_87 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody76_159 : HolLoopProg 64 :=
.mark loopBody76_158

def loopBody76_160 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 12)

def loopBody76_161 : HolLoopProg 64 :=
.mark loopBody76_160

def loopBody76_162 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 13)

def loopBody76_163 : HolLoopProg 64 :=
.mark loopBody76_162

def loopBody76_164 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.var 14)

def loopBody76_165 : HolLoopProg 64 :=
.mark loopBody76_164

def loopBody76_166 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 22 (Flapjack.HolLoopExp.var 15)

def loopBody76_167 : HolLoopProg 64 :=
.mark loopBody76_166

def loopBody76_168 : HolLoopProg 64 :=
.call (some
  ([12, 13, 14, 15],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 120) ([19, 20, 21, 22, 23, 24, 25, 26]) (some (19, loopBody76_65, loopBody76_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))

def loopBody76_169 : HolLoopProg 64 :=
.mark loopBody76_168

def loopBody76_170 : HolLoopProg 64 :=
.seq loopBody76_169 loopBody76_1

def loopBody76_171 : HolLoopProg 64 :=
.mark loopBody76_170

def loopBody76_172 : HolLoopProg 64 :=
.seq loopBody76_107 loopBody76_171

def loopBody76_173 : HolLoopProg 64 :=
.mark loopBody76_172

def loopBody76_174 : HolLoopProg 64 :=
.seq loopBody76_105 loopBody76_173

def loopBody76_175 : HolLoopProg 64 :=
.mark loopBody76_174

def loopBody76_176 : HolLoopProg 64 :=
.seq loopBody76_103 loopBody76_175

def loopBody76_177 : HolLoopProg 64 :=
.mark loopBody76_176

def loopBody76_178 : HolLoopProg 64 :=
.seq loopBody76_101 loopBody76_177

def loopBody76_179 : HolLoopProg 64 :=
.mark loopBody76_178

def loopBody76_180 : HolLoopProg 64 :=
.seq loopBody76_167 loopBody76_179

def loopBody76_181 : HolLoopProg 64 :=
.mark loopBody76_180

def loopBody76_182 : HolLoopProg 64 :=
.seq loopBody76_165 loopBody76_181

def loopBody76_183 : HolLoopProg 64 :=
.mark loopBody76_182

def loopBody76_184 : HolLoopProg 64 :=
.seq loopBody76_163 loopBody76_183

def loopBody76_185 : HolLoopProg 64 :=
.mark loopBody76_184

def loopBody76_186 : HolLoopProg 64 :=
.seq loopBody76_161 loopBody76_185

def loopBody76_187 : HolLoopProg 64 :=
.mark loopBody76_186

def loopBody76_188 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.RegImm.imm 0#64) loopBody76_187 loopBody76_1 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody76_189 : HolLoopProg 64 :=
.mark loopBody76_188

def loopBody76_190 : HolLoopProg 64 :=
.seq loopBody76_189 loopBody76_1

def loopBody76_191 : HolLoopProg 64 :=
.mark loopBody76_190

def loopBody76_192 : HolLoopProg 64 :=
.seq loopBody76_91 loopBody76_191

def loopBody76_193 : HolLoopProg 64 :=
.mark loopBody76_192

def loopBody76_194 : HolLoopProg 64 :=
.seq loopBody76_159 loopBody76_193

def loopBody76_195 : HolLoopProg 64 :=
.mark loopBody76_194

def loopBody76_196 : HolLoopProg 64 :=
.seq loopBody76_157 loopBody76_195

def loopBody76_197 : HolLoopProg 64 :=
.mark loopBody76_196

def loopBody76_198 : HolLoopProg 64 :=
.seq loopBody76_155 loopBody76_197

def loopBody76_199 : HolLoopProg 64 :=
.mark loopBody76_198

def loopBody76_200 : HolLoopProg 64 :=
.seq loopBody76_153 loopBody76_199

def loopBody76_201 : HolLoopProg 64 :=
.mark loopBody76_200

def loopBody76_202 : HolLoopProg 64 :=
.seq loopBody76_79 loopBody76_201

def loopBody76_203 : HolLoopProg 64 :=
.mark loopBody76_202

def loopBody76_204 : HolLoopProg 64 :=
.seq loopBody76_1 loopBody76_203

def loopBody76_205 : HolLoopProg 64 :=
.mark loopBody76_204

def loopBody76_206 : HolLoopProg 64 :=
.seq loopBody76_1 loopBody76_205

def loopBody76_207 : HolLoopProg 64 :=
.mark loopBody76_206

def loopBody76_208 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody76_209 : HolLoopProg 64 :=
.mark loopBody76_208

def loopBody76_210 : HolLoopProg 64 :=
.seq loopBody76_207 loopBody76_209

def loopBody76_211 : HolLoopProg 64 :=
.mark loopBody76_210

def loopBody76_212 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody76_213 : HolLoopProg 64 :=
.mark loopBody76_212

def loopBody76_214 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 21 (Flapjack.RegImm.imm 0#64) loopBody76_211 loopBody76_213 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody76_215 : HolLoopProg 64 :=
.mark loopBody76_214

def loopBody76_216 : HolLoopProg 64 :=
.seq loopBody76_215 loopBody76_1

def loopBody76_217 : HolLoopProg 64 :=
.mark loopBody76_216

def loopBody76_218 : HolLoopProg 64 :=
.seq loopBody76_53 loopBody76_217

def loopBody76_219 : HolLoopProg 64 :=
.mark loopBody76_218

def loopBody76_220 : HolLoopProg 64 :=
.seq loopBody76_51 loopBody76_219

def loopBody76_221 : HolLoopProg 64 :=
.mark loopBody76_220

def loopBody76_222 : HolLoopProg 64 :=
.seq loopBody76_45 loopBody76_221

def loopBody76_223 : HolLoopProg 64 :=
.mark loopBody76_222

def loopBody76_224 : HolLoopProg 64 :=
.seq loopBody76_43 loopBody76_223

def loopBody76_225 : HolLoopProg 64 :=
.mark loopBody76_224

def loopBody76_226 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) loopBody76_225 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody76_227 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 8)

def loopBody76_228 : HolLoopProg 64 :=
.mark loopBody76_227

def loopBody76_229 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 9)

def loopBody76_230 : HolLoopProg 64 :=
.mark loopBody76_229

def loopBody76_231 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 10)

def loopBody76_232 : HolLoopProg 64 :=
.mark loopBody76_231

def loopBody76_233 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.var 11)

def loopBody76_234 : HolLoopProg 64 :=
.mark loopBody76_233

def loopBody76_235 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [18, 19, 20, 21]

def loopBody76_236 : HolLoopProg 64 :=
.mark loopBody76_235

def loopBody76_237 : HolLoopProg 64 :=
.seq loopBody76_236 loopBody76_1

def loopBody76_238 : HolLoopProg 64 :=
.mark loopBody76_237

def loopBody76_239 : HolLoopProg 64 :=
.seq loopBody76_234 loopBody76_238

def loopBody76_240 : HolLoopProg 64 :=
.mark loopBody76_239

def loopBody76_241 : HolLoopProg 64 :=
.seq loopBody76_232 loopBody76_240

def loopBody76_242 : HolLoopProg 64 :=
.mark loopBody76_241

def loopBody76_243 : HolLoopProg 64 :=
.seq loopBody76_230 loopBody76_242

def loopBody76_244 : HolLoopProg 64 :=
.mark loopBody76_243

def loopBody76_245 : HolLoopProg 64 :=
.seq loopBody76_228 loopBody76_244

def loopBody76_246 : HolLoopProg 64 :=
.mark loopBody76_245

def loopBody76_247 : HolLoopProg 64 :=
.seq loopBody76_226 loopBody76_246

def loopBody76_248 : HolLoopProg 64 :=
.seq loopBody76_41 loopBody76_247

def loopBody76_249 : HolLoopProg 64 :=
.seq loopBody76_1 loopBody76_248

def loopBody76_250 : HolLoopProg 64 :=
.seq loopBody76_39 loopBody76_249

def loopBody76_251 : HolLoopProg 64 :=
.seq loopBody76_1 loopBody76_250

def loopBody76_252 : HolLoopProg 64 :=
.seq loopBody76_1 loopBody76_251

def loopBody76_253 : HolLoopProg 64 :=
.seq loopBody76_17 loopBody76_252

def loopBody76_254 : HolLoopProg 64 :=
.seq loopBody76_1 loopBody76_253

def loopBody76_255 : HolLoopProg 64 :=
.seq loopBody76_15 loopBody76_254

def loopBody76_256 : HolLoopProg 64 :=
.seq loopBody76_1 loopBody76_255

def loopBody76_257 : HolLoopProg 64 :=
.seq loopBody76_13 loopBody76_256

def loopBody76_258 : HolLoopProg 64 :=
.seq loopBody76_1 loopBody76_257

def loopBody76_259 : HolLoopProg 64 :=
.seq loopBody76_11 loopBody76_258

def loopBody76_260 : HolLoopProg 64 :=
.seq loopBody76_1 loopBody76_259

def loopBody76_261 : HolLoopProg 64 :=
.seq loopBody76_9 loopBody76_260

def loopBody76_262 : HolLoopProg 64 :=
.seq loopBody76_1 loopBody76_261

def loopBody76_263 : HolLoopProg 64 :=
.seq loopBody76_7 loopBody76_262

def loopBody76_264 : HolLoopProg 64 :=
.seq loopBody76_1 loopBody76_263

def loopBody76_265 : HolLoopProg 64 :=
.seq loopBody76_5 loopBody76_264

def loopBody76_266 : HolLoopProg 64 :=
.seq loopBody76_1 loopBody76_265

def loopBody76_267 : HolLoopProg 64 :=
.seq loopBody76_3 loopBody76_266

def loopBody76_268 : HolLoopProg 64 :=
.seq loopBody76_1 loopBody76_267

def output76 : Nat × List Nat × HolLoopProg 64 :=
  (140, [0, 1, 2, 3, 4, 5, 6, 7], loopBody76_268)
end InitECandidate.Proofs.FrontendStages.Loop
