import InitECandidate.Proofs.FrontendStages.Loop.Translate497
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody513_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody513_1 : HolLoopProg 64 :=
.mark loopBody513_0

def loopBody513_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 2#64)

def loopBody513_3 : HolLoopProg 64 :=
.mark loopBody513_2

def loopBody513_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody513_5 : HolLoopProg 64 :=
.mark loopBody513_4

def loopBody513_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 470) ([2]) (some (2, loopBody513_5, loopBody513_1, (Flapjack.Spt.ln)))

def loopBody513_7 : HolLoopProg 64 :=
.mark loopBody513_6

def loopBody513_8 : HolLoopProg 64 :=
.seq loopBody513_7 loopBody513_1

def loopBody513_9 : HolLoopProg 64 :=
.mark loopBody513_8

def loopBody513_10 : HolLoopProg 64 :=
.seq loopBody513_3 loopBody513_9

def loopBody513_11 : HolLoopProg 64 :=
.mark loopBody513_10

def loopBody513_12 : HolLoopProg 64 :=
.seq loopBody513_1 loopBody513_11

def loopBody513_13 : HolLoopProg 64 :=
.mark loopBody513_12

def loopBody513_14 : HolLoopProg 64 :=
.seq loopBody513_1 loopBody513_13

def loopBody513_15 : HolLoopProg 64 :=
.mark loopBody513_14

def loopBody513_16 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 572) ([]) (some (2, loopBody513_5, loopBody513_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody513_17 : HolLoopProg 64 :=
.mark loopBody513_16

def loopBody513_18 : HolLoopProg 64 :=
.seq loopBody513_17 loopBody513_1

def loopBody513_19 : HolLoopProg 64 :=
.mark loopBody513_18

def loopBody513_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 32#64]))

def loopBody513_21 : HolLoopProg 64 :=
.mark loopBody513_20

def loopBody513_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody513_23 : HolLoopProg 64 :=
.mark loopBody513_22

def loopBody513_24 : HolLoopProg 64 :=
.call (some ([2, 3, 4, 5], Flapjack.Spt.ln)) (some 467) ([6]) (some (6, loopBody513_23, loopBody513_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))

def loopBody513_25 : HolLoopProg 64 :=
.mark loopBody513_24

def loopBody513_26 : HolLoopProg 64 :=
.seq loopBody513_25 loopBody513_1

def loopBody513_27 : HolLoopProg 64 :=
.mark loopBody513_26

def loopBody513_28 : HolLoopProg 64 :=
.seq loopBody513_21 loopBody513_27

def loopBody513_29 : HolLoopProg 64 :=
.mark loopBody513_28

def loopBody513_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody513_31 : HolLoopProg 64 :=
.mark loopBody513_30

def loopBody513_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody513_33 : HolLoopProg 64 :=
.mark loopBody513_32

def loopBody513_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 4)

def loopBody513_35 : HolLoopProg 64 :=
.mark loopBody513_34

def loopBody513_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 5)

def loopBody513_37 : HolLoopProg 64 :=
.mark loopBody513_36

def loopBody513_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody513_39 : HolLoopProg 64 :=
.mark loopBody513_38

def loopBody513_40 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.ln)) (some 476) ([7, 8, 9, 10]) (some (7, loopBody513_39, loopBody513_1, (Flapjack.Spt.ln)))

def loopBody513_41 : HolLoopProg 64 :=
.mark loopBody513_40

def loopBody513_42 : HolLoopProg 64 :=
.seq loopBody513_41 loopBody513_1

def loopBody513_43 : HolLoopProg 64 :=
.mark loopBody513_42

def loopBody513_44 : HolLoopProg 64 :=
.seq loopBody513_37 loopBody513_43

def loopBody513_45 : HolLoopProg 64 :=
.mark loopBody513_44

def loopBody513_46 : HolLoopProg 64 :=
.seq loopBody513_35 loopBody513_45

def loopBody513_47 : HolLoopProg 64 :=
.mark loopBody513_46

def loopBody513_48 : HolLoopProg 64 :=
.seq loopBody513_33 loopBody513_47

def loopBody513_49 : HolLoopProg 64 :=
.mark loopBody513_48

def loopBody513_50 : HolLoopProg 64 :=
.seq loopBody513_31 loopBody513_49

def loopBody513_51 : HolLoopProg 64 :=
.mark loopBody513_50

def loopBody513_52 : HolLoopProg 64 :=
.seq loopBody513_1 loopBody513_51

def loopBody513_53 : HolLoopProg 64 :=
.mark loopBody513_52

def loopBody513_54 : HolLoopProg 64 :=
.seq loopBody513_1 loopBody513_53

def loopBody513_55 : HolLoopProg 64 :=
.mark loopBody513_54

def loopBody513_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody513_57 : HolLoopProg 64 :=
.mark loopBody513_56

def loopBody513_58 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.ln)) (some 490) ([7]) (some (7, loopBody513_39, loopBody513_1, (Flapjack.Spt.ln)))

def loopBody513_59 : HolLoopProg 64 :=
.mark loopBody513_58

def loopBody513_60 : HolLoopProg 64 :=
.seq loopBody513_59 loopBody513_1

def loopBody513_61 : HolLoopProg 64 :=
.mark loopBody513_60

def loopBody513_62 : HolLoopProg 64 :=
.seq loopBody513_57 loopBody513_61

def loopBody513_63 : HolLoopProg 64 :=
.mark loopBody513_62

def loopBody513_64 : HolLoopProg 64 :=
.seq loopBody513_1 loopBody513_63

def loopBody513_65 : HolLoopProg 64 :=
.mark loopBody513_64

def loopBody513_66 : HolLoopProg 64 :=
.seq loopBody513_1 loopBody513_65

def loopBody513_67 : HolLoopProg 64 :=
.mark loopBody513_66

def loopBody513_68 : HolLoopProg 64 :=
.seq loopBody513_55 loopBody513_67

def loopBody513_69 : HolLoopProg 64 :=
.mark loopBody513_68

def loopBody513_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody513_71 : HolLoopProg 64 :=
.mark loopBody513_70

def loopBody513_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody513_73 : HolLoopProg 64 :=
.mark loopBody513_72

def loopBody513_74 : HolLoopProg 64 :=
.seq loopBody513_73 loopBody513_1

def loopBody513_75 : HolLoopProg 64 :=
.mark loopBody513_74

def loopBody513_76 : HolLoopProg 64 :=
.seq loopBody513_71 loopBody513_75

def loopBody513_77 : HolLoopProg 64 :=
.mark loopBody513_76

def loopBody513_78 : HolLoopProg 64 :=
.seq loopBody513_69 loopBody513_77

def loopBody513_79 : HolLoopProg 64 :=
.mark loopBody513_78

def loopBody513_80 : HolLoopProg 64 :=
.seq loopBody513_29 loopBody513_79

def loopBody513_81 : HolLoopProg 64 :=
.mark loopBody513_80

def loopBody513_82 : HolLoopProg 64 :=
.seq loopBody513_1 loopBody513_81

def loopBody513_83 : HolLoopProg 64 :=
.mark loopBody513_82

def loopBody513_84 : HolLoopProg 64 :=
.seq loopBody513_1 loopBody513_83

def loopBody513_85 : HolLoopProg 64 :=
.mark loopBody513_84

def loopBody513_86 : HolLoopProg 64 :=
.seq loopBody513_1 loopBody513_85

def loopBody513_87 : HolLoopProg 64 :=
.mark loopBody513_86

def loopBody513_88 : HolLoopProg 64 :=
.seq loopBody513_1 loopBody513_87

def loopBody513_89 : HolLoopProg 64 :=
.mark loopBody513_88

def loopBody513_90 : HolLoopProg 64 :=
.seq loopBody513_1 loopBody513_89

def loopBody513_91 : HolLoopProg 64 :=
.mark loopBody513_90

def loopBody513_92 : HolLoopProg 64 :=
.seq loopBody513_1 loopBody513_91

def loopBody513_93 : HolLoopProg 64 :=
.mark loopBody513_92

def loopBody513_94 : HolLoopProg 64 :=
.seq loopBody513_1 loopBody513_93

def loopBody513_95 : HolLoopProg 64 :=
.mark loopBody513_94

def loopBody513_96 : HolLoopProg 64 :=
.seq loopBody513_1 loopBody513_95

def loopBody513_97 : HolLoopProg 64 :=
.mark loopBody513_96

def loopBody513_98 : HolLoopProg 64 :=
.seq loopBody513_19 loopBody513_97

def loopBody513_99 : HolLoopProg 64 :=
.mark loopBody513_98

def loopBody513_100 : HolLoopProg 64 :=
.seq loopBody513_1 loopBody513_99

def loopBody513_101 : HolLoopProg 64 :=
.mark loopBody513_100

def loopBody513_102 : HolLoopProg 64 :=
.seq loopBody513_1 loopBody513_101

def loopBody513_103 : HolLoopProg 64 :=
.mark loopBody513_102

def loopBody513_104 : HolLoopProg 64 :=
.seq loopBody513_15 loopBody513_103

def loopBody513_105 : HolLoopProg 64 :=
.mark loopBody513_104

def output513 : Nat × List Nat × HolLoopProg 64 :=
  (577, [], loopBody513_105)
end InitECandidate.Proofs.FrontendStages.Loop
