import InitECandidate.Proofs.FrontendStages.Loop.Translate259
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody275_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody275_1 : HolLoopProg 64 :=
.mark loopBody275_0

def loopBody275_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 4#64)]))

def loopBody275_3 : HolLoopProg 64 :=
.mark loopBody275_2

def loopBody275_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 4#64),
        Flapjack.HolLoopExp.const 8#64]))

def loopBody275_5 : HolLoopProg 64 :=
.mark loopBody275_4

def loopBody275_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody275_7 : HolLoopProg 64 :=
.mark loopBody275_6

def loopBody275_8 : HolLoopProg 64 :=
.call (some ([3, 4, 5, 6], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 161) ([7, 8]) (some (7, loopBody275_7, loopBody275_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))

def loopBody275_9 : HolLoopProg 64 :=
.mark loopBody275_8

def loopBody275_10 : HolLoopProg 64 :=
.seq loopBody275_9 loopBody275_1

def loopBody275_11 : HolLoopProg 64 :=
.mark loopBody275_10

def loopBody275_12 : HolLoopProg 64 :=
.seq loopBody275_5 loopBody275_11

def loopBody275_13 : HolLoopProg 64 :=
.mark loopBody275_12

def loopBody275_14 : HolLoopProg 64 :=
.seq loopBody275_3 loopBody275_13

def loopBody275_15 : HolLoopProg 64 :=
.mark loopBody275_14

def loopBody275_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody275_17 : HolLoopProg 64 :=
.mark loopBody275_16

def loopBody275_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody275_19 : HolLoopProg 64 :=
.mark loopBody275_18

def loopBody275_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody275_21 : HolLoopProg 64 :=
.mark loopBody275_20

def loopBody275_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody275_23 : HolLoopProg 64 :=
.mark loopBody275_22

def loopBody275_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.reg 9) loopBody275_21 loopBody275_23 (Flapjack.Spt.bn
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody275_25 : HolLoopProg 64 :=
.mark loopBody275_24

def loopBody275_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody275_27 : HolLoopProg 64 :=
.mark loopBody275_26

def loopBody275_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 15#64)

def loopBody275_29 : HolLoopProg 64 :=
.mark loopBody275_28

def loopBody275_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 7)

def loopBody275_31 : HolLoopProg 64 :=
.mark loopBody275_30

def loopBody275_32 : HolLoopProg 64 :=
.seq loopBody275_31 loopBody275_1

def loopBody275_33 : HolLoopProg 64 :=
.mark loopBody275_32

def loopBody275_34 : HolLoopProg 64 :=
.seq loopBody275_33 loopBody275_1

def loopBody275_35 : HolLoopProg 64 :=
.mark loopBody275_34

def loopBody275_36 : HolLoopProg 64 :=
.seq loopBody275_29 loopBody275_35

def loopBody275_37 : HolLoopProg 64 :=
.mark loopBody275_36

def loopBody275_38 : HolLoopProg 64 :=
.seq loopBody275_1 loopBody275_37

def loopBody275_39 : HolLoopProg 64 :=
.mark loopBody275_38

def loopBody275_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 6#64)

def loopBody275_41 : HolLoopProg 64 :=
.mark loopBody275_40

def loopBody275_42 : HolLoopProg 64 :=
.seq loopBody275_41 loopBody275_7

def loopBody275_43 : HolLoopProg 64 :=
.mark loopBody275_42

def loopBody275_44 : HolLoopProg 64 :=
.seq loopBody275_39 loopBody275_43

def loopBody275_45 : HolLoopProg 64 :=
.mark loopBody275_44

def loopBody275_46 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody275_45 loopBody275_1 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody275_47 : HolLoopProg 64 :=
.mark loopBody275_46

def loopBody275_48 : HolLoopProg 64 :=
.seq loopBody275_47 loopBody275_1

def loopBody275_49 : HolLoopProg 64 :=
.mark loopBody275_48

def loopBody275_50 : HolLoopProg 64 :=
.seq loopBody275_27 loopBody275_49

def loopBody275_51 : HolLoopProg 64 :=
.mark loopBody275_50

def loopBody275_52 : HolLoopProg 64 :=
.seq loopBody275_25 loopBody275_51

def loopBody275_53 : HolLoopProg 64 :=
.mark loopBody275_52

def loopBody275_54 : HolLoopProg 64 :=
.seq loopBody275_19 loopBody275_53

def loopBody275_55 : HolLoopProg 64 :=
.mark loopBody275_54

def loopBody275_56 : HolLoopProg 64 :=
.seq loopBody275_17 loopBody275_55

def loopBody275_57 : HolLoopProg 64 :=
.mark loopBody275_56

def loopBody275_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody275_59 : HolLoopProg 64 :=
.mark loopBody275_58

def loopBody275_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 2)

def loopBody275_61 : HolLoopProg 64 :=
.mark loopBody275_60

def loopBody275_62 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.reg 9) loopBody275_21 loopBody275_23 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  Flapjack.Spt.ln)

def loopBody275_63 : HolLoopProg 64 :=
.mark loopBody275_62

def loopBody275_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 16#64)

def loopBody275_65 : HolLoopProg 64 :=
.mark loopBody275_64

def loopBody275_66 : HolLoopProg 64 :=
.seq loopBody275_65 loopBody275_35

def loopBody275_67 : HolLoopProg 64 :=
.mark loopBody275_66

def loopBody275_68 : HolLoopProg 64 :=
.seq loopBody275_1 loopBody275_67

def loopBody275_69 : HolLoopProg 64 :=
.mark loopBody275_68

def loopBody275_70 : HolLoopProg 64 :=
.seq loopBody275_69 loopBody275_43

def loopBody275_71 : HolLoopProg 64 :=
.mark loopBody275_70

def loopBody275_72 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody275_71 loopBody275_1 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)

def loopBody275_73 : HolLoopProg 64 :=
.mark loopBody275_72

def loopBody275_74 : HolLoopProg 64 :=
.seq loopBody275_73 loopBody275_1

def loopBody275_75 : HolLoopProg 64 :=
.mark loopBody275_74

def loopBody275_76 : HolLoopProg 64 :=
.seq loopBody275_27 loopBody275_75

def loopBody275_77 : HolLoopProg 64 :=
.mark loopBody275_76

def loopBody275_78 : HolLoopProg 64 :=
.seq loopBody275_63 loopBody275_77

def loopBody275_79 : HolLoopProg 64 :=
.mark loopBody275_78

def loopBody275_80 : HolLoopProg 64 :=
.seq loopBody275_61 loopBody275_79

def loopBody275_81 : HolLoopProg 64 :=
.mark loopBody275_80

def loopBody275_82 : HolLoopProg 64 :=
.seq loopBody275_59 loopBody275_81

def loopBody275_83 : HolLoopProg 64 :=
.mark loopBody275_82

def loopBody275_84 : HolLoopProg 64 :=
.seq loopBody275_57 loopBody275_83

def loopBody275_85 : HolLoopProg 64 :=
.mark loopBody275_84

def loopBody275_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody275_87 : HolLoopProg 64 :=
.mark loopBody275_86

def loopBody275_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [7]

def loopBody275_89 : HolLoopProg 64 :=
.mark loopBody275_88

def loopBody275_90 : HolLoopProg 64 :=
.seq loopBody275_89 loopBody275_1

def loopBody275_91 : HolLoopProg 64 :=
.mark loopBody275_90

def loopBody275_92 : HolLoopProg 64 :=
.seq loopBody275_87 loopBody275_91

def loopBody275_93 : HolLoopProg 64 :=
.mark loopBody275_92

def loopBody275_94 : HolLoopProg 64 :=
.seq loopBody275_85 loopBody275_93

def loopBody275_95 : HolLoopProg 64 :=
.mark loopBody275_94

def loopBody275_96 : HolLoopProg 64 :=
.seq loopBody275_15 loopBody275_95

def loopBody275_97 : HolLoopProg 64 :=
.mark loopBody275_96

def loopBody275_98 : HolLoopProg 64 :=
.seq loopBody275_1 loopBody275_97

def loopBody275_99 : HolLoopProg 64 :=
.mark loopBody275_98

def loopBody275_100 : HolLoopProg 64 :=
.seq loopBody275_1 loopBody275_99

def loopBody275_101 : HolLoopProg 64 :=
.mark loopBody275_100

def loopBody275_102 : HolLoopProg 64 :=
.seq loopBody275_1 loopBody275_101

def loopBody275_103 : HolLoopProg 64 :=
.mark loopBody275_102

def loopBody275_104 : HolLoopProg 64 :=
.seq loopBody275_1 loopBody275_103

def loopBody275_105 : HolLoopProg 64 :=
.mark loopBody275_104

def loopBody275_106 : HolLoopProg 64 :=
.seq loopBody275_1 loopBody275_105

def loopBody275_107 : HolLoopProg 64 :=
.mark loopBody275_106

def loopBody275_108 : HolLoopProg 64 :=
.seq loopBody275_1 loopBody275_107

def loopBody275_109 : HolLoopProg 64 :=
.mark loopBody275_108

def loopBody275_110 : HolLoopProg 64 :=
.seq loopBody275_1 loopBody275_109

def loopBody275_111 : HolLoopProg 64 :=
.mark loopBody275_110

def loopBody275_112 : HolLoopProg 64 :=
.seq loopBody275_1 loopBody275_111

def loopBody275_113 : HolLoopProg 64 :=
.mark loopBody275_112

def output275 : Nat × List Nat × HolLoopProg 64 :=
  (339, [0, 1, 2], loopBody275_113)
end InitECandidate.Proofs.FrontendStages.Loop
