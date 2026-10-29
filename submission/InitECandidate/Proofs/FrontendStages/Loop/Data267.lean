import InitECandidate.Proofs.FrontendStages.Loop.Translate251
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody267_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody267_1 : HolLoopProg 64 :=
.mark loopBody267_0

def loopBody267_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64]))

def loopBody267_3 : HolLoopProg 64 :=
.mark loopBody267_2

def loopBody267_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody267_5 : HolLoopProg 64 :=
.mark loopBody267_4

def loopBody267_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody267_7 : HolLoopProg 64 :=
.mark loopBody267_6

def loopBody267_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody267_9 : HolLoopProg 64 :=
.mark loopBody267_8

def loopBody267_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody267_11 : HolLoopProg 64 :=
.mark loopBody267_10

def loopBody267_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.RegImm.reg 5) loopBody267_9 loopBody267_11 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))

def loopBody267_13 : HolLoopProg 64 :=
.mark loopBody267_12

def loopBody267_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody267_15 : HolLoopProg 64 :=
.mark loopBody267_14

def loopBody267_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody267_17 : HolLoopProg 64 :=
.mark loopBody267_16

def loopBody267_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 128#64]))

def loopBody267_19 : HolLoopProg 64 :=
.mark loopBody267_18

def loopBody267_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 32#64)

def loopBody267_21 : HolLoopProg 64 :=
.mark loopBody267_20

def loopBody267_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody267_23 : HolLoopProg 64 :=
.mark loopBody267_22

def loopBody267_24 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.ln)) (some 77) ([4, 5, 6]) (some (4, loopBody267_23, loopBody267_1, (Flapjack.Spt.ln)))

def loopBody267_25 : HolLoopProg 64 :=
.mark loopBody267_24

def loopBody267_26 : HolLoopProg 64 :=
.seq loopBody267_25 loopBody267_1

def loopBody267_27 : HolLoopProg 64 :=
.mark loopBody267_26

def loopBody267_28 : HolLoopProg 64 :=
.seq loopBody267_21 loopBody267_27

def loopBody267_29 : HolLoopProg 64 :=
.mark loopBody267_28

def loopBody267_30 : HolLoopProg 64 :=
.seq loopBody267_19 loopBody267_29

def loopBody267_31 : HolLoopProg 64 :=
.mark loopBody267_30

def loopBody267_32 : HolLoopProg 64 :=
.seq loopBody267_17 loopBody267_31

def loopBody267_33 : HolLoopProg 64 :=
.mark loopBody267_32

def loopBody267_34 : HolLoopProg 64 :=
.seq loopBody267_1 loopBody267_33

def loopBody267_35 : HolLoopProg 64 :=
.mark loopBody267_34

def loopBody267_36 : HolLoopProg 64 :=
.seq loopBody267_1 loopBody267_35

def loopBody267_37 : HolLoopProg 64 :=
.mark loopBody267_36

def loopBody267_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody267_39 : HolLoopProg 64 :=
.mark loopBody267_38

def loopBody267_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody267_41 : HolLoopProg 64 :=
.mark loopBody267_40

def loopBody267_42 : HolLoopProg 64 :=
.seq loopBody267_41 loopBody267_1

def loopBody267_43 : HolLoopProg 64 :=
.mark loopBody267_42

def loopBody267_44 : HolLoopProg 64 :=
.seq loopBody267_39 loopBody267_43

def loopBody267_45 : HolLoopProg 64 :=
.mark loopBody267_44

def loopBody267_46 : HolLoopProg 64 :=
.seq loopBody267_37 loopBody267_45

def loopBody267_47 : HolLoopProg 64 :=
.mark loopBody267_46

def loopBody267_48 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody267_47 loopBody267_1 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))

def loopBody267_49 : HolLoopProg 64 :=
.mark loopBody267_48

def loopBody267_50 : HolLoopProg 64 :=
.seq loopBody267_49 loopBody267_1

def loopBody267_51 : HolLoopProg 64 :=
.mark loopBody267_50

def loopBody267_52 : HolLoopProg 64 :=
.seq loopBody267_15 loopBody267_51

def loopBody267_53 : HolLoopProg 64 :=
.mark loopBody267_52

def loopBody267_54 : HolLoopProg 64 :=
.seq loopBody267_13 loopBody267_53

def loopBody267_55 : HolLoopProg 64 :=
.mark loopBody267_54

def loopBody267_56 : HolLoopProg 64 :=
.seq loopBody267_7 loopBody267_55

def loopBody267_57 : HolLoopProg 64 :=
.mark loopBody267_56

def loopBody267_58 : HolLoopProg 64 :=
.seq loopBody267_5 loopBody267_57

def loopBody267_59 : HolLoopProg 64 :=
.mark loopBody267_58

def loopBody267_60 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 330) ([4]) (some (4, loopBody267_23, loopBody267_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody267_61 : HolLoopProg 64 :=
.mark loopBody267_60

def loopBody267_62 : HolLoopProg 64 :=
.seq loopBody267_61 loopBody267_1

def loopBody267_63 : HolLoopProg 64 :=
.mark loopBody267_62

def loopBody267_64 : HolLoopProg 64 :=
.seq loopBody267_5 loopBody267_63

def loopBody267_65 : HolLoopProg 64 :=
.mark loopBody267_64

def loopBody267_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody267_67 : HolLoopProg 64 :=
.mark loopBody267_66

def loopBody267_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody267_69 : HolLoopProg 64 :=
.mark loopBody267_68

def loopBody267_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 32#64)

def loopBody267_71 : HolLoopProg 64 :=
.mark loopBody267_70

def loopBody267_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody267_73 : HolLoopProg 64 :=
.mark loopBody267_72

def loopBody267_74 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.ln)) (some 77) ([5, 6, 7]) (some (5, loopBody267_73, loopBody267_1, (Flapjack.Spt.ln)))

def loopBody267_75 : HolLoopProg 64 :=
.mark loopBody267_74

def loopBody267_76 : HolLoopProg 64 :=
.seq loopBody267_75 loopBody267_1

def loopBody267_77 : HolLoopProg 64 :=
.mark loopBody267_76

def loopBody267_78 : HolLoopProg 64 :=
.seq loopBody267_71 loopBody267_77

def loopBody267_79 : HolLoopProg 64 :=
.mark loopBody267_78

def loopBody267_80 : HolLoopProg 64 :=
.seq loopBody267_69 loopBody267_79

def loopBody267_81 : HolLoopProg 64 :=
.mark loopBody267_80

def loopBody267_82 : HolLoopProg 64 :=
.seq loopBody267_67 loopBody267_81

def loopBody267_83 : HolLoopProg 64 :=
.mark loopBody267_82

def loopBody267_84 : HolLoopProg 64 :=
.seq loopBody267_1 loopBody267_83

def loopBody267_85 : HolLoopProg 64 :=
.mark loopBody267_84

def loopBody267_86 : HolLoopProg 64 :=
.seq loopBody267_1 loopBody267_85

def loopBody267_87 : HolLoopProg 64 :=
.mark loopBody267_86

def loopBody267_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody267_89 : HolLoopProg 64 :=
.mark loopBody267_88

def loopBody267_90 : HolLoopProg 64 :=
.seq loopBody267_89 loopBody267_1

def loopBody267_91 : HolLoopProg 64 :=
.mark loopBody267_90

def loopBody267_92 : HolLoopProg 64 :=
.seq loopBody267_11 loopBody267_91

def loopBody267_93 : HolLoopProg 64 :=
.mark loopBody267_92

def loopBody267_94 : HolLoopProg 64 :=
.seq loopBody267_87 loopBody267_93

def loopBody267_95 : HolLoopProg 64 :=
.mark loopBody267_94

def loopBody267_96 : HolLoopProg 64 :=
.seq loopBody267_65 loopBody267_95

def loopBody267_97 : HolLoopProg 64 :=
.mark loopBody267_96

def loopBody267_98 : HolLoopProg 64 :=
.seq loopBody267_1 loopBody267_97

def loopBody267_99 : HolLoopProg 64 :=
.mark loopBody267_98

def loopBody267_100 : HolLoopProg 64 :=
.seq loopBody267_1 loopBody267_99

def loopBody267_101 : HolLoopProg 64 :=
.mark loopBody267_100

def loopBody267_102 : HolLoopProg 64 :=
.seq loopBody267_59 loopBody267_101

def loopBody267_103 : HolLoopProg 64 :=
.mark loopBody267_102

def loopBody267_104 : HolLoopProg 64 :=
.seq loopBody267_3 loopBody267_103

def loopBody267_105 : HolLoopProg 64 :=
.mark loopBody267_104

def loopBody267_106 : HolLoopProg 64 :=
.seq loopBody267_1 loopBody267_105

def loopBody267_107 : HolLoopProg 64 :=
.mark loopBody267_106

def output267 : Nat × List Nat × HolLoopProg 64 :=
  (331, [0, 1], loopBody267_107)
end InitECandidate.Proofs.FrontendStages.Loop
