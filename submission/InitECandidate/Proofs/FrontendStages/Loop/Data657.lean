import InitECandidate.Proofs.FrontendStages.Loop.Translate641
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody657_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody657_1 : HolLoopProg 64 :=
.mark loopBody657_0

def loopBody657_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 0)

def loopBody657_3 : HolLoopProg 64 :=
.mark loopBody657_2

def loopBody657_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 1)

def loopBody657_5 : HolLoopProg 64 :=
.mark loopBody657_4

def loopBody657_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 2)

def loopBody657_7 : HolLoopProg 64 :=
.mark loopBody657_6

def loopBody657_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 3)

def loopBody657_9 : HolLoopProg 64 :=
.mark loopBody657_8

def loopBody657_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 4)

def loopBody657_11 : HolLoopProg 64 :=
.mark loopBody657_10

def loopBody657_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 5)

def loopBody657_13 : HolLoopProg 64 :=
.mark loopBody657_12

def loopBody657_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 12

def loopBody657_15 : HolLoopProg 64 :=
.mark loopBody657_14

def loopBody657_16 : HolLoopProg 64 :=
.call (some ([6, 7, 8, 9, 10, 11], Flapjack.Spt.ln)) (some 720) ([12, 13, 14, 15, 16, 17]) (some (12, loopBody657_15, loopBody657_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))

def loopBody657_17 : HolLoopProg 64 :=
.mark loopBody657_16

def loopBody657_18 : HolLoopProg 64 :=
.seq loopBody657_17 loopBody657_1

def loopBody657_19 : HolLoopProg 64 :=
.mark loopBody657_18

def loopBody657_20 : HolLoopProg 64 :=
.seq loopBody657_13 loopBody657_19

def loopBody657_21 : HolLoopProg 64 :=
.mark loopBody657_20

def loopBody657_22 : HolLoopProg 64 :=
.seq loopBody657_11 loopBody657_21

def loopBody657_23 : HolLoopProg 64 :=
.mark loopBody657_22

def loopBody657_24 : HolLoopProg 64 :=
.seq loopBody657_9 loopBody657_23

def loopBody657_25 : HolLoopProg 64 :=
.mark loopBody657_24

def loopBody657_26 : HolLoopProg 64 :=
.seq loopBody657_7 loopBody657_25

def loopBody657_27 : HolLoopProg 64 :=
.mark loopBody657_26

def loopBody657_28 : HolLoopProg 64 :=
.seq loopBody657_5 loopBody657_27

def loopBody657_29 : HolLoopProg 64 :=
.mark loopBody657_28

def loopBody657_30 : HolLoopProg 64 :=
.seq loopBody657_3 loopBody657_29

def loopBody657_31 : HolLoopProg 64 :=
.mark loopBody657_30

def loopBody657_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 6)

def loopBody657_33 : HolLoopProg 64 :=
.mark loopBody657_32

def loopBody657_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 7)

def loopBody657_35 : HolLoopProg 64 :=
.mark loopBody657_34

def loopBody657_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 8)

def loopBody657_37 : HolLoopProg 64 :=
.mark loopBody657_36

def loopBody657_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 9)

def loopBody657_39 : HolLoopProg 64 :=
.mark loopBody657_38

def loopBody657_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 10)

def loopBody657_41 : HolLoopProg 64 :=
.mark loopBody657_40

def loopBody657_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 11)

def loopBody657_43 : HolLoopProg 64 :=
.mark loopBody657_42

def loopBody657_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.const 17098105564519244256#64)

def loopBody657_45 : HolLoopProg 64 :=
.mark loopBody657_44

def loopBody657_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.const 3557706395579559416#64)

def loopBody657_47 : HolLoopProg 64 :=
.mark loopBody657_46

def loopBody657_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.const 11120290361046346205#64)

def loopBody657_49 : HolLoopProg 64 :=
.mark loopBody657_48

def loopBody657_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.const 3801124253586036577#64)

def loopBody657_51 : HolLoopProg 64 :=
.mark loopBody657_50

def loopBody657_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 22 (Flapjack.HolLoopExp.const 2671430854784468776#64)

def loopBody657_53 : HolLoopProg 64 :=
.mark loopBody657_52

def loopBody657_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 23 (Flapjack.HolLoopExp.const 767358375875140941#64)

def loopBody657_55 : HolLoopProg 64 :=
.mark loopBody657_54

def loopBody657_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 714) [12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23] none

def loopBody657_57 : HolLoopProg 64 :=
.mark loopBody657_56

def loopBody657_58 : HolLoopProg 64 :=
.seq loopBody657_57 loopBody657_1

def loopBody657_59 : HolLoopProg 64 :=
.mark loopBody657_58

def loopBody657_60 : HolLoopProg 64 :=
.seq loopBody657_55 loopBody657_59

def loopBody657_61 : HolLoopProg 64 :=
.mark loopBody657_60

def loopBody657_62 : HolLoopProg 64 :=
.seq loopBody657_53 loopBody657_61

def loopBody657_63 : HolLoopProg 64 :=
.mark loopBody657_62

def loopBody657_64 : HolLoopProg 64 :=
.seq loopBody657_51 loopBody657_63

def loopBody657_65 : HolLoopProg 64 :=
.mark loopBody657_64

def loopBody657_66 : HolLoopProg 64 :=
.seq loopBody657_49 loopBody657_65

def loopBody657_67 : HolLoopProg 64 :=
.mark loopBody657_66

def loopBody657_68 : HolLoopProg 64 :=
.seq loopBody657_47 loopBody657_67

def loopBody657_69 : HolLoopProg 64 :=
.mark loopBody657_68

def loopBody657_70 : HolLoopProg 64 :=
.seq loopBody657_45 loopBody657_69

def loopBody657_71 : HolLoopProg 64 :=
.mark loopBody657_70

def loopBody657_72 : HolLoopProg 64 :=
.seq loopBody657_43 loopBody657_71

def loopBody657_73 : HolLoopProg 64 :=
.mark loopBody657_72

def loopBody657_74 : HolLoopProg 64 :=
.seq loopBody657_41 loopBody657_73

def loopBody657_75 : HolLoopProg 64 :=
.mark loopBody657_74

def loopBody657_76 : HolLoopProg 64 :=
.seq loopBody657_39 loopBody657_75

def loopBody657_77 : HolLoopProg 64 :=
.mark loopBody657_76

def loopBody657_78 : HolLoopProg 64 :=
.seq loopBody657_37 loopBody657_77

def loopBody657_79 : HolLoopProg 64 :=
.mark loopBody657_78

def loopBody657_80 : HolLoopProg 64 :=
.seq loopBody657_35 loopBody657_79

def loopBody657_81 : HolLoopProg 64 :=
.mark loopBody657_80

def loopBody657_82 : HolLoopProg 64 :=
.seq loopBody657_33 loopBody657_81

def loopBody657_83 : HolLoopProg 64 :=
.mark loopBody657_82

def loopBody657_84 : HolLoopProg 64 :=
.seq loopBody657_31 loopBody657_83

def loopBody657_85 : HolLoopProg 64 :=
.mark loopBody657_84

def loopBody657_86 : HolLoopProg 64 :=
.seq loopBody657_1 loopBody657_85

def loopBody657_87 : HolLoopProg 64 :=
.mark loopBody657_86

def loopBody657_88 : HolLoopProg 64 :=
.seq loopBody657_1 loopBody657_87

def loopBody657_89 : HolLoopProg 64 :=
.mark loopBody657_88

def loopBody657_90 : HolLoopProg 64 :=
.seq loopBody657_1 loopBody657_89

def loopBody657_91 : HolLoopProg 64 :=
.mark loopBody657_90

def loopBody657_92 : HolLoopProg 64 :=
.seq loopBody657_1 loopBody657_91

def loopBody657_93 : HolLoopProg 64 :=
.mark loopBody657_92

def loopBody657_94 : HolLoopProg 64 :=
.seq loopBody657_1 loopBody657_93

def loopBody657_95 : HolLoopProg 64 :=
.mark loopBody657_94

def loopBody657_96 : HolLoopProg 64 :=
.seq loopBody657_1 loopBody657_95

def loopBody657_97 : HolLoopProg 64 :=
.mark loopBody657_96

def loopBody657_98 : HolLoopProg 64 :=
.seq loopBody657_1 loopBody657_97

def loopBody657_99 : HolLoopProg 64 :=
.mark loopBody657_98

def loopBody657_100 : HolLoopProg 64 :=
.seq loopBody657_1 loopBody657_99

def loopBody657_101 : HolLoopProg 64 :=
.mark loopBody657_100

def loopBody657_102 : HolLoopProg 64 :=
.seq loopBody657_1 loopBody657_101

def loopBody657_103 : HolLoopProg 64 :=
.mark loopBody657_102

def loopBody657_104 : HolLoopProg 64 :=
.seq loopBody657_1 loopBody657_103

def loopBody657_105 : HolLoopProg 64 :=
.mark loopBody657_104

def loopBody657_106 : HolLoopProg 64 :=
.seq loopBody657_1 loopBody657_105

def loopBody657_107 : HolLoopProg 64 :=
.mark loopBody657_106

def loopBody657_108 : HolLoopProg 64 :=
.seq loopBody657_1 loopBody657_107

def loopBody657_109 : HolLoopProg 64 :=
.mark loopBody657_108

def output657 : Nat × List Nat × HolLoopProg 64 :=
  (721, [0, 1, 2, 3, 4, 5], loopBody657_109)
end InitECandidate.Proofs.FrontendStages.Loop
