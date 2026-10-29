import InitECandidate.Proofs.FrontendStages.Loop.Translate128
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody144_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody144_1 : HolLoopProg 64 :=
.mark loopBody144_0

def loopBody144_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody144_3 : HolLoopProg 64 :=
.mark loopBody144_2

def loopBody144_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody144_5 : HolLoopProg 64 :=
.mark loopBody144_4

def loopBody144_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody144_7 : HolLoopProg 64 :=
.mark loopBody144_6

def loopBody144_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 0#64)

def loopBody144_9 : HolLoopProg 64 :=
.mark loopBody144_8

def loopBody144_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 0#64)

def loopBody144_11 : HolLoopProg 64 :=
.mark loopBody144_10

def loopBody144_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 256#64)

def loopBody144_13 : HolLoopProg 64 :=
.mark loopBody144_12

def loopBody144_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.const 0#64)

def loopBody144_15 : HolLoopProg 64 :=
.mark loopBody144_14

def loopBody144_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 13)

def loopBody144_17 : HolLoopProg 64 :=
.mark loopBody144_16

def loopBody144_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.const 1#64)

def loopBody144_19 : HolLoopProg 64 :=
.mark loopBody144_18

def loopBody144_20 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 15 (Flapjack.RegImm.reg 16) loopBody144_19 loopBody144_15 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody144_21 : HolLoopProg 64 :=
.mark loopBody144_20

def loopBody144_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 15)

def loopBody144_23 : HolLoopProg 64 :=
.mark loopBody144_22

def loopBody144_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 13, Flapjack.HolLoopExp.const 1#64])

def loopBody144_25 : HolLoopProg 64 :=
.mark loopBody144_24

def loopBody144_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 14)

def loopBody144_27 : HolLoopProg 64 :=
.mark loopBody144_26

def loopBody144_28 : HolLoopProg 64 :=
.seq loopBody144_27 loopBody144_1

def loopBody144_29 : HolLoopProg 64 :=
.mark loopBody144_28

def loopBody144_30 : HolLoopProg 64 :=
.seq loopBody144_29 loopBody144_1

def loopBody144_31 : HolLoopProg 64 :=
.mark loopBody144_30

def loopBody144_32 : HolLoopProg 64 :=
.seq loopBody144_25 loopBody144_31

def loopBody144_33 : HolLoopProg 64 :=
.mark loopBody144_32

def loopBody144_34 : HolLoopProg 64 :=
.seq loopBody144_1 loopBody144_33

def loopBody144_35 : HolLoopProg 64 :=
.mark loopBody144_34

def loopBody144_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 12)

def loopBody144_37 : HolLoopProg 64 :=
.mark loopBody144_36

def loopBody144_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.const 1#64)

def loopBody144_39 : HolLoopProg 64 :=
.mark loopBody144_38

def loopBody144_40 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 15 (Flapjack.RegImm.reg 16) loopBody144_19 loopBody144_15 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody144_41 : HolLoopProg 64 :=
.mark loopBody144_40

def loopBody144_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 8)

def loopBody144_43 : HolLoopProg 64 :=
.mark loopBody144_42

def loopBody144_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 9)

def loopBody144_45 : HolLoopProg 64 :=
.mark loopBody144_44

def loopBody144_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 10)

def loopBody144_47 : HolLoopProg 64 :=
.mark loopBody144_46

def loopBody144_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 11)

def loopBody144_49 : HolLoopProg 64 :=
.mark loopBody144_48

def loopBody144_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 14

def loopBody144_51 : HolLoopProg 64 :=
.mark loopBody144_50

def loopBody144_52 : HolLoopProg 64 :=
.call (some
  ([8, 9, 10, 11],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 207) ([14, 15, 16, 17]) (some (14, loopBody144_51, loopBody144_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody144_53 : HolLoopProg 64 :=
.mark loopBody144_52

def loopBody144_54 : HolLoopProg 64 :=
.seq loopBody144_53 loopBody144_1

def loopBody144_55 : HolLoopProg 64 :=
.mark loopBody144_54

def loopBody144_56 : HolLoopProg 64 :=
.seq loopBody144_49 loopBody144_55

def loopBody144_57 : HolLoopProg 64 :=
.mark loopBody144_56

def loopBody144_58 : HolLoopProg 64 :=
.seq loopBody144_47 loopBody144_57

def loopBody144_59 : HolLoopProg 64 :=
.mark loopBody144_58

def loopBody144_60 : HolLoopProg 64 :=
.seq loopBody144_45 loopBody144_59

def loopBody144_61 : HolLoopProg 64 :=
.mark loopBody144_60

def loopBody144_62 : HolLoopProg 64 :=
.seq loopBody144_43 loopBody144_61

def loopBody144_63 : HolLoopProg 64 :=
.mark loopBody144_62

def loopBody144_64 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 17 (Flapjack.RegImm.imm 0#64) loopBody144_63 loopBody144_1 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody144_65 : HolLoopProg 64 :=
.mark loopBody144_64

def loopBody144_66 : HolLoopProg 64 :=
.seq loopBody144_65 loopBody144_1

def loopBody144_67 : HolLoopProg 64 :=
.mark loopBody144_66

def loopBody144_68 : HolLoopProg 64 :=
.seq loopBody144_23 loopBody144_67

def loopBody144_69 : HolLoopProg 64 :=
.mark loopBody144_68

def loopBody144_70 : HolLoopProg 64 :=
.seq loopBody144_41 loopBody144_69

def loopBody144_71 : HolLoopProg 64 :=
.mark loopBody144_70

def loopBody144_72 : HolLoopProg 64 :=
.seq loopBody144_39 loopBody144_71

def loopBody144_73 : HolLoopProg 64 :=
.mark loopBody144_72

def loopBody144_74 : HolLoopProg 64 :=
.seq loopBody144_37 loopBody144_73

def loopBody144_75 : HolLoopProg 64 :=
.mark loopBody144_74

def loopBody144_76 : HolLoopProg 64 :=
.seq loopBody144_35 loopBody144_75

def loopBody144_77 : HolLoopProg 64 :=
.mark loopBody144_76

def loopBody144_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 4)

def loopBody144_79 : HolLoopProg 64 :=
.mark loopBody144_78

def loopBody144_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 5)

def loopBody144_81 : HolLoopProg 64 :=
.mark loopBody144_80

def loopBody144_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 6)

def loopBody144_83 : HolLoopProg 64 :=
.mark loopBody144_82

def loopBody144_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 7)

def loopBody144_85 : HolLoopProg 64 :=
.mark loopBody144_84

def loopBody144_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 13)

def loopBody144_87 : HolLoopProg 64 :=
.mark loopBody144_86

def loopBody144_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 15

def loopBody144_89 : HolLoopProg 64 :=
.mark loopBody144_88

def loopBody144_90 : HolLoopProg 64 :=
.call (some
  ([14],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 104) ([15, 16, 17, 18, 19]) (some (15, loopBody144_89, loopBody144_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody144_91 : HolLoopProg 64 :=
.mark loopBody144_90

def loopBody144_92 : HolLoopProg 64 :=
.seq loopBody144_91 loopBody144_1

def loopBody144_93 : HolLoopProg 64 :=
.mark loopBody144_92

def loopBody144_94 : HolLoopProg 64 :=
.seq loopBody144_87 loopBody144_93

def loopBody144_95 : HolLoopProg 64 :=
.mark loopBody144_94

def loopBody144_96 : HolLoopProg 64 :=
.seq loopBody144_85 loopBody144_95

def loopBody144_97 : HolLoopProg 64 :=
.mark loopBody144_96

def loopBody144_98 : HolLoopProg 64 :=
.seq loopBody144_83 loopBody144_97

def loopBody144_99 : HolLoopProg 64 :=
.mark loopBody144_98

def loopBody144_100 : HolLoopProg 64 :=
.seq loopBody144_81 loopBody144_99

def loopBody144_101 : HolLoopProg 64 :=
.mark loopBody144_100

def loopBody144_102 : HolLoopProg 64 :=
.seq loopBody144_79 loopBody144_101

def loopBody144_103 : HolLoopProg 64 :=
.mark loopBody144_102

def loopBody144_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 14)

def loopBody144_105 : HolLoopProg 64 :=
.mark loopBody144_104

def loopBody144_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.const 1#64)

def loopBody144_107 : HolLoopProg 64 :=
.mark loopBody144_106

def loopBody144_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.const 0#64)

def loopBody144_109 : HolLoopProg 64 :=
.mark loopBody144_108

def loopBody144_110 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.RegImm.reg 17) loopBody144_39 loopBody144_109 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody144_111 : HolLoopProg 64 :=
.mark loopBody144_110

def loopBody144_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 16)

def loopBody144_113 : HolLoopProg 64 :=
.mark loopBody144_112

def loopBody144_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 8)

def loopBody144_115 : HolLoopProg 64 :=
.mark loopBody144_114

def loopBody144_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 9)

def loopBody144_117 : HolLoopProg 64 :=
.mark loopBody144_116

def loopBody144_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 10)

def loopBody144_119 : HolLoopProg 64 :=
.mark loopBody144_118

def loopBody144_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 11)

def loopBody144_121 : HolLoopProg 64 :=
.mark loopBody144_120

def loopBody144_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 0)

def loopBody144_123 : HolLoopProg 64 :=
.mark loopBody144_122

def loopBody144_124 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 1)

def loopBody144_125 : HolLoopProg 64 :=
.mark loopBody144_124

def loopBody144_126 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.var 2)

def loopBody144_127 : HolLoopProg 64 :=
.mark loopBody144_126

def loopBody144_128 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 22 (Flapjack.HolLoopExp.var 3)

def loopBody144_129 : HolLoopProg 64 :=
.mark loopBody144_128

def loopBody144_130 : HolLoopProg 64 :=
.call (some
  ([8, 9, 10, 11],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 206) ([15, 16, 17, 18, 19, 20, 21, 22]) (some (15, loopBody144_89, loopBody144_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody144_131 : HolLoopProg 64 :=
.mark loopBody144_130

def loopBody144_132 : HolLoopProg 64 :=
.seq loopBody144_131 loopBody144_1

def loopBody144_133 : HolLoopProg 64 :=
.mark loopBody144_132

def loopBody144_134 : HolLoopProg 64 :=
.seq loopBody144_129 loopBody144_133

def loopBody144_135 : HolLoopProg 64 :=
.mark loopBody144_134

def loopBody144_136 : HolLoopProg 64 :=
.seq loopBody144_127 loopBody144_135

def loopBody144_137 : HolLoopProg 64 :=
.mark loopBody144_136

def loopBody144_138 : HolLoopProg 64 :=
.seq loopBody144_125 loopBody144_137

def loopBody144_139 : HolLoopProg 64 :=
.mark loopBody144_138

def loopBody144_140 : HolLoopProg 64 :=
.seq loopBody144_123 loopBody144_139

def loopBody144_141 : HolLoopProg 64 :=
.mark loopBody144_140

def loopBody144_142 : HolLoopProg 64 :=
.seq loopBody144_121 loopBody144_141

def loopBody144_143 : HolLoopProg 64 :=
.mark loopBody144_142

def loopBody144_144 : HolLoopProg 64 :=
.seq loopBody144_119 loopBody144_143

def loopBody144_145 : HolLoopProg 64 :=
.mark loopBody144_144

def loopBody144_146 : HolLoopProg 64 :=
.seq loopBody144_117 loopBody144_145

def loopBody144_147 : HolLoopProg 64 :=
.mark loopBody144_146

def loopBody144_148 : HolLoopProg 64 :=
.seq loopBody144_115 loopBody144_147

def loopBody144_149 : HolLoopProg 64 :=
.mark loopBody144_148

def loopBody144_150 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 1#64)

def loopBody144_151 : HolLoopProg 64 :=
.mark loopBody144_150

def loopBody144_152 : HolLoopProg 64 :=
.seq loopBody144_151 loopBody144_1

def loopBody144_153 : HolLoopProg 64 :=
.mark loopBody144_152

def loopBody144_154 : HolLoopProg 64 :=
.seq loopBody144_153 loopBody144_1

def loopBody144_155 : HolLoopProg 64 :=
.mark loopBody144_154

def loopBody144_156 : HolLoopProg 64 :=
.seq loopBody144_149 loopBody144_155

def loopBody144_157 : HolLoopProg 64 :=
.mark loopBody144_156

def loopBody144_158 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.RegImm.imm 0#64) loopBody144_157 loopBody144_1 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody144_159 : HolLoopProg 64 :=
.mark loopBody144_158

def loopBody144_160 : HolLoopProg 64 :=
.seq loopBody144_159 loopBody144_1

def loopBody144_161 : HolLoopProg 64 :=
.mark loopBody144_160

def loopBody144_162 : HolLoopProg 64 :=
.seq loopBody144_113 loopBody144_161

def loopBody144_163 : HolLoopProg 64 :=
.mark loopBody144_162

def loopBody144_164 : HolLoopProg 64 :=
.seq loopBody144_111 loopBody144_163

def loopBody144_165 : HolLoopProg 64 :=
.mark loopBody144_164

def loopBody144_166 : HolLoopProg 64 :=
.seq loopBody144_107 loopBody144_165

def loopBody144_167 : HolLoopProg 64 :=
.mark loopBody144_166

def loopBody144_168 : HolLoopProg 64 :=
.seq loopBody144_105 loopBody144_167

def loopBody144_169 : HolLoopProg 64 :=
.mark loopBody144_168

def loopBody144_170 : HolLoopProg 64 :=
.seq loopBody144_103 loopBody144_169

def loopBody144_171 : HolLoopProg 64 :=
.mark loopBody144_170

def loopBody144_172 : HolLoopProg 64 :=
.seq loopBody144_1 loopBody144_171

def loopBody144_173 : HolLoopProg 64 :=
.mark loopBody144_172

def loopBody144_174 : HolLoopProg 64 :=
.seq loopBody144_1 loopBody144_173

def loopBody144_175 : HolLoopProg 64 :=
.mark loopBody144_174

def loopBody144_176 : HolLoopProg 64 :=
.seq loopBody144_77 loopBody144_175

def loopBody144_177 : HolLoopProg 64 :=
.mark loopBody144_176

def loopBody144_178 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody144_179 : HolLoopProg 64 :=
.mark loopBody144_178

def loopBody144_180 : HolLoopProg 64 :=
.seq loopBody144_177 loopBody144_179

def loopBody144_181 : HolLoopProg 64 :=
.mark loopBody144_180

def loopBody144_182 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody144_183 : HolLoopProg 64 :=
.mark loopBody144_182

def loopBody144_184 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 17 (Flapjack.RegImm.imm 0#64) loopBody144_181 loopBody144_183 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody144_185 : HolLoopProg 64 :=
.mark loopBody144_184

def loopBody144_186 : HolLoopProg 64 :=
.seq loopBody144_185 loopBody144_1

def loopBody144_187 : HolLoopProg 64 :=
.mark loopBody144_186

def loopBody144_188 : HolLoopProg 64 :=
.seq loopBody144_23 loopBody144_187

def loopBody144_189 : HolLoopProg 64 :=
.mark loopBody144_188

def loopBody144_190 : HolLoopProg 64 :=
.seq loopBody144_21 loopBody144_189

def loopBody144_191 : HolLoopProg 64 :=
.mark loopBody144_190

def loopBody144_192 : HolLoopProg 64 :=
.seq loopBody144_17 loopBody144_191

def loopBody144_193 : HolLoopProg 64 :=
.mark loopBody144_192

def loopBody144_194 : HolLoopProg 64 :=
.seq loopBody144_15 loopBody144_193

def loopBody144_195 : HolLoopProg 64 :=
.mark loopBody144_194

def loopBody144_196 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) loopBody144_195 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody144_197 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [14, 15, 16, 17]

def loopBody144_198 : HolLoopProg 64 :=
.mark loopBody144_197

def loopBody144_199 : HolLoopProg 64 :=
.seq loopBody144_198 loopBody144_1

def loopBody144_200 : HolLoopProg 64 :=
.mark loopBody144_199

def loopBody144_201 : HolLoopProg 64 :=
.seq loopBody144_49 loopBody144_200

def loopBody144_202 : HolLoopProg 64 :=
.mark loopBody144_201

def loopBody144_203 : HolLoopProg 64 :=
.seq loopBody144_47 loopBody144_202

def loopBody144_204 : HolLoopProg 64 :=
.mark loopBody144_203

def loopBody144_205 : HolLoopProg 64 :=
.seq loopBody144_45 loopBody144_204

def loopBody144_206 : HolLoopProg 64 :=
.mark loopBody144_205

def loopBody144_207 : HolLoopProg 64 :=
.seq loopBody144_43 loopBody144_206

def loopBody144_208 : HolLoopProg 64 :=
.mark loopBody144_207

def loopBody144_209 : HolLoopProg 64 :=
.seq loopBody144_196 loopBody144_208

def loopBody144_210 : HolLoopProg 64 :=
.seq loopBody144_13 loopBody144_209

def loopBody144_211 : HolLoopProg 64 :=
.seq loopBody144_1 loopBody144_210

def loopBody144_212 : HolLoopProg 64 :=
.seq loopBody144_11 loopBody144_211

def loopBody144_213 : HolLoopProg 64 :=
.seq loopBody144_1 loopBody144_212

def loopBody144_214 : HolLoopProg 64 :=
.seq loopBody144_9 loopBody144_213

def loopBody144_215 : HolLoopProg 64 :=
.seq loopBody144_1 loopBody144_214

def loopBody144_216 : HolLoopProg 64 :=
.seq loopBody144_7 loopBody144_215

def loopBody144_217 : HolLoopProg 64 :=
.seq loopBody144_1 loopBody144_216

def loopBody144_218 : HolLoopProg 64 :=
.seq loopBody144_5 loopBody144_217

def loopBody144_219 : HolLoopProg 64 :=
.seq loopBody144_1 loopBody144_218

def loopBody144_220 : HolLoopProg 64 :=
.seq loopBody144_3 loopBody144_219

def loopBody144_221 : HolLoopProg 64 :=
.seq loopBody144_1 loopBody144_220

def output144 : Nat × List Nat × HolLoopProg 64 :=
  (208, [0, 1, 2, 3, 4, 5, 6, 7], loopBody144_221)
end InitECandidate.Proofs.FrontendStages.Loop
