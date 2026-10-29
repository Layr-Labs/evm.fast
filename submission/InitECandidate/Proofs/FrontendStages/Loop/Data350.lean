import InitECandidate.Proofs.FrontendStages.Loop.Translate334
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody350_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody350_1 : HolLoopProg 64 :=
.mark loopBody350_0

def loopBody350_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 184#64]),
        Flapjack.HolLoopExp.const 32#64]))

def loopBody350_3 : HolLoopProg 64 :=
.mark loopBody350_2

def loopBody350_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody350_5 : HolLoopProg 64 :=
.mark loopBody350_4

def loopBody350_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody350_7 : HolLoopProg 64 :=
.mark loopBody350_6

def loopBody350_8 : HolLoopProg 64 :=
.call (some ([1, 2], Flapjack.Spt.ls PUnit.unit)) (some 186) ([3, 4]) (some (3, loopBody350_7, loopBody350_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody350_9 : HolLoopProg 64 :=
.mark loopBody350_8

def loopBody350_10 : HolLoopProg 64 :=
.seq loopBody350_9 loopBody350_1

def loopBody350_11 : HolLoopProg 64 :=
.mark loopBody350_10

def loopBody350_12 : HolLoopProg 64 :=
.seq loopBody350_5 loopBody350_11

def loopBody350_13 : HolLoopProg 64 :=
.mark loopBody350_12

def loopBody350_14 : HolLoopProg 64 :=
.seq loopBody350_3 loopBody350_13

def loopBody350_15 : HolLoopProg 64 :=
.mark loopBody350_14

def loopBody350_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody350_17 : HolLoopProg 64 :=
.mark loopBody350_16

def loopBody350_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody350_19 : HolLoopProg 64 :=
.mark loopBody350_18

def loopBody350_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody350_21 : HolLoopProg 64 :=
.mark loopBody350_20

def loopBody350_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody350_23 : HolLoopProg 64 :=
.mark loopBody350_22

def loopBody350_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.reg 5) loopBody350_21 loopBody350_23 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)

def loopBody350_25 : HolLoopProg 64 :=
.mark loopBody350_24

def loopBody350_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody350_27 : HolLoopProg 64 :=
.mark loopBody350_26

def loopBody350_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 24#64]))

def loopBody350_29 : HolLoopProg 64 :=
.mark loopBody350_28

def loopBody350_30 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.RegImm.reg 5) loopBody350_21 loopBody350_23 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)

def loopBody350_31 : HolLoopProg 64 :=
.mark loopBody350_30

def loopBody350_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody350_33 : HolLoopProg 64 :=
.mark loopBody350_32

def loopBody350_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody350_35 : HolLoopProg 64 :=
.mark loopBody350_34

def loopBody350_36 : HolLoopProg 64 :=
.seq loopBody350_35 loopBody350_1

def loopBody350_37 : HolLoopProg 64 :=
.mark loopBody350_36

def loopBody350_38 : HolLoopProg 64 :=
.seq loopBody350_33 loopBody350_37

def loopBody350_39 : HolLoopProg 64 :=
.mark loopBody350_38

def loopBody350_40 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody350_39 loopBody350_1 (Flapjack.Spt.ls PUnit.unit)

def loopBody350_41 : HolLoopProg 64 :=
.mark loopBody350_40

def loopBody350_42 : HolLoopProg 64 :=
.seq loopBody350_41 loopBody350_1

def loopBody350_43 : HolLoopProg 64 :=
.mark loopBody350_42

def loopBody350_44 : HolLoopProg 64 :=
.seq loopBody350_27 loopBody350_43

def loopBody350_45 : HolLoopProg 64 :=
.mark loopBody350_44

def loopBody350_46 : HolLoopProg 64 :=
.seq loopBody350_31 loopBody350_45

def loopBody350_47 : HolLoopProg 64 :=
.mark loopBody350_46

def loopBody350_48 : HolLoopProg 64 :=
.seq loopBody350_29 loopBody350_47

def loopBody350_49 : HolLoopProg 64 :=
.mark loopBody350_48

def loopBody350_50 : HolLoopProg 64 :=
.seq loopBody350_23 loopBody350_49

def loopBody350_51 : HolLoopProg 64 :=
.mark loopBody350_50

def loopBody350_52 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody350_51 loopBody350_1 (Flapjack.Spt.ls PUnit.unit)

def loopBody350_53 : HolLoopProg 64 :=
.mark loopBody350_52

def loopBody350_54 : HolLoopProg 64 :=
.seq loopBody350_53 loopBody350_1

def loopBody350_55 : HolLoopProg 64 :=
.mark loopBody350_54

def loopBody350_56 : HolLoopProg 64 :=
.seq loopBody350_27 loopBody350_55

def loopBody350_57 : HolLoopProg 64 :=
.mark loopBody350_56

def loopBody350_58 : HolLoopProg 64 :=
.seq loopBody350_25 loopBody350_57

def loopBody350_59 : HolLoopProg 64 :=
.mark loopBody350_58

def loopBody350_60 : HolLoopProg 64 :=
.seq loopBody350_19 loopBody350_59

def loopBody350_61 : HolLoopProg 64 :=
.mark loopBody350_60

def loopBody350_62 : HolLoopProg 64 :=
.seq loopBody350_17 loopBody350_61

def loopBody350_63 : HolLoopProg 64 :=
.mark loopBody350_62

def loopBody350_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 176#64]),
        Flapjack.HolLoopExp.const 32#64]))

def loopBody350_65 : HolLoopProg 64 :=
.mark loopBody350_64

def loopBody350_66 : HolLoopProg 64 :=
.seq loopBody350_65 loopBody350_13

def loopBody350_67 : HolLoopProg 64 :=
.mark loopBody350_66

def loopBody350_68 : HolLoopProg 64 :=
.seq loopBody350_63 loopBody350_67

def loopBody350_69 : HolLoopProg 64 :=
.mark loopBody350_68

def loopBody350_70 : HolLoopProg 64 :=
.seq loopBody350_69 loopBody350_63

def loopBody350_71 : HolLoopProg 64 :=
.mark loopBody350_70

def loopBody350_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody350_73 : HolLoopProg 64 :=
.mark loopBody350_72

def loopBody350_74 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.ls PUnit.unit)) (some 396) ([4]) (some (4, loopBody350_73, loopBody350_1, (Flapjack.Spt.ls PUnit.unit)))

def loopBody350_75 : HolLoopProg 64 :=
.mark loopBody350_74

def loopBody350_76 : HolLoopProg 64 :=
.seq loopBody350_75 loopBody350_1

def loopBody350_77 : HolLoopProg 64 :=
.mark loopBody350_76

def loopBody350_78 : HolLoopProg 64 :=
.seq loopBody350_5 loopBody350_77

def loopBody350_79 : HolLoopProg 64 :=
.mark loopBody350_78

def loopBody350_80 : HolLoopProg 64 :=
.seq loopBody350_1 loopBody350_79

def loopBody350_81 : HolLoopProg 64 :=
.mark loopBody350_80

def loopBody350_82 : HolLoopProg 64 :=
.seq loopBody350_1 loopBody350_81

def loopBody350_83 : HolLoopProg 64 :=
.mark loopBody350_82

def loopBody350_84 : HolLoopProg 64 :=
.seq loopBody350_71 loopBody350_83

def loopBody350_85 : HolLoopProg 64 :=
.mark loopBody350_84

def loopBody350_86 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.ln)) (some 403) ([4]) (some (4, loopBody350_73, loopBody350_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody350_87 : HolLoopProg 64 :=
.mark loopBody350_86

def loopBody350_88 : HolLoopProg 64 :=
.seq loopBody350_87 loopBody350_1

def loopBody350_89 : HolLoopProg 64 :=
.mark loopBody350_88

def loopBody350_90 : HolLoopProg 64 :=
.seq loopBody350_5 loopBody350_89

def loopBody350_91 : HolLoopProg 64 :=
.mark loopBody350_90

def loopBody350_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody350_93 : HolLoopProg 64 :=
.mark loopBody350_92

def loopBody350_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody350_95 : HolLoopProg 64 :=
.mark loopBody350_94

def loopBody350_96 : HolLoopProg 64 :=
.seq loopBody350_95 loopBody350_1

def loopBody350_97 : HolLoopProg 64 :=
.mark loopBody350_96

def loopBody350_98 : HolLoopProg 64 :=
.seq loopBody350_93 loopBody350_97

def loopBody350_99 : HolLoopProg 64 :=
.mark loopBody350_98

def loopBody350_100 : HolLoopProg 64 :=
.seq loopBody350_91 loopBody350_99

def loopBody350_101 : HolLoopProg 64 :=
.mark loopBody350_100

def loopBody350_102 : HolLoopProg 64 :=
.seq loopBody350_1 loopBody350_101

def loopBody350_103 : HolLoopProg 64 :=
.mark loopBody350_102

def loopBody350_104 : HolLoopProg 64 :=
.seq loopBody350_1 loopBody350_103

def loopBody350_105 : HolLoopProg 64 :=
.mark loopBody350_104

def loopBody350_106 : HolLoopProg 64 :=
.seq loopBody350_85 loopBody350_105

def loopBody350_107 : HolLoopProg 64 :=
.mark loopBody350_106

def loopBody350_108 : HolLoopProg 64 :=
.seq loopBody350_15 loopBody350_107

def loopBody350_109 : HolLoopProg 64 :=
.mark loopBody350_108

def loopBody350_110 : HolLoopProg 64 :=
.seq loopBody350_1 loopBody350_109

def loopBody350_111 : HolLoopProg 64 :=
.mark loopBody350_110

def loopBody350_112 : HolLoopProg 64 :=
.seq loopBody350_1 loopBody350_111

def loopBody350_113 : HolLoopProg 64 :=
.mark loopBody350_112

def loopBody350_114 : HolLoopProg 64 :=
.seq loopBody350_1 loopBody350_113

def loopBody350_115 : HolLoopProg 64 :=
.mark loopBody350_114

def loopBody350_116 : HolLoopProg 64 :=
.seq loopBody350_1 loopBody350_115

def loopBody350_117 : HolLoopProg 64 :=
.mark loopBody350_116

def output350 : Nat × List Nat × HolLoopProg 64 :=
  (414, [0], loopBody350_117)
end InitECandidate.Proofs.FrontendStages.Loop
