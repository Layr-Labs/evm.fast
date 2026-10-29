import InitECandidate.Proofs.FrontendStages.Loop.Translate495
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody511_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody511_1 : HolLoopProg 64 :=
.mark loopBody511_0

def loopBody511_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 2#64)

def loopBody511_3 : HolLoopProg 64 :=
.mark loopBody511_2

def loopBody511_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody511_5 : HolLoopProg 64 :=
.mark loopBody511_4

def loopBody511_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 470) ([2]) (some (2, loopBody511_5, loopBody511_1, (Flapjack.Spt.ln)))

def loopBody511_7 : HolLoopProg 64 :=
.mark loopBody511_6

def loopBody511_8 : HolLoopProg 64 :=
.seq loopBody511_7 loopBody511_1

def loopBody511_9 : HolLoopProg 64 :=
.mark loopBody511_8

def loopBody511_10 : HolLoopProg 64 :=
.seq loopBody511_3 loopBody511_9

def loopBody511_11 : HolLoopProg 64 :=
.mark loopBody511_10

def loopBody511_12 : HolLoopProg 64 :=
.seq loopBody511_1 loopBody511_11

def loopBody511_13 : HolLoopProg 64 :=
.mark loopBody511_12

def loopBody511_14 : HolLoopProg 64 :=
.seq loopBody511_1 loopBody511_13

def loopBody511_15 : HolLoopProg 64 :=
.mark loopBody511_14

def loopBody511_16 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 572) ([]) (some (2, loopBody511_5, loopBody511_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody511_17 : HolLoopProg 64 :=
.mark loopBody511_16

def loopBody511_18 : HolLoopProg 64 :=
.seq loopBody511_17 loopBody511_1

def loopBody511_19 : HolLoopProg 64 :=
.mark loopBody511_18

def loopBody511_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 96#64]))

def loopBody511_21 : HolLoopProg 64 :=
.mark loopBody511_20

def loopBody511_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody511_23 : HolLoopProg 64 :=
.mark loopBody511_22

def loopBody511_24 : HolLoopProg 64 :=
.call (some ([2, 3, 4, 5], Flapjack.Spt.ln)) (some 280) ([6]) (some (6, loopBody511_23, loopBody511_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))

def loopBody511_25 : HolLoopProg 64 :=
.mark loopBody511_24

def loopBody511_26 : HolLoopProg 64 :=
.seq loopBody511_25 loopBody511_1

def loopBody511_27 : HolLoopProg 64 :=
.mark loopBody511_26

def loopBody511_28 : HolLoopProg 64 :=
.seq loopBody511_21 loopBody511_27

def loopBody511_29 : HolLoopProg 64 :=
.mark loopBody511_28

def loopBody511_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody511_31 : HolLoopProg 64 :=
.mark loopBody511_30

def loopBody511_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody511_33 : HolLoopProg 64 :=
.mark loopBody511_32

def loopBody511_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 4)

def loopBody511_35 : HolLoopProg 64 :=
.mark loopBody511_34

def loopBody511_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 5)

def loopBody511_37 : HolLoopProg 64 :=
.mark loopBody511_36

def loopBody511_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody511_39 : HolLoopProg 64 :=
.mark loopBody511_38

def loopBody511_40 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.ln)) (some 476) ([7, 8, 9, 10]) (some (7, loopBody511_39, loopBody511_1, (Flapjack.Spt.ln)))

def loopBody511_41 : HolLoopProg 64 :=
.mark loopBody511_40

def loopBody511_42 : HolLoopProg 64 :=
.seq loopBody511_41 loopBody511_1

def loopBody511_43 : HolLoopProg 64 :=
.mark loopBody511_42

def loopBody511_44 : HolLoopProg 64 :=
.seq loopBody511_37 loopBody511_43

def loopBody511_45 : HolLoopProg 64 :=
.mark loopBody511_44

def loopBody511_46 : HolLoopProg 64 :=
.seq loopBody511_35 loopBody511_45

def loopBody511_47 : HolLoopProg 64 :=
.mark loopBody511_46

def loopBody511_48 : HolLoopProg 64 :=
.seq loopBody511_33 loopBody511_47

def loopBody511_49 : HolLoopProg 64 :=
.mark loopBody511_48

def loopBody511_50 : HolLoopProg 64 :=
.seq loopBody511_31 loopBody511_49

def loopBody511_51 : HolLoopProg 64 :=
.mark loopBody511_50

def loopBody511_52 : HolLoopProg 64 :=
.seq loopBody511_1 loopBody511_51

def loopBody511_53 : HolLoopProg 64 :=
.mark loopBody511_52

def loopBody511_54 : HolLoopProg 64 :=
.seq loopBody511_1 loopBody511_53

def loopBody511_55 : HolLoopProg 64 :=
.mark loopBody511_54

def loopBody511_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody511_57 : HolLoopProg 64 :=
.mark loopBody511_56

def loopBody511_58 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.ln)) (some 490) ([7]) (some (7, loopBody511_39, loopBody511_1, (Flapjack.Spt.ln)))

def loopBody511_59 : HolLoopProg 64 :=
.mark loopBody511_58

def loopBody511_60 : HolLoopProg 64 :=
.seq loopBody511_59 loopBody511_1

def loopBody511_61 : HolLoopProg 64 :=
.mark loopBody511_60

def loopBody511_62 : HolLoopProg 64 :=
.seq loopBody511_57 loopBody511_61

def loopBody511_63 : HolLoopProg 64 :=
.mark loopBody511_62

def loopBody511_64 : HolLoopProg 64 :=
.seq loopBody511_1 loopBody511_63

def loopBody511_65 : HolLoopProg 64 :=
.mark loopBody511_64

def loopBody511_66 : HolLoopProg 64 :=
.seq loopBody511_1 loopBody511_65

def loopBody511_67 : HolLoopProg 64 :=
.mark loopBody511_66

def loopBody511_68 : HolLoopProg 64 :=
.seq loopBody511_55 loopBody511_67

def loopBody511_69 : HolLoopProg 64 :=
.mark loopBody511_68

def loopBody511_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody511_71 : HolLoopProg 64 :=
.mark loopBody511_70

def loopBody511_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody511_73 : HolLoopProg 64 :=
.mark loopBody511_72

def loopBody511_74 : HolLoopProg 64 :=
.seq loopBody511_73 loopBody511_1

def loopBody511_75 : HolLoopProg 64 :=
.mark loopBody511_74

def loopBody511_76 : HolLoopProg 64 :=
.seq loopBody511_71 loopBody511_75

def loopBody511_77 : HolLoopProg 64 :=
.mark loopBody511_76

def loopBody511_78 : HolLoopProg 64 :=
.seq loopBody511_69 loopBody511_77

def loopBody511_79 : HolLoopProg 64 :=
.mark loopBody511_78

def loopBody511_80 : HolLoopProg 64 :=
.seq loopBody511_29 loopBody511_79

def loopBody511_81 : HolLoopProg 64 :=
.mark loopBody511_80

def loopBody511_82 : HolLoopProg 64 :=
.seq loopBody511_1 loopBody511_81

def loopBody511_83 : HolLoopProg 64 :=
.mark loopBody511_82

def loopBody511_84 : HolLoopProg 64 :=
.seq loopBody511_1 loopBody511_83

def loopBody511_85 : HolLoopProg 64 :=
.mark loopBody511_84

def loopBody511_86 : HolLoopProg 64 :=
.seq loopBody511_1 loopBody511_85

def loopBody511_87 : HolLoopProg 64 :=
.mark loopBody511_86

def loopBody511_88 : HolLoopProg 64 :=
.seq loopBody511_1 loopBody511_87

def loopBody511_89 : HolLoopProg 64 :=
.mark loopBody511_88

def loopBody511_90 : HolLoopProg 64 :=
.seq loopBody511_1 loopBody511_89

def loopBody511_91 : HolLoopProg 64 :=
.mark loopBody511_90

def loopBody511_92 : HolLoopProg 64 :=
.seq loopBody511_1 loopBody511_91

def loopBody511_93 : HolLoopProg 64 :=
.mark loopBody511_92

def loopBody511_94 : HolLoopProg 64 :=
.seq loopBody511_1 loopBody511_93

def loopBody511_95 : HolLoopProg 64 :=
.mark loopBody511_94

def loopBody511_96 : HolLoopProg 64 :=
.seq loopBody511_1 loopBody511_95

def loopBody511_97 : HolLoopProg 64 :=
.mark loopBody511_96

def loopBody511_98 : HolLoopProg 64 :=
.seq loopBody511_19 loopBody511_97

def loopBody511_99 : HolLoopProg 64 :=
.mark loopBody511_98

def loopBody511_100 : HolLoopProg 64 :=
.seq loopBody511_1 loopBody511_99

def loopBody511_101 : HolLoopProg 64 :=
.mark loopBody511_100

def loopBody511_102 : HolLoopProg 64 :=
.seq loopBody511_1 loopBody511_101

def loopBody511_103 : HolLoopProg 64 :=
.mark loopBody511_102

def loopBody511_104 : HolLoopProg 64 :=
.seq loopBody511_15 loopBody511_103

def loopBody511_105 : HolLoopProg 64 :=
.mark loopBody511_104

def output511 : Nat × List Nat × HolLoopProg 64 :=
  (575, [], loopBody511_105)
end InitECandidate.Proofs.FrontendStages.Loop
