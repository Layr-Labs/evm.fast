import InitECandidate.Proofs.FrontendStages.Loop.Translate175
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody191_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody191_1 : HolLoopProg 64 :=
.mark loopBody191_0

def loopBody191_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody191_3 : HolLoopProg 64 :=
.mark loopBody191_2

def loopBody191_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody191_5 : HolLoopProg 64 :=
.mark loopBody191_4

def loopBody191_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody191_7 : HolLoopProg 64 :=
.mark loopBody191_6

def loopBody191_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody191_9 : HolLoopProg 64 :=
.mark loopBody191_8

def loopBody191_10 : HolLoopProg 64 :=
.call (some
  ([4, 5],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 251) ([6, 7, 8]) (some (6, loopBody191_9, loopBody191_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody191_11 : HolLoopProg 64 :=
.mark loopBody191_10

def loopBody191_12 : HolLoopProg 64 :=
.seq loopBody191_11 loopBody191_1

def loopBody191_13 : HolLoopProg 64 :=
.mark loopBody191_12

def loopBody191_14 : HolLoopProg 64 :=
.seq loopBody191_7 loopBody191_13

def loopBody191_15 : HolLoopProg 64 :=
.mark loopBody191_14

def loopBody191_16 : HolLoopProg 64 :=
.seq loopBody191_5 loopBody191_15

def loopBody191_17 : HolLoopProg 64 :=
.mark loopBody191_16

def loopBody191_18 : HolLoopProg 64 :=
.seq loopBody191_3 loopBody191_17

def loopBody191_19 : HolLoopProg 64 :=
.mark loopBody191_18

def loopBody191_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody191_21 : HolLoopProg 64 :=
.mark loopBody191_20

def loopBody191_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody191_23 : HolLoopProg 64 :=
.mark loopBody191_22

def loopBody191_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 5)

def loopBody191_25 : HolLoopProg 64 :=
.mark loopBody191_24

def loopBody191_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody191_27 : HolLoopProg 64 :=
.mark loopBody191_26

def loopBody191_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody191_29 : HolLoopProg 64 :=
.mark loopBody191_28

def loopBody191_30 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.RegImm.reg 9) loopBody191_27 loopBody191_29 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody191_31 : HolLoopProg 64 :=
.mark loopBody191_30

def loopBody191_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody191_33 : HolLoopProg 64 :=
.mark loopBody191_32

def loopBody191_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody191_35 : HolLoopProg 64 :=
.mark loopBody191_34

def loopBody191_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 4,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 6) (Flapjack.HolLoopExp.const 4#64),
        Flapjack.HolLoopExp.const 8#64]))

def loopBody191_37 : HolLoopProg 64 :=
.mark loopBody191_36

def loopBody191_38 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.RegImm.reg 9) loopBody191_27 loopBody191_29 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody191_39 : HolLoopProg 64 :=
.mark loopBody191_38

def loopBody191_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 70#64)

def loopBody191_41 : HolLoopProg 64 :=
.mark loopBody191_40

def loopBody191_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody191_43 : HolLoopProg 64 :=
.mark loopBody191_42

def loopBody191_44 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 245) ([8]) (some (8, loopBody191_43, loopBody191_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody191_45 : HolLoopProg 64 :=
.mark loopBody191_44

def loopBody191_46 : HolLoopProg 64 :=
.seq loopBody191_45 loopBody191_1

def loopBody191_47 : HolLoopProg 64 :=
.mark loopBody191_46

def loopBody191_48 : HolLoopProg 64 :=
.seq loopBody191_41 loopBody191_47

def loopBody191_49 : HolLoopProg 64 :=
.mark loopBody191_48

def loopBody191_50 : HolLoopProg 64 :=
.seq loopBody191_1 loopBody191_49

def loopBody191_51 : HolLoopProg 64 :=
.mark loopBody191_50

def loopBody191_52 : HolLoopProg 64 :=
.seq loopBody191_1 loopBody191_51

def loopBody191_53 : HolLoopProg 64 :=
.mark loopBody191_52

def loopBody191_54 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody191_53 loopBody191_1 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody191_55 : HolLoopProg 64 :=
.mark loopBody191_54

def loopBody191_56 : HolLoopProg 64 :=
.seq loopBody191_55 loopBody191_1

def loopBody191_57 : HolLoopProg 64 :=
.mark loopBody191_56

def loopBody191_58 : HolLoopProg 64 :=
.seq loopBody191_33 loopBody191_57

def loopBody191_59 : HolLoopProg 64 :=
.mark loopBody191_58

def loopBody191_60 : HolLoopProg 64 :=
.seq loopBody191_39 loopBody191_59

def loopBody191_61 : HolLoopProg 64 :=
.mark loopBody191_60

def loopBody191_62 : HolLoopProg 64 :=
.seq loopBody191_37 loopBody191_61

def loopBody191_63 : HolLoopProg 64 :=
.mark loopBody191_62

def loopBody191_64 : HolLoopProg 64 :=
.seq loopBody191_35 loopBody191_63

def loopBody191_65 : HolLoopProg 64 :=
.mark loopBody191_64

def loopBody191_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 1#64])

def loopBody191_67 : HolLoopProg 64 :=
.mark loopBody191_66

def loopBody191_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 7)

def loopBody191_69 : HolLoopProg 64 :=
.mark loopBody191_68

def loopBody191_70 : HolLoopProg 64 :=
.seq loopBody191_69 loopBody191_1

def loopBody191_71 : HolLoopProg 64 :=
.mark loopBody191_70

def loopBody191_72 : HolLoopProg 64 :=
.seq loopBody191_71 loopBody191_1

def loopBody191_73 : HolLoopProg 64 :=
.mark loopBody191_72

def loopBody191_74 : HolLoopProg 64 :=
.seq loopBody191_67 loopBody191_73

def loopBody191_75 : HolLoopProg 64 :=
.mark loopBody191_74

def loopBody191_76 : HolLoopProg 64 :=
.seq loopBody191_1 loopBody191_75

def loopBody191_77 : HolLoopProg 64 :=
.mark loopBody191_76

def loopBody191_78 : HolLoopProg 64 :=
.seq loopBody191_65 loopBody191_77

def loopBody191_79 : HolLoopProg 64 :=
.mark loopBody191_78

def loopBody191_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody191_81 : HolLoopProg 64 :=
.mark loopBody191_80

def loopBody191_82 : HolLoopProg 64 :=
.seq loopBody191_79 loopBody191_81

def loopBody191_83 : HolLoopProg 64 :=
.mark loopBody191_82

def loopBody191_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody191_85 : HolLoopProg 64 :=
.mark loopBody191_84

def loopBody191_86 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody191_83 loopBody191_85 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody191_87 : HolLoopProg 64 :=
.mark loopBody191_86

def loopBody191_88 : HolLoopProg 64 :=
.seq loopBody191_87 loopBody191_1

def loopBody191_89 : HolLoopProg 64 :=
.mark loopBody191_88

def loopBody191_90 : HolLoopProg 64 :=
.seq loopBody191_33 loopBody191_89

def loopBody191_91 : HolLoopProg 64 :=
.mark loopBody191_90

def loopBody191_92 : HolLoopProg 64 :=
.seq loopBody191_31 loopBody191_91

def loopBody191_93 : HolLoopProg 64 :=
.mark loopBody191_92

def loopBody191_94 : HolLoopProg 64 :=
.seq loopBody191_25 loopBody191_93

def loopBody191_95 : HolLoopProg 64 :=
.mark loopBody191_94

def loopBody191_96 : HolLoopProg 64 :=
.seq loopBody191_23 loopBody191_95

def loopBody191_97 : HolLoopProg 64 :=
.mark loopBody191_96

def loopBody191_98 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody191_97 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody191_99 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody191_100 : HolLoopProg 64 :=
.mark loopBody191_99

def loopBody191_101 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody191_102 : HolLoopProg 64 :=
.mark loopBody191_101

def loopBody191_103 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [7, 8]

def loopBody191_104 : HolLoopProg 64 :=
.mark loopBody191_103

def loopBody191_105 : HolLoopProg 64 :=
.seq loopBody191_104 loopBody191_1

def loopBody191_106 : HolLoopProg 64 :=
.mark loopBody191_105

def loopBody191_107 : HolLoopProg 64 :=
.seq loopBody191_102 loopBody191_106

def loopBody191_108 : HolLoopProg 64 :=
.mark loopBody191_107

def loopBody191_109 : HolLoopProg 64 :=
.seq loopBody191_100 loopBody191_108

def loopBody191_110 : HolLoopProg 64 :=
.mark loopBody191_109

def loopBody191_111 : HolLoopProg 64 :=
.seq loopBody191_98 loopBody191_110

def loopBody191_112 : HolLoopProg 64 :=
.seq loopBody191_21 loopBody191_111

def loopBody191_113 : HolLoopProg 64 :=
.seq loopBody191_1 loopBody191_112

def loopBody191_114 : HolLoopProg 64 :=
.seq loopBody191_19 loopBody191_113

def loopBody191_115 : HolLoopProg 64 :=
.seq loopBody191_1 loopBody191_114

def loopBody191_116 : HolLoopProg 64 :=
.seq loopBody191_1 loopBody191_115

def loopBody191_117 : HolLoopProg 64 :=
.seq loopBody191_1 loopBody191_116

def loopBody191_118 : HolLoopProg 64 :=
.seq loopBody191_1 loopBody191_117

def output191 : Nat × List Nat × HolLoopProg 64 :=
  (255, [0, 1, 2, 3], loopBody191_118)
end InitECandidate.Proofs.FrontendStages.Loop
