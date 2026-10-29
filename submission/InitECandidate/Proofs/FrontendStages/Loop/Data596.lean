import InitECandidate.Proofs.FrontendStages.Loop.Translate580
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody596_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody596_1 : HolLoopProg 64 :=
.mark loopBody596_0

def loopBody596_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody596_3 : HolLoopProg 64 :=
.mark loopBody596_2

def loopBody596_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody596_5 : HolLoopProg 64 :=
.mark loopBody596_4

def loopBody596_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody596_7 : HolLoopProg 64 :=
.mark loopBody596_6

def loopBody596_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody596_9 : HolLoopProg 64 :=
.mark loopBody596_8

def loopBody596_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody596_11 : HolLoopProg 64 :=
.mark loopBody596_10

def loopBody596_12 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 102) ([5, 6, 7, 8]) (some (5, loopBody596_11, loopBody596_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody596_13 : HolLoopProg 64 :=
.mark loopBody596_12

def loopBody596_14 : HolLoopProg 64 :=
.seq loopBody596_13 loopBody596_1

def loopBody596_15 : HolLoopProg 64 :=
.mark loopBody596_14

def loopBody596_16 : HolLoopProg 64 :=
.seq loopBody596_9 loopBody596_15

def loopBody596_17 : HolLoopProg 64 :=
.mark loopBody596_16

def loopBody596_18 : HolLoopProg 64 :=
.seq loopBody596_7 loopBody596_17

def loopBody596_19 : HolLoopProg 64 :=
.mark loopBody596_18

def loopBody596_20 : HolLoopProg 64 :=
.seq loopBody596_5 loopBody596_19

def loopBody596_21 : HolLoopProg 64 :=
.mark loopBody596_20

def loopBody596_22 : HolLoopProg 64 :=
.seq loopBody596_3 loopBody596_21

def loopBody596_23 : HolLoopProg 64 :=
.mark loopBody596_22

def loopBody596_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody596_25 : HolLoopProg 64 :=
.mark loopBody596_24

def loopBody596_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody596_27 : HolLoopProg 64 :=
.mark loopBody596_26

def loopBody596_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody596_29 : HolLoopProg 64 :=
.mark loopBody596_28

def loopBody596_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody596_31 : HolLoopProg 64 :=
.mark loopBody596_30

def loopBody596_32 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.RegImm.reg 7) loopBody596_29 loopBody596_31 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody596_33 : HolLoopProg 64 :=
.mark loopBody596_32

def loopBody596_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody596_35 : HolLoopProg 64 :=
.mark loopBody596_34

def loopBody596_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody596_37 : HolLoopProg 64 :=
.mark loopBody596_36

def loopBody596_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody596_39 : HolLoopProg 64 :=
.mark loopBody596_38

def loopBody596_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody596_41 : HolLoopProg 64 :=
.mark loopBody596_40

def loopBody596_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5, 6, 7, 8]

def loopBody596_43 : HolLoopProg 64 :=
.mark loopBody596_42

def loopBody596_44 : HolLoopProg 64 :=
.seq loopBody596_43 loopBody596_1

def loopBody596_45 : HolLoopProg 64 :=
.mark loopBody596_44

def loopBody596_46 : HolLoopProg 64 :=
.seq loopBody596_41 loopBody596_45

def loopBody596_47 : HolLoopProg 64 :=
.mark loopBody596_46

def loopBody596_48 : HolLoopProg 64 :=
.seq loopBody596_39 loopBody596_47

def loopBody596_49 : HolLoopProg 64 :=
.mark loopBody596_48

def loopBody596_50 : HolLoopProg 64 :=
.seq loopBody596_31 loopBody596_49

def loopBody596_51 : HolLoopProg 64 :=
.mark loopBody596_50

def loopBody596_52 : HolLoopProg 64 :=
.seq loopBody596_37 loopBody596_51

def loopBody596_53 : HolLoopProg 64 :=
.mark loopBody596_52

def loopBody596_54 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody596_53 loopBody596_1 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody596_55 : HolLoopProg 64 :=
.mark loopBody596_54

def loopBody596_56 : HolLoopProg 64 :=
.seq loopBody596_55 loopBody596_1

def loopBody596_57 : HolLoopProg 64 :=
.mark loopBody596_56

def loopBody596_58 : HolLoopProg 64 :=
.seq loopBody596_35 loopBody596_57

def loopBody596_59 : HolLoopProg 64 :=
.mark loopBody596_58

def loopBody596_60 : HolLoopProg 64 :=
.seq loopBody596_33 loopBody596_59

def loopBody596_61 : HolLoopProg 64 :=
.mark loopBody596_60

def loopBody596_62 : HolLoopProg 64 :=
.seq loopBody596_27 loopBody596_61

def loopBody596_63 : HolLoopProg 64 :=
.mark loopBody596_62

def loopBody596_64 : HolLoopProg 64 :=
.seq loopBody596_25 loopBody596_63

def loopBody596_65 : HolLoopProg 64 :=
.mark loopBody596_64

def loopBody596_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 4332616871279656263#64)

def loopBody596_67 : HolLoopProg 64 :=
.mark loopBody596_66

def loopBody596_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 10917124144477883021#64)

def loopBody596_69 : HolLoopProg 64 :=
.mark loopBody596_68

def loopBody596_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 13281191951274694749#64)

def loopBody596_71 : HolLoopProg 64 :=
.mark loopBody596_70

def loopBody596_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 3486998266802970665#64)

def loopBody596_73 : HolLoopProg 64 :=
.mark loopBody596_72

def loopBody596_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 0)

def loopBody596_75 : HolLoopProg 64 :=
.mark loopBody596_74

def loopBody596_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 1)

def loopBody596_77 : HolLoopProg 64 :=
.mark loopBody596_76

def loopBody596_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 2)

def loopBody596_79 : HolLoopProg 64 :=
.mark loopBody596_78

def loopBody596_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 3)

def loopBody596_81 : HolLoopProg 64 :=
.mark loopBody596_80

def loopBody596_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 117) [5, 6, 7, 8, 9, 10, 11, 12] none

def loopBody596_83 : HolLoopProg 64 :=
.mark loopBody596_82

def loopBody596_84 : HolLoopProg 64 :=
.seq loopBody596_83 loopBody596_1

def loopBody596_85 : HolLoopProg 64 :=
.mark loopBody596_84

def loopBody596_86 : HolLoopProg 64 :=
.seq loopBody596_81 loopBody596_85

def loopBody596_87 : HolLoopProg 64 :=
.mark loopBody596_86

def loopBody596_88 : HolLoopProg 64 :=
.seq loopBody596_79 loopBody596_87

def loopBody596_89 : HolLoopProg 64 :=
.mark loopBody596_88

def loopBody596_90 : HolLoopProg 64 :=
.seq loopBody596_77 loopBody596_89

def loopBody596_91 : HolLoopProg 64 :=
.mark loopBody596_90

def loopBody596_92 : HolLoopProg 64 :=
.seq loopBody596_75 loopBody596_91

def loopBody596_93 : HolLoopProg 64 :=
.mark loopBody596_92

def loopBody596_94 : HolLoopProg 64 :=
.seq loopBody596_73 loopBody596_93

def loopBody596_95 : HolLoopProg 64 :=
.mark loopBody596_94

def loopBody596_96 : HolLoopProg 64 :=
.seq loopBody596_71 loopBody596_95

def loopBody596_97 : HolLoopProg 64 :=
.mark loopBody596_96

def loopBody596_98 : HolLoopProg 64 :=
.seq loopBody596_69 loopBody596_97

def loopBody596_99 : HolLoopProg 64 :=
.mark loopBody596_98

def loopBody596_100 : HolLoopProg 64 :=
.seq loopBody596_67 loopBody596_99

def loopBody596_101 : HolLoopProg 64 :=
.mark loopBody596_100

def loopBody596_102 : HolLoopProg 64 :=
.seq loopBody596_65 loopBody596_101

def loopBody596_103 : HolLoopProg 64 :=
.mark loopBody596_102

def loopBody596_104 : HolLoopProg 64 :=
.seq loopBody596_23 loopBody596_103

def loopBody596_105 : HolLoopProg 64 :=
.mark loopBody596_104

def loopBody596_106 : HolLoopProg 64 :=
.seq loopBody596_1 loopBody596_105

def loopBody596_107 : HolLoopProg 64 :=
.mark loopBody596_106

def loopBody596_108 : HolLoopProg 64 :=
.seq loopBody596_1 loopBody596_107

def loopBody596_109 : HolLoopProg 64 :=
.mark loopBody596_108

def output596 : Nat × List Nat × HolLoopProg 64 :=
  (660, [0, 1, 2, 3], loopBody596_109)
end InitECandidate.Proofs.FrontendStages.Loop
