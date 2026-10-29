import InitECandidate.Proofs.FrontendStages.Loop.Translate332
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody348_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody348_1 : HolLoopProg 64 :=
.mark loopBody348_0

def loopBody348_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody348_3 : HolLoopProg 64 :=
.mark loopBody348_2

def loopBody348_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody348_5 : HolLoopProg 64 :=
.mark loopBody348_4

def loopBody348_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody348_7 : HolLoopProg 64 :=
.mark loopBody348_6

def loopBody348_8 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 392) ([3, 4]) (some (3, loopBody348_7, loopBody348_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody348_9 : HolLoopProg 64 :=
.mark loopBody348_8

def loopBody348_10 : HolLoopProg 64 :=
.seq loopBody348_9 loopBody348_1

def loopBody348_11 : HolLoopProg 64 :=
.mark loopBody348_10

def loopBody348_12 : HolLoopProg 64 :=
.seq loopBody348_5 loopBody348_11

def loopBody348_13 : HolLoopProg 64 :=
.mark loopBody348_12

def loopBody348_14 : HolLoopProg 64 :=
.seq loopBody348_3 loopBody348_13

def loopBody348_15 : HolLoopProg 64 :=
.mark loopBody348_14

def loopBody348_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 184#64]),
        Flapjack.HolLoopExp.const 64#64]))

def loopBody348_17 : HolLoopProg 64 :=
.mark loopBody348_16

def loopBody348_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody348_19 : HolLoopProg 64 :=
.mark loopBody348_18

def loopBody348_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody348_21 : HolLoopProg 64 :=
.mark loopBody348_20

def loopBody348_22 : HolLoopProg 64 :=
.call (some ([3, 4], Flapjack.Spt.ln)) (some 186) ([5, 6]) (some (5, loopBody348_21, loopBody348_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody348_23 : HolLoopProg 64 :=
.mark loopBody348_22

def loopBody348_24 : HolLoopProg 64 :=
.seq loopBody348_23 loopBody348_1

def loopBody348_25 : HolLoopProg 64 :=
.mark loopBody348_24

def loopBody348_26 : HolLoopProg 64 :=
.seq loopBody348_19 loopBody348_25

def loopBody348_27 : HolLoopProg 64 :=
.mark loopBody348_26

def loopBody348_28 : HolLoopProg 64 :=
.seq loopBody348_17 loopBody348_27

def loopBody348_29 : HolLoopProg 64 :=
.mark loopBody348_28

def loopBody348_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody348_31 : HolLoopProg 64 :=
.mark loopBody348_30

def loopBody348_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody348_33 : HolLoopProg 64 :=
.mark loopBody348_32

def loopBody348_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody348_35 : HolLoopProg 64 :=
.mark loopBody348_34

def loopBody348_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody348_37 : HolLoopProg 64 :=
.mark loopBody348_36

def loopBody348_38 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.RegImm.reg 7) loopBody348_35 loopBody348_37 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)

def loopBody348_39 : HolLoopProg 64 :=
.mark loopBody348_38

def loopBody348_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody348_41 : HolLoopProg 64 :=
.mark loopBody348_40

def loopBody348_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody348_43 : HolLoopProg 64 :=
.mark loopBody348_42

def loopBody348_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody348_45 : HolLoopProg 64 :=
.mark loopBody348_44

def loopBody348_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5, 6, 7, 8]

def loopBody348_47 : HolLoopProg 64 :=
.mark loopBody348_46

def loopBody348_48 : HolLoopProg 64 :=
.seq loopBody348_47 loopBody348_1

def loopBody348_49 : HolLoopProg 64 :=
.mark loopBody348_48

def loopBody348_50 : HolLoopProg 64 :=
.seq loopBody348_45 loopBody348_49

def loopBody348_51 : HolLoopProg 64 :=
.mark loopBody348_50

def loopBody348_52 : HolLoopProg 64 :=
.seq loopBody348_33 loopBody348_51

def loopBody348_53 : HolLoopProg 64 :=
.mark loopBody348_52

def loopBody348_54 : HolLoopProg 64 :=
.seq loopBody348_37 loopBody348_53

def loopBody348_55 : HolLoopProg 64 :=
.mark loopBody348_54

def loopBody348_56 : HolLoopProg 64 :=
.seq loopBody348_43 loopBody348_55

def loopBody348_57 : HolLoopProg 64 :=
.mark loopBody348_56

def loopBody348_58 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody348_57 loopBody348_1 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)

def loopBody348_59 : HolLoopProg 64 :=
.mark loopBody348_58

def loopBody348_60 : HolLoopProg 64 :=
.seq loopBody348_59 loopBody348_1

def loopBody348_61 : HolLoopProg 64 :=
.mark loopBody348_60

def loopBody348_62 : HolLoopProg 64 :=
.seq loopBody348_41 loopBody348_61

def loopBody348_63 : HolLoopProg 64 :=
.mark loopBody348_62

def loopBody348_64 : HolLoopProg 64 :=
.seq loopBody348_39 loopBody348_63

def loopBody348_65 : HolLoopProg 64 :=
.mark loopBody348_64

def loopBody348_66 : HolLoopProg 64 :=
.seq loopBody348_33 loopBody348_65

def loopBody348_67 : HolLoopProg 64 :=
.mark loopBody348_66

def loopBody348_68 : HolLoopProg 64 :=
.seq loopBody348_31 loopBody348_67

def loopBody348_69 : HolLoopProg 64 :=
.mark loopBody348_68

def loopBody348_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.load (Flapjack.HolLoopExp.var 4))

def loopBody348_71 : HolLoopProg 64 :=
.mark loopBody348_70

def loopBody348_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 8#64]))

def loopBody348_73 : HolLoopProg 64 :=
.mark loopBody348_72

def loopBody348_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 16#64]))

def loopBody348_75 : HolLoopProg 64 :=
.mark loopBody348_74

def loopBody348_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 24#64]))

def loopBody348_77 : HolLoopProg 64 :=
.mark loopBody348_76

def loopBody348_78 : HolLoopProg 64 :=
.seq loopBody348_77 loopBody348_49

def loopBody348_79 : HolLoopProg 64 :=
.mark loopBody348_78

def loopBody348_80 : HolLoopProg 64 :=
.seq loopBody348_75 loopBody348_79

def loopBody348_81 : HolLoopProg 64 :=
.mark loopBody348_80

def loopBody348_82 : HolLoopProg 64 :=
.seq loopBody348_73 loopBody348_81

def loopBody348_83 : HolLoopProg 64 :=
.mark loopBody348_82

def loopBody348_84 : HolLoopProg 64 :=
.seq loopBody348_71 loopBody348_83

def loopBody348_85 : HolLoopProg 64 :=
.mark loopBody348_84

def loopBody348_86 : HolLoopProg 64 :=
.seq loopBody348_69 loopBody348_85

def loopBody348_87 : HolLoopProg 64 :=
.mark loopBody348_86

def loopBody348_88 : HolLoopProg 64 :=
.seq loopBody348_29 loopBody348_87

def loopBody348_89 : HolLoopProg 64 :=
.mark loopBody348_88

def loopBody348_90 : HolLoopProg 64 :=
.seq loopBody348_1 loopBody348_89

def loopBody348_91 : HolLoopProg 64 :=
.mark loopBody348_90

def loopBody348_92 : HolLoopProg 64 :=
.seq loopBody348_1 loopBody348_91

def loopBody348_93 : HolLoopProg 64 :=
.mark loopBody348_92

def loopBody348_94 : HolLoopProg 64 :=
.seq loopBody348_1 loopBody348_93

def loopBody348_95 : HolLoopProg 64 :=
.mark loopBody348_94

def loopBody348_96 : HolLoopProg 64 :=
.seq loopBody348_1 loopBody348_95

def loopBody348_97 : HolLoopProg 64 :=
.mark loopBody348_96

def loopBody348_98 : HolLoopProg 64 :=
.seq loopBody348_15 loopBody348_97

def loopBody348_99 : HolLoopProg 64 :=
.mark loopBody348_98

def loopBody348_100 : HolLoopProg 64 :=
.seq loopBody348_1 loopBody348_99

def loopBody348_101 : HolLoopProg 64 :=
.mark loopBody348_100

def loopBody348_102 : HolLoopProg 64 :=
.seq loopBody348_1 loopBody348_101

def loopBody348_103 : HolLoopProg 64 :=
.mark loopBody348_102

def output348 : Nat × List Nat × HolLoopProg 64 :=
  (412, [0, 1], loopBody348_103)
end InitECandidate.Proofs.FrontendStages.Loop
