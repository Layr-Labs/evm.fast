import InitECandidate.Proofs.FrontendStages.Loop.Translate403
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody419_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody419_1 : HolLoopProg 64 :=
.mark loopBody419_0

def loopBody419_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 1)

def loopBody419_3 : HolLoopProg 64 :=
.mark loopBody419_2

def loopBody419_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 2)

def loopBody419_5 : HolLoopProg 64 :=
.mark loopBody419_4

def loopBody419_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 3)

def loopBody419_7 : HolLoopProg 64 :=
.mark loopBody419_6

def loopBody419_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 4)

def loopBody419_9 : HolLoopProg 64 :=
.mark loopBody419_8

def loopBody419_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 5)

def loopBody419_11 : HolLoopProg 64 :=
.mark loopBody419_10

def loopBody419_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 6)

def loopBody419_13 : HolLoopProg 64 :=
.mark loopBody419_12

def loopBody419_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 7)

def loopBody419_15 : HolLoopProg 64 :=
.mark loopBody419_14

def loopBody419_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 8)

def loopBody419_17 : HolLoopProg 64 :=
.mark loopBody419_16

def loopBody419_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 11

def loopBody419_19 : HolLoopProg 64 :=
.mark loopBody419_18

def loopBody419_20 : HolLoopProg 64 :=
.call (some ([9, 10], Flapjack.Spt.ls PUnit.unit)) (some 480) ([11, 12, 13, 14, 15, 16, 17, 18]) (some (11, loopBody419_19, loopBody419_1, (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
  PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))

def loopBody419_21 : HolLoopProg 64 :=
.mark loopBody419_20

def loopBody419_22 : HolLoopProg 64 :=
.seq loopBody419_21 loopBody419_1

def loopBody419_23 : HolLoopProg 64 :=
.mark loopBody419_22

def loopBody419_24 : HolLoopProg 64 :=
.seq loopBody419_17 loopBody419_23

def loopBody419_25 : HolLoopProg 64 :=
.mark loopBody419_24

def loopBody419_26 : HolLoopProg 64 :=
.seq loopBody419_15 loopBody419_25

def loopBody419_27 : HolLoopProg 64 :=
.mark loopBody419_26

def loopBody419_28 : HolLoopProg 64 :=
.seq loopBody419_13 loopBody419_27

def loopBody419_29 : HolLoopProg 64 :=
.mark loopBody419_28

def loopBody419_30 : HolLoopProg 64 :=
.seq loopBody419_11 loopBody419_29

def loopBody419_31 : HolLoopProg 64 :=
.mark loopBody419_30

def loopBody419_32 : HolLoopProg 64 :=
.seq loopBody419_9 loopBody419_31

def loopBody419_33 : HolLoopProg 64 :=
.mark loopBody419_32

def loopBody419_34 : HolLoopProg 64 :=
.seq loopBody419_7 loopBody419_33

def loopBody419_35 : HolLoopProg 64 :=
.mark loopBody419_34

def loopBody419_36 : HolLoopProg 64 :=
.seq loopBody419_5 loopBody419_35

def loopBody419_37 : HolLoopProg 64 :=
.mark loopBody419_36

def loopBody419_38 : HolLoopProg 64 :=
.seq loopBody419_3 loopBody419_37

def loopBody419_39 : HolLoopProg 64 :=
.mark loopBody419_38

def loopBody419_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 0)

def loopBody419_41 : HolLoopProg 64 :=
.mark loopBody419_40

def loopBody419_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 9)

def loopBody419_43 : HolLoopProg 64 :=
.mark loopBody419_42

def loopBody419_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 12

def loopBody419_45 : HolLoopProg 64 :=
.mark loopBody419_44

def loopBody419_46 : HolLoopProg 64 :=
.call (some
  ([11],
    Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)) (some 463) ([12, 13]) (some (12, loopBody419_45, loopBody419_1, (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))

def loopBody419_47 : HolLoopProg 64 :=
.mark loopBody419_46

def loopBody419_48 : HolLoopProg 64 :=
.seq loopBody419_47 loopBody419_1

def loopBody419_49 : HolLoopProg 64 :=
.mark loopBody419_48

def loopBody419_50 : HolLoopProg 64 :=
.seq loopBody419_43 loopBody419_49

def loopBody419_51 : HolLoopProg 64 :=
.mark loopBody419_50

def loopBody419_52 : HolLoopProg 64 :=
.seq loopBody419_41 loopBody419_51

def loopBody419_53 : HolLoopProg 64 :=
.mark loopBody419_52

def loopBody419_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 11)

def loopBody419_55 : HolLoopProg 64 :=
.mark loopBody419_54

def loopBody419_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 13

def loopBody419_57 : HolLoopProg 64 :=
.mark loopBody419_56

def loopBody419_58 : HolLoopProg 64 :=
.call (some
  ([12],
    Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)) (some 470) ([13]) (some (13, loopBody419_57, loopBody419_1, (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
  Flapjack.Spt.ln)))

def loopBody419_59 : HolLoopProg 64 :=
.mark loopBody419_58

def loopBody419_60 : HolLoopProg 64 :=
.seq loopBody419_59 loopBody419_1

def loopBody419_61 : HolLoopProg 64 :=
.mark loopBody419_60

def loopBody419_62 : HolLoopProg 64 :=
.seq loopBody419_55 loopBody419_61

def loopBody419_63 : HolLoopProg 64 :=
.mark loopBody419_62

def loopBody419_64 : HolLoopProg 64 :=
.seq loopBody419_1 loopBody419_63

def loopBody419_65 : HolLoopProg 64 :=
.mark loopBody419_64

def loopBody419_66 : HolLoopProg 64 :=
.seq loopBody419_1 loopBody419_65

def loopBody419_67 : HolLoopProg 64 :=
.mark loopBody419_66

def loopBody419_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 10)

def loopBody419_69 : HolLoopProg 64 :=
.mark loopBody419_68

def loopBody419_70 : HolLoopProg 64 :=
.call (some ([12], Flapjack.Spt.ln)) (some 482) ([13]) (some (13, loopBody419_57, loopBody419_1, (Flapjack.Spt.ln)))

def loopBody419_71 : HolLoopProg 64 :=
.mark loopBody419_70

def loopBody419_72 : HolLoopProg 64 :=
.seq loopBody419_71 loopBody419_1

def loopBody419_73 : HolLoopProg 64 :=
.mark loopBody419_72

def loopBody419_74 : HolLoopProg 64 :=
.seq loopBody419_69 loopBody419_73

def loopBody419_75 : HolLoopProg 64 :=
.mark loopBody419_74

def loopBody419_76 : HolLoopProg 64 :=
.seq loopBody419_1 loopBody419_75

def loopBody419_77 : HolLoopProg 64 :=
.mark loopBody419_76

def loopBody419_78 : HolLoopProg 64 :=
.seq loopBody419_1 loopBody419_77

def loopBody419_79 : HolLoopProg 64 :=
.mark loopBody419_78

def loopBody419_80 : HolLoopProg 64 :=
.seq loopBody419_67 loopBody419_79

def loopBody419_81 : HolLoopProg 64 :=
.mark loopBody419_80

def loopBody419_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 0#64)

def loopBody419_83 : HolLoopProg 64 :=
.mark loopBody419_82

def loopBody419_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [12]

def loopBody419_85 : HolLoopProg 64 :=
.mark loopBody419_84

def loopBody419_86 : HolLoopProg 64 :=
.seq loopBody419_85 loopBody419_1

def loopBody419_87 : HolLoopProg 64 :=
.mark loopBody419_86

def loopBody419_88 : HolLoopProg 64 :=
.seq loopBody419_83 loopBody419_87

def loopBody419_89 : HolLoopProg 64 :=
.mark loopBody419_88

def loopBody419_90 : HolLoopProg 64 :=
.seq loopBody419_81 loopBody419_89

def loopBody419_91 : HolLoopProg 64 :=
.mark loopBody419_90

def loopBody419_92 : HolLoopProg 64 :=
.seq loopBody419_53 loopBody419_91

def loopBody419_93 : HolLoopProg 64 :=
.mark loopBody419_92

def loopBody419_94 : HolLoopProg 64 :=
.seq loopBody419_1 loopBody419_93

def loopBody419_95 : HolLoopProg 64 :=
.mark loopBody419_94

def loopBody419_96 : HolLoopProg 64 :=
.seq loopBody419_1 loopBody419_95

def loopBody419_97 : HolLoopProg 64 :=
.mark loopBody419_96

def loopBody419_98 : HolLoopProg 64 :=
.seq loopBody419_39 loopBody419_97

def loopBody419_99 : HolLoopProg 64 :=
.mark loopBody419_98

def loopBody419_100 : HolLoopProg 64 :=
.seq loopBody419_1 loopBody419_99

def loopBody419_101 : HolLoopProg 64 :=
.mark loopBody419_100

def loopBody419_102 : HolLoopProg 64 :=
.seq loopBody419_1 loopBody419_101

def loopBody419_103 : HolLoopProg 64 :=
.mark loopBody419_102

def loopBody419_104 : HolLoopProg 64 :=
.seq loopBody419_1 loopBody419_103

def loopBody419_105 : HolLoopProg 64 :=
.mark loopBody419_104

def loopBody419_106 : HolLoopProg 64 :=
.seq loopBody419_1 loopBody419_105

def loopBody419_107 : HolLoopProg 64 :=
.mark loopBody419_106

def output419 : Nat × List Nat × HolLoopProg 64 :=
  (483, [0, 1, 2, 3, 4, 5, 6, 7, 8], loopBody419_107)
end InitECandidate.Proofs.FrontendStages.Loop
