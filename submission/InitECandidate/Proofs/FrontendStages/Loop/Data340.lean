import InitECandidate.Proofs.FrontendStages.Loop.Translate324
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody340_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody340_1 : HolLoopProg 64 :=
.mark loopBody340_0

def loopBody340_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 184#64]),
        Flapjack.HolLoopExp.const 8#64]))

def loopBody340_3 : HolLoopProg 64 :=
.mark loopBody340_2

def loopBody340_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody340_5 : HolLoopProg 64 :=
.mark loopBody340_4

def loopBody340_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody340_7 : HolLoopProg 64 :=
.mark loopBody340_6

def loopBody340_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody340_9 : HolLoopProg 64 :=
.mark loopBody340_8

def loopBody340_10 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 192) ([2, 3, 4]) (some (2, loopBody340_9, loopBody340_1, (Flapjack.Spt.ls PUnit.unit)))

def loopBody340_11 : HolLoopProg 64 :=
.mark loopBody340_10

def loopBody340_12 : HolLoopProg 64 :=
.seq loopBody340_11 loopBody340_1

def loopBody340_13 : HolLoopProg 64 :=
.mark loopBody340_12

def loopBody340_14 : HolLoopProg 64 :=
.seq loopBody340_7 loopBody340_13

def loopBody340_15 : HolLoopProg 64 :=
.mark loopBody340_14

def loopBody340_16 : HolLoopProg 64 :=
.seq loopBody340_5 loopBody340_15

def loopBody340_17 : HolLoopProg 64 :=
.mark loopBody340_16

def loopBody340_18 : HolLoopProg 64 :=
.seq loopBody340_3 loopBody340_17

def loopBody340_19 : HolLoopProg 64 :=
.mark loopBody340_18

def loopBody340_20 : HolLoopProg 64 :=
.seq loopBody340_1 loopBody340_19

def loopBody340_21 : HolLoopProg 64 :=
.mark loopBody340_20

def loopBody340_22 : HolLoopProg 64 :=
.seq loopBody340_1 loopBody340_21

def loopBody340_23 : HolLoopProg 64 :=
.mark loopBody340_22

def loopBody340_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 176#64]),
        Flapjack.HolLoopExp.const 16#64]))

def loopBody340_25 : HolLoopProg 64 :=
.mark loopBody340_24

def loopBody340_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody340_27 : HolLoopProg 64 :=
.mark loopBody340_26

def loopBody340_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody340_29 : HolLoopProg 64 :=
.mark loopBody340_28

def loopBody340_30 : HolLoopProg 64 :=
.call (some ([1, 2], Flapjack.Spt.ls PUnit.unit)) (some 186) ([3, 4]) (some (3, loopBody340_29, loopBody340_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody340_31 : HolLoopProg 64 :=
.mark loopBody340_30

def loopBody340_32 : HolLoopProg 64 :=
.seq loopBody340_31 loopBody340_1

def loopBody340_33 : HolLoopProg 64 :=
.mark loopBody340_32

def loopBody340_34 : HolLoopProg 64 :=
.seq loopBody340_27 loopBody340_33

def loopBody340_35 : HolLoopProg 64 :=
.mark loopBody340_34

def loopBody340_36 : HolLoopProg 64 :=
.seq loopBody340_25 loopBody340_35

def loopBody340_37 : HolLoopProg 64 :=
.mark loopBody340_36

def loopBody340_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody340_39 : HolLoopProg 64 :=
.mark loopBody340_38

def loopBody340_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody340_41 : HolLoopProg 64 :=
.mark loopBody340_40

def loopBody340_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody340_43 : HolLoopProg 64 :=
.mark loopBody340_42

def loopBody340_44 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.reg 5) loopBody340_7 loopBody340_43 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)

def loopBody340_45 : HolLoopProg 64 :=
.mark loopBody340_44

def loopBody340_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody340_47 : HolLoopProg 64 :=
.mark loopBody340_46

def loopBody340_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 2)

def loopBody340_49 : HolLoopProg 64 :=
.mark loopBody340_48

def loopBody340_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody340_51 : HolLoopProg 64 :=
.mark loopBody340_50

def loopBody340_52 : HolLoopProg 64 :=
.seq loopBody340_51 loopBody340_1

def loopBody340_53 : HolLoopProg 64 :=
.mark loopBody340_52

def loopBody340_54 : HolLoopProg 64 :=
.seq loopBody340_49 loopBody340_53

def loopBody340_55 : HolLoopProg 64 :=
.mark loopBody340_54

def loopBody340_56 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody340_55 loopBody340_1 (Flapjack.Spt.ls PUnit.unit)

def loopBody340_57 : HolLoopProg 64 :=
.mark loopBody340_56

def loopBody340_58 : HolLoopProg 64 :=
.seq loopBody340_57 loopBody340_1

def loopBody340_59 : HolLoopProg 64 :=
.mark loopBody340_58

def loopBody340_60 : HolLoopProg 64 :=
.seq loopBody340_47 loopBody340_59

def loopBody340_61 : HolLoopProg 64 :=
.mark loopBody340_60

def loopBody340_62 : HolLoopProg 64 :=
.seq loopBody340_45 loopBody340_61

def loopBody340_63 : HolLoopProg 64 :=
.mark loopBody340_62

def loopBody340_64 : HolLoopProg 64 :=
.seq loopBody340_41 loopBody340_63

def loopBody340_65 : HolLoopProg 64 :=
.mark loopBody340_64

def loopBody340_66 : HolLoopProg 64 :=
.seq loopBody340_39 loopBody340_65

def loopBody340_67 : HolLoopProg 64 :=
.mark loopBody340_66

def loopBody340_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody340_69 : HolLoopProg 64 :=
.mark loopBody340_68

def loopBody340_70 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.ls PUnit.unit)) (some 396) ([4]) (some (4, loopBody340_69, loopBody340_1, (Flapjack.Spt.ls PUnit.unit)))

def loopBody340_71 : HolLoopProg 64 :=
.mark loopBody340_70

def loopBody340_72 : HolLoopProg 64 :=
.seq loopBody340_71 loopBody340_1

def loopBody340_73 : HolLoopProg 64 :=
.mark loopBody340_72

def loopBody340_74 : HolLoopProg 64 :=
.seq loopBody340_27 loopBody340_73

def loopBody340_75 : HolLoopProg 64 :=
.mark loopBody340_74

def loopBody340_76 : HolLoopProg 64 :=
.seq loopBody340_1 loopBody340_75

def loopBody340_77 : HolLoopProg 64 :=
.mark loopBody340_76

def loopBody340_78 : HolLoopProg 64 :=
.seq loopBody340_1 loopBody340_77

def loopBody340_79 : HolLoopProg 64 :=
.mark loopBody340_78

def loopBody340_80 : HolLoopProg 64 :=
.seq loopBody340_67 loopBody340_79

def loopBody340_81 : HolLoopProg 64 :=
.mark loopBody340_80

def loopBody340_82 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.ln)) (some 398) ([4]) (some (4, loopBody340_69, loopBody340_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody340_83 : HolLoopProg 64 :=
.mark loopBody340_82

def loopBody340_84 : HolLoopProg 64 :=
.seq loopBody340_83 loopBody340_1

def loopBody340_85 : HolLoopProg 64 :=
.mark loopBody340_84

def loopBody340_86 : HolLoopProg 64 :=
.seq loopBody340_27 loopBody340_85

def loopBody340_87 : HolLoopProg 64 :=
.mark loopBody340_86

def loopBody340_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody340_89 : HolLoopProg 64 :=
.mark loopBody340_88

def loopBody340_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody340_91 : HolLoopProg 64 :=
.mark loopBody340_90

def loopBody340_92 : HolLoopProg 64 :=
.seq loopBody340_91 loopBody340_1

def loopBody340_93 : HolLoopProg 64 :=
.mark loopBody340_92

def loopBody340_94 : HolLoopProg 64 :=
.seq loopBody340_89 loopBody340_93

def loopBody340_95 : HolLoopProg 64 :=
.mark loopBody340_94

def loopBody340_96 : HolLoopProg 64 :=
.seq loopBody340_87 loopBody340_95

def loopBody340_97 : HolLoopProg 64 :=
.mark loopBody340_96

def loopBody340_98 : HolLoopProg 64 :=
.seq loopBody340_1 loopBody340_97

def loopBody340_99 : HolLoopProg 64 :=
.mark loopBody340_98

def loopBody340_100 : HolLoopProg 64 :=
.seq loopBody340_1 loopBody340_99

def loopBody340_101 : HolLoopProg 64 :=
.mark loopBody340_100

def loopBody340_102 : HolLoopProg 64 :=
.seq loopBody340_81 loopBody340_101

def loopBody340_103 : HolLoopProg 64 :=
.mark loopBody340_102

def loopBody340_104 : HolLoopProg 64 :=
.seq loopBody340_37 loopBody340_103

def loopBody340_105 : HolLoopProg 64 :=
.mark loopBody340_104

def loopBody340_106 : HolLoopProg 64 :=
.seq loopBody340_1 loopBody340_105

def loopBody340_107 : HolLoopProg 64 :=
.mark loopBody340_106

def loopBody340_108 : HolLoopProg 64 :=
.seq loopBody340_1 loopBody340_107

def loopBody340_109 : HolLoopProg 64 :=
.mark loopBody340_108

def loopBody340_110 : HolLoopProg 64 :=
.seq loopBody340_1 loopBody340_109

def loopBody340_111 : HolLoopProg 64 :=
.mark loopBody340_110

def loopBody340_112 : HolLoopProg 64 :=
.seq loopBody340_1 loopBody340_111

def loopBody340_113 : HolLoopProg 64 :=
.mark loopBody340_112

def loopBody340_114 : HolLoopProg 64 :=
.seq loopBody340_23 loopBody340_113

def loopBody340_115 : HolLoopProg 64 :=
.mark loopBody340_114

def output340 : Nat × List Nat × HolLoopProg 64 :=
  (404, [0], loopBody340_115)
end InitECandidate.Proofs.FrontendStages.Loop
