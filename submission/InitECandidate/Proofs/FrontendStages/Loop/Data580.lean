import InitECandidate.Proofs.FrontendStages.Loop.Translate564
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody580_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody580_1 : HolLoopProg 64 :=
.mark loopBody580_0

def loopBody580_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody580_3 : HolLoopProg 64 :=
.mark loopBody580_2

def loopBody580_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody580_5 : HolLoopProg 64 :=
.mark loopBody580_4

def loopBody580_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody580_7 : HolLoopProg 64 :=
.mark loopBody580_6

def loopBody580_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody580_9 : HolLoopProg 64 :=
.mark loopBody580_8

def loopBody580_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 18446744073709551615#64)

def loopBody580_11 : HolLoopProg 64 :=
.mark loopBody580_10

def loopBody580_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 4294967295#64)

def loopBody580_13 : HolLoopProg 64 :=
.mark loopBody580_12

def loopBody580_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 0#64)

def loopBody580_15 : HolLoopProg 64 :=
.mark loopBody580_14

def loopBody580_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 18446744069414584321#64)

def loopBody580_17 : HolLoopProg 64 :=
.mark loopBody580_16

def loopBody580_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody580_19 : HolLoopProg 64 :=
.mark loopBody580_18

def loopBody580_20 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 106) ([5, 6, 7, 8, 9, 10, 11, 12]) (some (5, loopBody580_19, loopBody580_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody580_21 : HolLoopProg 64 :=
.mark loopBody580_20

def loopBody580_22 : HolLoopProg 64 :=
.seq loopBody580_21 loopBody580_1

def loopBody580_23 : HolLoopProg 64 :=
.mark loopBody580_22

def loopBody580_24 : HolLoopProg 64 :=
.seq loopBody580_17 loopBody580_23

def loopBody580_25 : HolLoopProg 64 :=
.mark loopBody580_24

def loopBody580_26 : HolLoopProg 64 :=
.seq loopBody580_15 loopBody580_25

def loopBody580_27 : HolLoopProg 64 :=
.mark loopBody580_26

def loopBody580_28 : HolLoopProg 64 :=
.seq loopBody580_13 loopBody580_27

def loopBody580_29 : HolLoopProg 64 :=
.mark loopBody580_28

def loopBody580_30 : HolLoopProg 64 :=
.seq loopBody580_11 loopBody580_29

def loopBody580_31 : HolLoopProg 64 :=
.mark loopBody580_30

def loopBody580_32 : HolLoopProg 64 :=
.seq loopBody580_9 loopBody580_31

def loopBody580_33 : HolLoopProg 64 :=
.mark loopBody580_32

def loopBody580_34 : HolLoopProg 64 :=
.seq loopBody580_7 loopBody580_33

def loopBody580_35 : HolLoopProg 64 :=
.mark loopBody580_34

def loopBody580_36 : HolLoopProg 64 :=
.seq loopBody580_5 loopBody580_35

def loopBody580_37 : HolLoopProg 64 :=
.mark loopBody580_36

def loopBody580_38 : HolLoopProg 64 :=
.seq loopBody580_3 loopBody580_37

def loopBody580_39 : HolLoopProg 64 :=
.mark loopBody580_38

def loopBody580_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody580_41 : HolLoopProg 64 :=
.mark loopBody580_40

def loopBody580_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody580_43 : HolLoopProg 64 :=
.mark loopBody580_42

def loopBody580_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody580_45 : HolLoopProg 64 :=
.mark loopBody580_44

def loopBody580_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody580_47 : HolLoopProg 64 :=
.mark loopBody580_46

def loopBody580_48 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.RegImm.reg 7) loopBody580_45 loopBody580_47 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody580_49 : HolLoopProg 64 :=
.mark loopBody580_48

def loopBody580_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody580_51 : HolLoopProg 64 :=
.mark loopBody580_50

def loopBody580_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 117) [5, 6, 7, 8, 9, 10, 11, 12] none

def loopBody580_53 : HolLoopProg 64 :=
.mark loopBody580_52

def loopBody580_54 : HolLoopProg 64 :=
.seq loopBody580_53 loopBody580_1

def loopBody580_55 : HolLoopProg 64 :=
.mark loopBody580_54

def loopBody580_56 : HolLoopProg 64 :=
.seq loopBody580_17 loopBody580_55

def loopBody580_57 : HolLoopProg 64 :=
.mark loopBody580_56

def loopBody580_58 : HolLoopProg 64 :=
.seq loopBody580_15 loopBody580_57

def loopBody580_59 : HolLoopProg 64 :=
.mark loopBody580_58

def loopBody580_60 : HolLoopProg 64 :=
.seq loopBody580_13 loopBody580_59

def loopBody580_61 : HolLoopProg 64 :=
.mark loopBody580_60

def loopBody580_62 : HolLoopProg 64 :=
.seq loopBody580_11 loopBody580_61

def loopBody580_63 : HolLoopProg 64 :=
.mark loopBody580_62

def loopBody580_64 : HolLoopProg 64 :=
.seq loopBody580_9 loopBody580_63

def loopBody580_65 : HolLoopProg 64 :=
.mark loopBody580_64

def loopBody580_66 : HolLoopProg 64 :=
.seq loopBody580_7 loopBody580_65

def loopBody580_67 : HolLoopProg 64 :=
.mark loopBody580_66

def loopBody580_68 : HolLoopProg 64 :=
.seq loopBody580_5 loopBody580_67

def loopBody580_69 : HolLoopProg 64 :=
.mark loopBody580_68

def loopBody580_70 : HolLoopProg 64 :=
.seq loopBody580_3 loopBody580_69

def loopBody580_71 : HolLoopProg 64 :=
.mark loopBody580_70

def loopBody580_72 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody580_71 loopBody580_1 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody580_73 : HolLoopProg 64 :=
.mark loopBody580_72

def loopBody580_74 : HolLoopProg 64 :=
.seq loopBody580_73 loopBody580_1

def loopBody580_75 : HolLoopProg 64 :=
.mark loopBody580_74

def loopBody580_76 : HolLoopProg 64 :=
.seq loopBody580_51 loopBody580_75

def loopBody580_77 : HolLoopProg 64 :=
.mark loopBody580_76

def loopBody580_78 : HolLoopProg 64 :=
.seq loopBody580_49 loopBody580_77

def loopBody580_79 : HolLoopProg 64 :=
.mark loopBody580_78

def loopBody580_80 : HolLoopProg 64 :=
.seq loopBody580_43 loopBody580_79

def loopBody580_81 : HolLoopProg 64 :=
.mark loopBody580_80

def loopBody580_82 : HolLoopProg 64 :=
.seq loopBody580_41 loopBody580_81

def loopBody580_83 : HolLoopProg 64 :=
.mark loopBody580_82

def loopBody580_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5, 6, 7, 8]

def loopBody580_85 : HolLoopProg 64 :=
.mark loopBody580_84

def loopBody580_86 : HolLoopProg 64 :=
.seq loopBody580_85 loopBody580_1

def loopBody580_87 : HolLoopProg 64 :=
.mark loopBody580_86

def loopBody580_88 : HolLoopProg 64 :=
.seq loopBody580_9 loopBody580_87

def loopBody580_89 : HolLoopProg 64 :=
.mark loopBody580_88

def loopBody580_90 : HolLoopProg 64 :=
.seq loopBody580_7 loopBody580_89

def loopBody580_91 : HolLoopProg 64 :=
.mark loopBody580_90

def loopBody580_92 : HolLoopProg 64 :=
.seq loopBody580_5 loopBody580_91

def loopBody580_93 : HolLoopProg 64 :=
.mark loopBody580_92

def loopBody580_94 : HolLoopProg 64 :=
.seq loopBody580_3 loopBody580_93

def loopBody580_95 : HolLoopProg 64 :=
.mark loopBody580_94

def loopBody580_96 : HolLoopProg 64 :=
.seq loopBody580_83 loopBody580_95

def loopBody580_97 : HolLoopProg 64 :=
.mark loopBody580_96

def loopBody580_98 : HolLoopProg 64 :=
.seq loopBody580_39 loopBody580_97

def loopBody580_99 : HolLoopProg 64 :=
.mark loopBody580_98

def loopBody580_100 : HolLoopProg 64 :=
.seq loopBody580_1 loopBody580_99

def loopBody580_101 : HolLoopProg 64 :=
.mark loopBody580_100

def loopBody580_102 : HolLoopProg 64 :=
.seq loopBody580_1 loopBody580_101

def loopBody580_103 : HolLoopProg 64 :=
.mark loopBody580_102

def output580 : Nat × List Nat × HolLoopProg 64 :=
  (644, [0, 1, 2, 3], loopBody580_103)
end InitECandidate.Proofs.FrontendStages.Loop
