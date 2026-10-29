import InitECandidate.Proofs.FrontendStages.Loop.Translate48
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody64_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody64_1 : HolLoopProg 64 :=
.mark loopBody64_0

def loopBody64_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 40#64]),
      Flapjack.HolLoopExp.const 216#64])

def loopBody64_3 : HolLoopProg 64 :=
.mark loopBody64_2

def loopBody64_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 40#64]),
      Flapjack.HolLoopExp.const 352#64])

def loopBody64_5 : HolLoopProg 64 :=
.mark loopBody64_4

def loopBody64_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 40#64]),
      Flapjack.HolLoopExp.const 560#64])

def loopBody64_7 : HolLoopProg 64 :=
.mark loopBody64_6

def loopBody64_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody64_9 : HolLoopProg 64 :=
.mark loopBody64_8

def loopBody64_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 2)

def loopBody64_11 : HolLoopProg 64 :=
.mark loopBody64_10

def loopBody64_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 3)

def loopBody64_13 : HolLoopProg 64 :=
.mark loopBody64_12

def loopBody64_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 4)

def loopBody64_15 : HolLoopProg 64 :=
.mark loopBody64_14

def loopBody64_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 5)

def loopBody64_17 : HolLoopProg 64 :=
.mark loopBody64_16

def loopBody64_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody64_19 : HolLoopProg 64 :=
.mark loopBody64_18

def loopBody64_20 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 124) ([10, 11, 12, 13, 14]) (some (10, loopBody64_19, loopBody64_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody64_21 : HolLoopProg 64 :=
.mark loopBody64_20

def loopBody64_22 : HolLoopProg 64 :=
.seq loopBody64_21 loopBody64_1

def loopBody64_23 : HolLoopProg 64 :=
.mark loopBody64_22

def loopBody64_24 : HolLoopProg 64 :=
.seq loopBody64_17 loopBody64_23

def loopBody64_25 : HolLoopProg 64 :=
.mark loopBody64_24

def loopBody64_26 : HolLoopProg 64 :=
.seq loopBody64_15 loopBody64_25

def loopBody64_27 : HolLoopProg 64 :=
.mark loopBody64_26

def loopBody64_28 : HolLoopProg 64 :=
.seq loopBody64_13 loopBody64_27

def loopBody64_29 : HolLoopProg 64 :=
.mark loopBody64_28

def loopBody64_30 : HolLoopProg 64 :=
.seq loopBody64_11 loopBody64_29

def loopBody64_31 : HolLoopProg 64 :=
.mark loopBody64_30

def loopBody64_32 : HolLoopProg 64 :=
.seq loopBody64_9 loopBody64_31

def loopBody64_33 : HolLoopProg 64 :=
.mark loopBody64_32

def loopBody64_34 : HolLoopProg 64 :=
.seq loopBody64_1 loopBody64_33

def loopBody64_35 : HolLoopProg 64 :=
.mark loopBody64_34

def loopBody64_36 : HolLoopProg 64 :=
.seq loopBody64_1 loopBody64_35

def loopBody64_37 : HolLoopProg 64 :=
.mark loopBody64_36

def loopBody64_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 8#64)

def loopBody64_39 : HolLoopProg 64 :=
.mark loopBody64_38

def loopBody64_40 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 126) ([10, 11]) (some (10, loopBody64_19, loopBody64_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody64_41 : HolLoopProg 64 :=
.mark loopBody64_40

def loopBody64_42 : HolLoopProg 64 :=
.seq loopBody64_41 loopBody64_1

def loopBody64_43 : HolLoopProg 64 :=
.mark loopBody64_42

def loopBody64_44 : HolLoopProg 64 :=
.seq loopBody64_39 loopBody64_43

def loopBody64_45 : HolLoopProg 64 :=
.mark loopBody64_44

def loopBody64_46 : HolLoopProg 64 :=
.seq loopBody64_9 loopBody64_45

def loopBody64_47 : HolLoopProg 64 :=
.mark loopBody64_46

def loopBody64_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 0)

def loopBody64_49 : HolLoopProg 64 :=
.mark loopBody64_48

def loopBody64_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 1)

def loopBody64_51 : HolLoopProg 64 :=
.mark loopBody64_50

def loopBody64_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 11

def loopBody64_53 : HolLoopProg 64 :=
.mark loopBody64_52

def loopBody64_54 : HolLoopProg 64 :=
.call (some
  ([10],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 126) ([11, 12]) (some (11, loopBody64_53, loopBody64_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody64_55 : HolLoopProg 64 :=
.mark loopBody64_54

def loopBody64_56 : HolLoopProg 64 :=
.seq loopBody64_55 loopBody64_1

def loopBody64_57 : HolLoopProg 64 :=
.mark loopBody64_56

def loopBody64_58 : HolLoopProg 64 :=
.seq loopBody64_51 loopBody64_57

def loopBody64_59 : HolLoopProg 64 :=
.mark loopBody64_58

def loopBody64_60 : HolLoopProg 64 :=
.seq loopBody64_49 loopBody64_59

def loopBody64_61 : HolLoopProg 64 :=
.mark loopBody64_60

def loopBody64_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 0#64)

def loopBody64_63 : HolLoopProg 64 :=
.mark loopBody64_62

def loopBody64_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 11)

def loopBody64_65 : HolLoopProg 64 :=
.mark loopBody64_64

def loopBody64_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 16#64)

def loopBody64_67 : HolLoopProg 64 :=
.mark loopBody64_66

def loopBody64_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 1#64)

def loopBody64_69 : HolLoopProg 64 :=
.mark loopBody64_68

def loopBody64_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 0#64)

def loopBody64_71 : HolLoopProg 64 :=
.mark loopBody64_70

def loopBody64_72 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.RegImm.reg 14) loopBody64_69 loopBody64_71 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody64_73 : HolLoopProg 64 :=
.mark loopBody64_72

def loopBody64_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 13)

def loopBody64_75 : HolLoopProg 64 :=
.mark loopBody64_74

def loopBody64_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 6,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 11) (Flapjack.HolLoopExp.const 3#64)])

def loopBody64_77 : HolLoopProg 64 :=
.mark loopBody64_76

def loopBody64_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 13)

def loopBody64_79 : HolLoopProg 64 :=
.mark loopBody64_78

def loopBody64_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 12) 14

def loopBody64_81 : HolLoopProg 64 :=
.mark loopBody64_80

def loopBody64_82 : HolLoopProg 64 :=
.seq loopBody64_81 loopBody64_1

def loopBody64_83 : HolLoopProg 64 :=
.mark loopBody64_82

def loopBody64_84 : HolLoopProg 64 :=
.seq loopBody64_79 loopBody64_83

def loopBody64_85 : HolLoopProg 64 :=
.mark loopBody64_84

def loopBody64_86 : HolLoopProg 64 :=
.seq loopBody64_85 loopBody64_1

def loopBody64_87 : HolLoopProg 64 :=
.mark loopBody64_86

def loopBody64_88 : HolLoopProg 64 :=
.seq loopBody64_71 loopBody64_87

def loopBody64_89 : HolLoopProg 64 :=
.mark loopBody64_88

def loopBody64_90 : HolLoopProg 64 :=
.seq loopBody64_1 loopBody64_89

def loopBody64_91 : HolLoopProg 64 :=
.mark loopBody64_90

def loopBody64_92 : HolLoopProg 64 :=
.seq loopBody64_77 loopBody64_91

def loopBody64_93 : HolLoopProg 64 :=
.mark loopBody64_92

def loopBody64_94 : HolLoopProg 64 :=
.seq loopBody64_1 loopBody64_93

def loopBody64_95 : HolLoopProg 64 :=
.mark loopBody64_94

def loopBody64_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 11, Flapjack.HolLoopExp.const 1#64])

def loopBody64_97 : HolLoopProg 64 :=
.mark loopBody64_96

def loopBody64_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 12)

def loopBody64_99 : HolLoopProg 64 :=
.mark loopBody64_98

def loopBody64_100 : HolLoopProg 64 :=
.seq loopBody64_99 loopBody64_1

def loopBody64_101 : HolLoopProg 64 :=
.mark loopBody64_100

def loopBody64_102 : HolLoopProg 64 :=
.seq loopBody64_101 loopBody64_1

def loopBody64_103 : HolLoopProg 64 :=
.mark loopBody64_102

def loopBody64_104 : HolLoopProg 64 :=
.seq loopBody64_97 loopBody64_103

def loopBody64_105 : HolLoopProg 64 :=
.mark loopBody64_104

def loopBody64_106 : HolLoopProg 64 :=
.seq loopBody64_1 loopBody64_105

def loopBody64_107 : HolLoopProg 64 :=
.mark loopBody64_106

def loopBody64_108 : HolLoopProg 64 :=
.seq loopBody64_95 loopBody64_107

def loopBody64_109 : HolLoopProg 64 :=
.mark loopBody64_108

def loopBody64_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody64_111 : HolLoopProg 64 :=
.mark loopBody64_110

def loopBody64_112 : HolLoopProg 64 :=
.seq loopBody64_109 loopBody64_111

def loopBody64_113 : HolLoopProg 64 :=
.mark loopBody64_112

def loopBody64_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody64_115 : HolLoopProg 64 :=
.mark loopBody64_114

def loopBody64_116 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 15 (Flapjack.RegImm.imm 0#64) loopBody64_113 loopBody64_115 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody64_117 : HolLoopProg 64 :=
.mark loopBody64_116

def loopBody64_118 : HolLoopProg 64 :=
.seq loopBody64_117 loopBody64_1

def loopBody64_119 : HolLoopProg 64 :=
.mark loopBody64_118

def loopBody64_120 : HolLoopProg 64 :=
.seq loopBody64_75 loopBody64_119

def loopBody64_121 : HolLoopProg 64 :=
.mark loopBody64_120

def loopBody64_122 : HolLoopProg 64 :=
.seq loopBody64_73 loopBody64_121

def loopBody64_123 : HolLoopProg 64 :=
.mark loopBody64_122

def loopBody64_124 : HolLoopProg 64 :=
.seq loopBody64_67 loopBody64_123

def loopBody64_125 : HolLoopProg 64 :=
.mark loopBody64_124

def loopBody64_126 : HolLoopProg 64 :=
.seq loopBody64_65 loopBody64_125

def loopBody64_127 : HolLoopProg 64 :=
.mark loopBody64_126

def loopBody64_128 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) loopBody64_127 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody64_129 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 10)

def loopBody64_130 : HolLoopProg 64 :=
.mark loopBody64_129

def loopBody64_131 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 9)

def loopBody64_132 : HolLoopProg 64 :=
.mark loopBody64_131

def loopBody64_133 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.RegImm.reg 14) loopBody64_69 loopBody64_71 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody64_134 : HolLoopProg 64 :=
.mark loopBody64_133

def loopBody64_135 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 0)

def loopBody64_136 : HolLoopProg 64 :=
.mark loopBody64_135

def loopBody64_137 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 125) [12] none

def loopBody64_138 : HolLoopProg 64 :=
.mark loopBody64_137

def loopBody64_139 : HolLoopProg 64 :=
.seq loopBody64_138 loopBody64_1

def loopBody64_140 : HolLoopProg 64 :=
.mark loopBody64_139

def loopBody64_141 : HolLoopProg 64 :=
.seq loopBody64_136 loopBody64_140

def loopBody64_142 : HolLoopProg 64 :=
.mark loopBody64_141

def loopBody64_143 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 15 (Flapjack.RegImm.imm 0#64) loopBody64_142 loopBody64_1 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody64_144 : HolLoopProg 64 :=
.mark loopBody64_143

def loopBody64_145 : HolLoopProg 64 :=
.seq loopBody64_144 loopBody64_1

def loopBody64_146 : HolLoopProg 64 :=
.mark loopBody64_145

def loopBody64_147 : HolLoopProg 64 :=
.seq loopBody64_75 loopBody64_146

def loopBody64_148 : HolLoopProg 64 :=
.mark loopBody64_147

def loopBody64_149 : HolLoopProg 64 :=
.seq loopBody64_134 loopBody64_148

def loopBody64_150 : HolLoopProg 64 :=
.mark loopBody64_149

def loopBody64_151 : HolLoopProg 64 :=
.seq loopBody64_132 loopBody64_150

def loopBody64_152 : HolLoopProg 64 :=
.mark loopBody64_151

def loopBody64_153 : HolLoopProg 64 :=
.seq loopBody64_130 loopBody64_152

def loopBody64_154 : HolLoopProg 64 :=
.mark loopBody64_153

def loopBody64_155 : HolLoopProg 64 :=
.seq loopBody64_128 loopBody64_154

def loopBody64_156 : HolLoopProg 64 :=
.seq loopBody64_63 loopBody64_1

def loopBody64_157 : HolLoopProg 64 :=
.mark loopBody64_156

def loopBody64_158 : HolLoopProg 64 :=
.seq loopBody64_157 loopBody64_1

def loopBody64_159 : HolLoopProg 64 :=
.mark loopBody64_158

def loopBody64_160 : HolLoopProg 64 :=
.seq loopBody64_155 loopBody64_159

def loopBody64_161 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 8#64)

def loopBody64_162 : HolLoopProg 64 :=
.mark loopBody64_161

def loopBody64_163 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 7,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 11) (Flapjack.HolLoopExp.const 3#64)])

def loopBody64_164 : HolLoopProg 64 :=
.mark loopBody64_163

def loopBody64_165 : HolLoopProg 64 :=
.seq loopBody64_164 loopBody64_91

def loopBody64_166 : HolLoopProg 64 :=
.mark loopBody64_165

def loopBody64_167 : HolLoopProg 64 :=
.seq loopBody64_1 loopBody64_166

def loopBody64_168 : HolLoopProg 64 :=
.mark loopBody64_167

def loopBody64_169 : HolLoopProg 64 :=
.seq loopBody64_168 loopBody64_107

def loopBody64_170 : HolLoopProg 64 :=
.mark loopBody64_169

def loopBody64_171 : HolLoopProg 64 :=
.seq loopBody64_170 loopBody64_111

def loopBody64_172 : HolLoopProg 64 :=
.mark loopBody64_171

def loopBody64_173 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 15 (Flapjack.RegImm.imm 0#64) loopBody64_172 loopBody64_115 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody64_174 : HolLoopProg 64 :=
.mark loopBody64_173

def loopBody64_175 : HolLoopProg 64 :=
.seq loopBody64_174 loopBody64_1

def loopBody64_176 : HolLoopProg 64 :=
.mark loopBody64_175

def loopBody64_177 : HolLoopProg 64 :=
.seq loopBody64_75 loopBody64_176

def loopBody64_178 : HolLoopProg 64 :=
.mark loopBody64_177

def loopBody64_179 : HolLoopProg 64 :=
.seq loopBody64_73 loopBody64_178

def loopBody64_180 : HolLoopProg 64 :=
.mark loopBody64_179

def loopBody64_181 : HolLoopProg 64 :=
.seq loopBody64_162 loopBody64_180

def loopBody64_182 : HolLoopProg 64 :=
.mark loopBody64_181

def loopBody64_183 : HolLoopProg 64 :=
.seq loopBody64_65 loopBody64_182

def loopBody64_184 : HolLoopProg 64 :=
.mark loopBody64_183

def loopBody64_185 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) loopBody64_184 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody64_186 : HolLoopProg 64 :=
.seq loopBody64_160 loopBody64_185

def loopBody64_187 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 6)

def loopBody64_188 : HolLoopProg 64 :=
.mark loopBody64_187

def loopBody64_189 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 7)

def loopBody64_190 : HolLoopProg 64 :=
.mark loopBody64_189

def loopBody64_191 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 0)

def loopBody64_192 : HolLoopProg 64 :=
.mark loopBody64_191

def loopBody64_193 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 10)

def loopBody64_194 : HolLoopProg 64 :=
.mark loopBody64_193

def loopBody64_195 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 8)

def loopBody64_196 : HolLoopProg 64 :=
.mark loopBody64_195

def loopBody64_197 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 9)

def loopBody64_198 : HolLoopProg 64 :=
.mark loopBody64_197

def loopBody64_199 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 13

def loopBody64_200 : HolLoopProg 64 :=
.mark loopBody64_199

def loopBody64_201 : HolLoopProg 64 :=
.call (some
  ([12],
    Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))) (some 127) ([13, 14, 15, 16, 17, 18]) (some (13, loopBody64_200, loopBody64_1, (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody64_202 : HolLoopProg 64 :=
.mark loopBody64_201

def loopBody64_203 : HolLoopProg 64 :=
.seq loopBody64_202 loopBody64_1

def loopBody64_204 : HolLoopProg 64 :=
.mark loopBody64_203

def loopBody64_205 : HolLoopProg 64 :=
.seq loopBody64_198 loopBody64_204

def loopBody64_206 : HolLoopProg 64 :=
.mark loopBody64_205

def loopBody64_207 : HolLoopProg 64 :=
.seq loopBody64_196 loopBody64_206

def loopBody64_208 : HolLoopProg 64 :=
.mark loopBody64_207

def loopBody64_209 : HolLoopProg 64 :=
.seq loopBody64_194 loopBody64_208

def loopBody64_210 : HolLoopProg 64 :=
.mark loopBody64_209

def loopBody64_211 : HolLoopProg 64 :=
.seq loopBody64_192 loopBody64_210

def loopBody64_212 : HolLoopProg 64 :=
.mark loopBody64_211

def loopBody64_213 : HolLoopProg 64 :=
.seq loopBody64_190 loopBody64_212

def loopBody64_214 : HolLoopProg 64 :=
.mark loopBody64_213

def loopBody64_215 : HolLoopProg 64 :=
.seq loopBody64_188 loopBody64_214

def loopBody64_216 : HolLoopProg 64 :=
.mark loopBody64_215

def loopBody64_217 : HolLoopProg 64 :=
.seq loopBody64_1 loopBody64_216

def loopBody64_218 : HolLoopProg 64 :=
.mark loopBody64_217

def loopBody64_219 : HolLoopProg 64 :=
.seq loopBody64_1 loopBody64_218

def loopBody64_220 : HolLoopProg 64 :=
.mark loopBody64_219

def loopBody64_221 : HolLoopProg 64 :=
.seq loopBody64_186 loopBody64_220

def loopBody64_222 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 7)

def loopBody64_223 : HolLoopProg 64 :=
.mark loopBody64_222

def loopBody64_224 : HolLoopProg 64 :=
.seq loopBody64_223 loopBody64_140

def loopBody64_225 : HolLoopProg 64 :=
.mark loopBody64_224

def loopBody64_226 : HolLoopProg 64 :=
.seq loopBody64_221 loopBody64_225

def loopBody64_227 : HolLoopProg 64 :=
.seq loopBody64_63 loopBody64_226

def loopBody64_228 : HolLoopProg 64 :=
.seq loopBody64_1 loopBody64_227

def loopBody64_229 : HolLoopProg 64 :=
.seq loopBody64_61 loopBody64_228

def loopBody64_230 : HolLoopProg 64 :=
.seq loopBody64_1 loopBody64_229

def loopBody64_231 : HolLoopProg 64 :=
.seq loopBody64_1 loopBody64_230

def loopBody64_232 : HolLoopProg 64 :=
.seq loopBody64_47 loopBody64_231

def loopBody64_233 : HolLoopProg 64 :=
.seq loopBody64_1 loopBody64_232

def loopBody64_234 : HolLoopProg 64 :=
.seq loopBody64_1 loopBody64_233

def loopBody64_235 : HolLoopProg 64 :=
.seq loopBody64_37 loopBody64_234

def loopBody64_236 : HolLoopProg 64 :=
.seq loopBody64_7 loopBody64_235

def loopBody64_237 : HolLoopProg 64 :=
.seq loopBody64_1 loopBody64_236

def loopBody64_238 : HolLoopProg 64 :=
.seq loopBody64_5 loopBody64_237

def loopBody64_239 : HolLoopProg 64 :=
.seq loopBody64_1 loopBody64_238

def loopBody64_240 : HolLoopProg 64 :=
.seq loopBody64_3 loopBody64_239

def loopBody64_241 : HolLoopProg 64 :=
.seq loopBody64_1 loopBody64_240

def output64 : Nat × List Nat × HolLoopProg 64 :=
  (128, [0, 1, 2, 3, 4, 5], loopBody64_241)
end InitECandidate.Proofs.FrontendStages.Loop
