import InitECandidate.Proofs.FrontendStages.Loop.Translate326
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody342_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody342_1 : HolLoopProg 64 :=
.mark loopBody342_0

def loopBody342_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 184#64]),
        Flapjack.HolLoopExp.const 8#64]))

def loopBody342_3 : HolLoopProg 64 :=
.mark loopBody342_2

def loopBody342_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody342_5 : HolLoopProg 64 :=
.mark loopBody342_4

def loopBody342_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody342_7 : HolLoopProg 64 :=
.mark loopBody342_6

def loopBody342_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody342_9 : HolLoopProg 64 :=
.mark loopBody342_8

def loopBody342_10 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 192) ([2, 3, 4]) (some (2, loopBody342_9, loopBody342_1, (Flapjack.Spt.ls PUnit.unit)))

def loopBody342_11 : HolLoopProg 64 :=
.mark loopBody342_10

def loopBody342_12 : HolLoopProg 64 :=
.seq loopBody342_11 loopBody342_1

def loopBody342_13 : HolLoopProg 64 :=
.mark loopBody342_12

def loopBody342_14 : HolLoopProg 64 :=
.seq loopBody342_7 loopBody342_13

def loopBody342_15 : HolLoopProg 64 :=
.mark loopBody342_14

def loopBody342_16 : HolLoopProg 64 :=
.seq loopBody342_5 loopBody342_15

def loopBody342_17 : HolLoopProg 64 :=
.mark loopBody342_16

def loopBody342_18 : HolLoopProg 64 :=
.seq loopBody342_3 loopBody342_17

def loopBody342_19 : HolLoopProg 64 :=
.mark loopBody342_18

def loopBody342_20 : HolLoopProg 64 :=
.seq loopBody342_1 loopBody342_19

def loopBody342_21 : HolLoopProg 64 :=
.mark loopBody342_20

def loopBody342_22 : HolLoopProg 64 :=
.seq loopBody342_1 loopBody342_21

def loopBody342_23 : HolLoopProg 64 :=
.mark loopBody342_22

def loopBody342_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 184#64]),
        Flapjack.HolLoopExp.const 16#64]))

def loopBody342_25 : HolLoopProg 64 :=
.mark loopBody342_24

def loopBody342_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody342_27 : HolLoopProg 64 :=
.mark loopBody342_26

def loopBody342_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody342_29 : HolLoopProg 64 :=
.mark loopBody342_28

def loopBody342_30 : HolLoopProg 64 :=
.call (some ([1, 2], Flapjack.Spt.ls PUnit.unit)) (some 186) ([3, 4]) (some (3, loopBody342_29, loopBody342_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody342_31 : HolLoopProg 64 :=
.mark loopBody342_30

def loopBody342_32 : HolLoopProg 64 :=
.seq loopBody342_31 loopBody342_1

def loopBody342_33 : HolLoopProg 64 :=
.mark loopBody342_32

def loopBody342_34 : HolLoopProg 64 :=
.seq loopBody342_27 loopBody342_33

def loopBody342_35 : HolLoopProg 64 :=
.mark loopBody342_34

def loopBody342_36 : HolLoopProg 64 :=
.seq loopBody342_25 loopBody342_35

def loopBody342_37 : HolLoopProg 64 :=
.mark loopBody342_36

def loopBody342_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody342_39 : HolLoopProg 64 :=
.mark loopBody342_38

def loopBody342_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody342_41 : HolLoopProg 64 :=
.mark loopBody342_40

def loopBody342_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody342_43 : HolLoopProg 64 :=
.mark loopBody342_42

def loopBody342_44 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.reg 5) loopBody342_7 loopBody342_43 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)

def loopBody342_45 : HolLoopProg 64 :=
.mark loopBody342_44

def loopBody342_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody342_47 : HolLoopProg 64 :=
.mark loopBody342_46

def loopBody342_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 2)

def loopBody342_49 : HolLoopProg 64 :=
.mark loopBody342_48

def loopBody342_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody342_51 : HolLoopProg 64 :=
.mark loopBody342_50

def loopBody342_52 : HolLoopProg 64 :=
.seq loopBody342_51 loopBody342_1

def loopBody342_53 : HolLoopProg 64 :=
.mark loopBody342_52

def loopBody342_54 : HolLoopProg 64 :=
.seq loopBody342_49 loopBody342_53

def loopBody342_55 : HolLoopProg 64 :=
.mark loopBody342_54

def loopBody342_56 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody342_55 loopBody342_1 (Flapjack.Spt.ls PUnit.unit)

def loopBody342_57 : HolLoopProg 64 :=
.mark loopBody342_56

def loopBody342_58 : HolLoopProg 64 :=
.seq loopBody342_57 loopBody342_1

def loopBody342_59 : HolLoopProg 64 :=
.mark loopBody342_58

def loopBody342_60 : HolLoopProg 64 :=
.seq loopBody342_47 loopBody342_59

def loopBody342_61 : HolLoopProg 64 :=
.mark loopBody342_60

def loopBody342_62 : HolLoopProg 64 :=
.seq loopBody342_45 loopBody342_61

def loopBody342_63 : HolLoopProg 64 :=
.mark loopBody342_62

def loopBody342_64 : HolLoopProg 64 :=
.seq loopBody342_41 loopBody342_63

def loopBody342_65 : HolLoopProg 64 :=
.mark loopBody342_64

def loopBody342_66 : HolLoopProg 64 :=
.seq loopBody342_39 loopBody342_65

def loopBody342_67 : HolLoopProg 64 :=
.mark loopBody342_66

def loopBody342_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody342_69 : HolLoopProg 64 :=
.mark loopBody342_68

def loopBody342_70 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.ln)) (some 404) ([4]) (some (4, loopBody342_69, loopBody342_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody342_71 : HolLoopProg 64 :=
.mark loopBody342_70

def loopBody342_72 : HolLoopProg 64 :=
.seq loopBody342_71 loopBody342_1

def loopBody342_73 : HolLoopProg 64 :=
.mark loopBody342_72

def loopBody342_74 : HolLoopProg 64 :=
.seq loopBody342_27 loopBody342_73

def loopBody342_75 : HolLoopProg 64 :=
.mark loopBody342_74

def loopBody342_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody342_77 : HolLoopProg 64 :=
.mark loopBody342_76

def loopBody342_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody342_79 : HolLoopProg 64 :=
.mark loopBody342_78

def loopBody342_80 : HolLoopProg 64 :=
.seq loopBody342_79 loopBody342_1

def loopBody342_81 : HolLoopProg 64 :=
.mark loopBody342_80

def loopBody342_82 : HolLoopProg 64 :=
.seq loopBody342_77 loopBody342_81

def loopBody342_83 : HolLoopProg 64 :=
.mark loopBody342_82

def loopBody342_84 : HolLoopProg 64 :=
.seq loopBody342_75 loopBody342_83

def loopBody342_85 : HolLoopProg 64 :=
.mark loopBody342_84

def loopBody342_86 : HolLoopProg 64 :=
.seq loopBody342_1 loopBody342_85

def loopBody342_87 : HolLoopProg 64 :=
.mark loopBody342_86

def loopBody342_88 : HolLoopProg 64 :=
.seq loopBody342_1 loopBody342_87

def loopBody342_89 : HolLoopProg 64 :=
.mark loopBody342_88

def loopBody342_90 : HolLoopProg 64 :=
.seq loopBody342_67 loopBody342_89

def loopBody342_91 : HolLoopProg 64 :=
.mark loopBody342_90

def loopBody342_92 : HolLoopProg 64 :=
.seq loopBody342_37 loopBody342_91

def loopBody342_93 : HolLoopProg 64 :=
.mark loopBody342_92

def loopBody342_94 : HolLoopProg 64 :=
.seq loopBody342_1 loopBody342_93

def loopBody342_95 : HolLoopProg 64 :=
.mark loopBody342_94

def loopBody342_96 : HolLoopProg 64 :=
.seq loopBody342_1 loopBody342_95

def loopBody342_97 : HolLoopProg 64 :=
.mark loopBody342_96

def loopBody342_98 : HolLoopProg 64 :=
.seq loopBody342_1 loopBody342_97

def loopBody342_99 : HolLoopProg 64 :=
.mark loopBody342_98

def loopBody342_100 : HolLoopProg 64 :=
.seq loopBody342_1 loopBody342_99

def loopBody342_101 : HolLoopProg 64 :=
.mark loopBody342_100

def loopBody342_102 : HolLoopProg 64 :=
.seq loopBody342_23 loopBody342_101

def loopBody342_103 : HolLoopProg 64 :=
.mark loopBody342_102

def output342 : Nat × List Nat × HolLoopProg 64 :=
  (406, [0], loopBody342_103)
end InitECandidate.Proofs.FrontendStages.Loop
