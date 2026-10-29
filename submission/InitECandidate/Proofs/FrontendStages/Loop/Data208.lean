import InitECandidate.Proofs.FrontendStages.Loop.Translate192
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody208_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody208_1 : HolLoopProg 64 :=
.mark loopBody208_0

def loopBody208_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 4#64)]))

def loopBody208_3 : HolLoopProg 64 :=
.mark loopBody208_2

def loopBody208_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 4#64),
        Flapjack.HolLoopExp.const 8#64]))

def loopBody208_5 : HolLoopProg 64 :=
.mark loopBody208_4

def loopBody208_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody208_7 : HolLoopProg 64 :=
.mark loopBody208_6

def loopBody208_8 : HolLoopProg 64 :=
.call (some ([3, 4, 5, 6], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 161) ([7, 8]) (some (7, loopBody208_7, loopBody208_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))

def loopBody208_9 : HolLoopProg 64 :=
.mark loopBody208_8

def loopBody208_10 : HolLoopProg 64 :=
.seq loopBody208_9 loopBody208_1

def loopBody208_11 : HolLoopProg 64 :=
.mark loopBody208_10

def loopBody208_12 : HolLoopProg 64 :=
.seq loopBody208_5 loopBody208_11

def loopBody208_13 : HolLoopProg 64 :=
.mark loopBody208_12

def loopBody208_14 : HolLoopProg 64 :=
.seq loopBody208_3 loopBody208_13

def loopBody208_15 : HolLoopProg 64 :=
.mark loopBody208_14

def loopBody208_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody208_17 : HolLoopProg 64 :=
.mark loopBody208_16

def loopBody208_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody208_19 : HolLoopProg 64 :=
.mark loopBody208_18

def loopBody208_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody208_21 : HolLoopProg 64 :=
.mark loopBody208_20

def loopBody208_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody208_23 : HolLoopProg 64 :=
.mark loopBody208_22

def loopBody208_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.reg 9) loopBody208_21 loopBody208_23 (Flapjack.Spt.bn
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody208_25 : HolLoopProg 64 :=
.mark loopBody208_24

def loopBody208_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody208_27 : HolLoopProg 64 :=
.mark loopBody208_26

def loopBody208_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 6#64)

def loopBody208_29 : HolLoopProg 64 :=
.mark loopBody208_28

def loopBody208_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 7)

def loopBody208_31 : HolLoopProg 64 :=
.mark loopBody208_30

def loopBody208_32 : HolLoopProg 64 :=
.seq loopBody208_31 loopBody208_1

def loopBody208_33 : HolLoopProg 64 :=
.mark loopBody208_32

def loopBody208_34 : HolLoopProg 64 :=
.seq loopBody208_33 loopBody208_1

def loopBody208_35 : HolLoopProg 64 :=
.mark loopBody208_34

def loopBody208_36 : HolLoopProg 64 :=
.seq loopBody208_29 loopBody208_35

def loopBody208_37 : HolLoopProg 64 :=
.mark loopBody208_36

def loopBody208_38 : HolLoopProg 64 :=
.seq loopBody208_1 loopBody208_37

def loopBody208_39 : HolLoopProg 64 :=
.mark loopBody208_38

def loopBody208_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 3#64)

def loopBody208_41 : HolLoopProg 64 :=
.mark loopBody208_40

def loopBody208_42 : HolLoopProg 64 :=
.seq loopBody208_41 loopBody208_7

def loopBody208_43 : HolLoopProg 64 :=
.mark loopBody208_42

def loopBody208_44 : HolLoopProg 64 :=
.seq loopBody208_39 loopBody208_43

def loopBody208_45 : HolLoopProg 64 :=
.mark loopBody208_44

def loopBody208_46 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody208_45 loopBody208_1 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody208_47 : HolLoopProg 64 :=
.mark loopBody208_46

def loopBody208_48 : HolLoopProg 64 :=
.seq loopBody208_47 loopBody208_1

def loopBody208_49 : HolLoopProg 64 :=
.mark loopBody208_48

def loopBody208_50 : HolLoopProg 64 :=
.seq loopBody208_27 loopBody208_49

def loopBody208_51 : HolLoopProg 64 :=
.mark loopBody208_50

def loopBody208_52 : HolLoopProg 64 :=
.seq loopBody208_25 loopBody208_51

def loopBody208_53 : HolLoopProg 64 :=
.mark loopBody208_52

def loopBody208_54 : HolLoopProg 64 :=
.seq loopBody208_19 loopBody208_53

def loopBody208_55 : HolLoopProg 64 :=
.mark loopBody208_54

def loopBody208_56 : HolLoopProg 64 :=
.seq loopBody208_17 loopBody208_55

def loopBody208_57 : HolLoopProg 64 :=
.mark loopBody208_56

def loopBody208_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody208_59 : HolLoopProg 64 :=
.mark loopBody208_58

def loopBody208_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 2)

def loopBody208_61 : HolLoopProg 64 :=
.mark loopBody208_60

def loopBody208_62 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.reg 9) loopBody208_21 loopBody208_23 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  Flapjack.Spt.ln)

def loopBody208_63 : HolLoopProg 64 :=
.mark loopBody208_62

def loopBody208_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 7#64)

def loopBody208_65 : HolLoopProg 64 :=
.mark loopBody208_64

def loopBody208_66 : HolLoopProg 64 :=
.seq loopBody208_65 loopBody208_35

def loopBody208_67 : HolLoopProg 64 :=
.mark loopBody208_66

def loopBody208_68 : HolLoopProg 64 :=
.seq loopBody208_1 loopBody208_67

def loopBody208_69 : HolLoopProg 64 :=
.mark loopBody208_68

def loopBody208_70 : HolLoopProg 64 :=
.seq loopBody208_69 loopBody208_43

def loopBody208_71 : HolLoopProg 64 :=
.mark loopBody208_70

def loopBody208_72 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody208_71 loopBody208_1 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)

def loopBody208_73 : HolLoopProg 64 :=
.mark loopBody208_72

def loopBody208_74 : HolLoopProg 64 :=
.seq loopBody208_73 loopBody208_1

def loopBody208_75 : HolLoopProg 64 :=
.mark loopBody208_74

def loopBody208_76 : HolLoopProg 64 :=
.seq loopBody208_27 loopBody208_75

def loopBody208_77 : HolLoopProg 64 :=
.mark loopBody208_76

def loopBody208_78 : HolLoopProg 64 :=
.seq loopBody208_63 loopBody208_77

def loopBody208_79 : HolLoopProg 64 :=
.mark loopBody208_78

def loopBody208_80 : HolLoopProg 64 :=
.seq loopBody208_61 loopBody208_79

def loopBody208_81 : HolLoopProg 64 :=
.mark loopBody208_80

def loopBody208_82 : HolLoopProg 64 :=
.seq loopBody208_59 loopBody208_81

def loopBody208_83 : HolLoopProg 64 :=
.mark loopBody208_82

def loopBody208_84 : HolLoopProg 64 :=
.seq loopBody208_57 loopBody208_83

def loopBody208_85 : HolLoopProg 64 :=
.mark loopBody208_84

def loopBody208_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody208_87 : HolLoopProg 64 :=
.mark loopBody208_86

def loopBody208_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [7]

def loopBody208_89 : HolLoopProg 64 :=
.mark loopBody208_88

def loopBody208_90 : HolLoopProg 64 :=
.seq loopBody208_89 loopBody208_1

def loopBody208_91 : HolLoopProg 64 :=
.mark loopBody208_90

def loopBody208_92 : HolLoopProg 64 :=
.seq loopBody208_87 loopBody208_91

def loopBody208_93 : HolLoopProg 64 :=
.mark loopBody208_92

def loopBody208_94 : HolLoopProg 64 :=
.seq loopBody208_85 loopBody208_93

def loopBody208_95 : HolLoopProg 64 :=
.mark loopBody208_94

def loopBody208_96 : HolLoopProg 64 :=
.seq loopBody208_15 loopBody208_95

def loopBody208_97 : HolLoopProg 64 :=
.mark loopBody208_96

def loopBody208_98 : HolLoopProg 64 :=
.seq loopBody208_1 loopBody208_97

def loopBody208_99 : HolLoopProg 64 :=
.mark loopBody208_98

def loopBody208_100 : HolLoopProg 64 :=
.seq loopBody208_1 loopBody208_99

def loopBody208_101 : HolLoopProg 64 :=
.mark loopBody208_100

def loopBody208_102 : HolLoopProg 64 :=
.seq loopBody208_1 loopBody208_101

def loopBody208_103 : HolLoopProg 64 :=
.mark loopBody208_102

def loopBody208_104 : HolLoopProg 64 :=
.seq loopBody208_1 loopBody208_103

def loopBody208_105 : HolLoopProg 64 :=
.mark loopBody208_104

def loopBody208_106 : HolLoopProg 64 :=
.seq loopBody208_1 loopBody208_105

def loopBody208_107 : HolLoopProg 64 :=
.mark loopBody208_106

def loopBody208_108 : HolLoopProg 64 :=
.seq loopBody208_1 loopBody208_107

def loopBody208_109 : HolLoopProg 64 :=
.mark loopBody208_108

def loopBody208_110 : HolLoopProg 64 :=
.seq loopBody208_1 loopBody208_109

def loopBody208_111 : HolLoopProg 64 :=
.mark loopBody208_110

def loopBody208_112 : HolLoopProg 64 :=
.seq loopBody208_1 loopBody208_111

def loopBody208_113 : HolLoopProg 64 :=
.mark loopBody208_112

def output208 : Nat × List Nat × HolLoopProg 64 :=
  (272, [0, 1, 2], loopBody208_113)
end InitECandidate.Proofs.FrontendStages.Loop
