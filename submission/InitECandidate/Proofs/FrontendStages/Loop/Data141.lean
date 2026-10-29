import InitECandidate.Proofs.FrontendStages.Loop.Translate125
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody141_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody141_1 : HolLoopProg 64 :=
.mark loopBody141_0

def loopBody141_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody141_3 : HolLoopProg 64 :=
.mark loopBody141_2

def loopBody141_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody141_5 : HolLoopProg 64 :=
.mark loopBody141_4

def loopBody141_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody141_7 : HolLoopProg 64 :=
.mark loopBody141_6

def loopBody141_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody141_9 : HolLoopProg 64 :=
.mark loopBody141_8

def loopBody141_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 18446744069414583343#64)

def loopBody141_11 : HolLoopProg 64 :=
.mark loopBody141_10

def loopBody141_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 18446744073709551615#64)

def loopBody141_13 : HolLoopProg 64 :=
.mark loopBody141_12

def loopBody141_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 18446744073709551615#64)

def loopBody141_15 : HolLoopProg 64 :=
.mark loopBody141_14

def loopBody141_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 18446744073709551615#64)

def loopBody141_17 : HolLoopProg 64 :=
.mark loopBody141_16

def loopBody141_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody141_19 : HolLoopProg 64 :=
.mark loopBody141_18

def loopBody141_20 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 106) ([5, 6, 7, 8, 9, 10, 11, 12]) (some (5, loopBody141_19, loopBody141_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody141_21 : HolLoopProg 64 :=
.mark loopBody141_20

def loopBody141_22 : HolLoopProg 64 :=
.seq loopBody141_21 loopBody141_1

def loopBody141_23 : HolLoopProg 64 :=
.mark loopBody141_22

def loopBody141_24 : HolLoopProg 64 :=
.seq loopBody141_17 loopBody141_23

def loopBody141_25 : HolLoopProg 64 :=
.mark loopBody141_24

def loopBody141_26 : HolLoopProg 64 :=
.seq loopBody141_15 loopBody141_25

def loopBody141_27 : HolLoopProg 64 :=
.mark loopBody141_26

def loopBody141_28 : HolLoopProg 64 :=
.seq loopBody141_13 loopBody141_27

def loopBody141_29 : HolLoopProg 64 :=
.mark loopBody141_28

def loopBody141_30 : HolLoopProg 64 :=
.seq loopBody141_11 loopBody141_29

def loopBody141_31 : HolLoopProg 64 :=
.mark loopBody141_30

def loopBody141_32 : HolLoopProg 64 :=
.seq loopBody141_9 loopBody141_31

def loopBody141_33 : HolLoopProg 64 :=
.mark loopBody141_32

def loopBody141_34 : HolLoopProg 64 :=
.seq loopBody141_7 loopBody141_33

def loopBody141_35 : HolLoopProg 64 :=
.mark loopBody141_34

def loopBody141_36 : HolLoopProg 64 :=
.seq loopBody141_5 loopBody141_35

def loopBody141_37 : HolLoopProg 64 :=
.mark loopBody141_36

def loopBody141_38 : HolLoopProg 64 :=
.seq loopBody141_3 loopBody141_37

def loopBody141_39 : HolLoopProg 64 :=
.mark loopBody141_38

def loopBody141_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody141_41 : HolLoopProg 64 :=
.mark loopBody141_40

def loopBody141_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody141_43 : HolLoopProg 64 :=
.mark loopBody141_42

def loopBody141_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody141_45 : HolLoopProg 64 :=
.mark loopBody141_44

def loopBody141_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody141_47 : HolLoopProg 64 :=
.mark loopBody141_46

def loopBody141_48 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.RegImm.reg 7) loopBody141_45 loopBody141_47 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody141_49 : HolLoopProg 64 :=
.mark loopBody141_48

def loopBody141_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody141_51 : HolLoopProg 64 :=
.mark loopBody141_50

def loopBody141_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 117) [5, 6, 7, 8, 9, 10, 11, 12] none

def loopBody141_53 : HolLoopProg 64 :=
.mark loopBody141_52

def loopBody141_54 : HolLoopProg 64 :=
.seq loopBody141_53 loopBody141_1

def loopBody141_55 : HolLoopProg 64 :=
.mark loopBody141_54

def loopBody141_56 : HolLoopProg 64 :=
.seq loopBody141_17 loopBody141_55

def loopBody141_57 : HolLoopProg 64 :=
.mark loopBody141_56

def loopBody141_58 : HolLoopProg 64 :=
.seq loopBody141_15 loopBody141_57

def loopBody141_59 : HolLoopProg 64 :=
.mark loopBody141_58

def loopBody141_60 : HolLoopProg 64 :=
.seq loopBody141_13 loopBody141_59

def loopBody141_61 : HolLoopProg 64 :=
.mark loopBody141_60

def loopBody141_62 : HolLoopProg 64 :=
.seq loopBody141_11 loopBody141_61

def loopBody141_63 : HolLoopProg 64 :=
.mark loopBody141_62

def loopBody141_64 : HolLoopProg 64 :=
.seq loopBody141_9 loopBody141_63

def loopBody141_65 : HolLoopProg 64 :=
.mark loopBody141_64

def loopBody141_66 : HolLoopProg 64 :=
.seq loopBody141_7 loopBody141_65

def loopBody141_67 : HolLoopProg 64 :=
.mark loopBody141_66

def loopBody141_68 : HolLoopProg 64 :=
.seq loopBody141_5 loopBody141_67

def loopBody141_69 : HolLoopProg 64 :=
.mark loopBody141_68

def loopBody141_70 : HolLoopProg 64 :=
.seq loopBody141_3 loopBody141_69

def loopBody141_71 : HolLoopProg 64 :=
.mark loopBody141_70

def loopBody141_72 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody141_71 loopBody141_1 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody141_73 : HolLoopProg 64 :=
.mark loopBody141_72

def loopBody141_74 : HolLoopProg 64 :=
.seq loopBody141_73 loopBody141_1

def loopBody141_75 : HolLoopProg 64 :=
.mark loopBody141_74

def loopBody141_76 : HolLoopProg 64 :=
.seq loopBody141_51 loopBody141_75

def loopBody141_77 : HolLoopProg 64 :=
.mark loopBody141_76

def loopBody141_78 : HolLoopProg 64 :=
.seq loopBody141_49 loopBody141_77

def loopBody141_79 : HolLoopProg 64 :=
.mark loopBody141_78

def loopBody141_80 : HolLoopProg 64 :=
.seq loopBody141_43 loopBody141_79

def loopBody141_81 : HolLoopProg 64 :=
.mark loopBody141_80

def loopBody141_82 : HolLoopProg 64 :=
.seq loopBody141_41 loopBody141_81

def loopBody141_83 : HolLoopProg 64 :=
.mark loopBody141_82

def loopBody141_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5, 6, 7, 8]

def loopBody141_85 : HolLoopProg 64 :=
.mark loopBody141_84

def loopBody141_86 : HolLoopProg 64 :=
.seq loopBody141_85 loopBody141_1

def loopBody141_87 : HolLoopProg 64 :=
.mark loopBody141_86

def loopBody141_88 : HolLoopProg 64 :=
.seq loopBody141_9 loopBody141_87

def loopBody141_89 : HolLoopProg 64 :=
.mark loopBody141_88

def loopBody141_90 : HolLoopProg 64 :=
.seq loopBody141_7 loopBody141_89

def loopBody141_91 : HolLoopProg 64 :=
.mark loopBody141_90

def loopBody141_92 : HolLoopProg 64 :=
.seq loopBody141_5 loopBody141_91

def loopBody141_93 : HolLoopProg 64 :=
.mark loopBody141_92

def loopBody141_94 : HolLoopProg 64 :=
.seq loopBody141_3 loopBody141_93

def loopBody141_95 : HolLoopProg 64 :=
.mark loopBody141_94

def loopBody141_96 : HolLoopProg 64 :=
.seq loopBody141_83 loopBody141_95

def loopBody141_97 : HolLoopProg 64 :=
.mark loopBody141_96

def loopBody141_98 : HolLoopProg 64 :=
.seq loopBody141_39 loopBody141_97

def loopBody141_99 : HolLoopProg 64 :=
.mark loopBody141_98

def loopBody141_100 : HolLoopProg 64 :=
.seq loopBody141_1 loopBody141_99

def loopBody141_101 : HolLoopProg 64 :=
.mark loopBody141_100

def loopBody141_102 : HolLoopProg 64 :=
.seq loopBody141_1 loopBody141_101

def loopBody141_103 : HolLoopProg 64 :=
.mark loopBody141_102

def output141 : Nat × List Nat × HolLoopProg 64 :=
  (205, [0, 1, 2, 3], loopBody141_103)
end InitECandidate.Proofs.FrontendStages.Loop
