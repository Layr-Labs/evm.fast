import InitECandidate.Proofs.FrontendStages.Loop.Translate459
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody475_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody475_1 : HolLoopProg 64 :=
.mark loopBody475_0

def loopBody475_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 3#64)

def loopBody475_3 : HolLoopProg 64 :=
.mark loopBody475_2

def loopBody475_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody475_5 : HolLoopProg 64 :=
.mark loopBody475_4

def loopBody475_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 470) ([2]) (some (2, loopBody475_5, loopBody475_1, (Flapjack.Spt.ls PUnit.unit)))

def loopBody475_7 : HolLoopProg 64 :=
.mark loopBody475_6

def loopBody475_8 : HolLoopProg 64 :=
.seq loopBody475_7 loopBody475_1

def loopBody475_9 : HolLoopProg 64 :=
.mark loopBody475_8

def loopBody475_10 : HolLoopProg 64 :=
.seq loopBody475_3 loopBody475_9

def loopBody475_11 : HolLoopProg 64 :=
.mark loopBody475_10

def loopBody475_12 : HolLoopProg 64 :=
.seq loopBody475_1 loopBody475_11

def loopBody475_13 : HolLoopProg 64 :=
.mark loopBody475_12

def loopBody475_14 : HolLoopProg 64 :=
.seq loopBody475_1 loopBody475_13

def loopBody475_15 : HolLoopProg 64 :=
.mark loopBody475_14

def loopBody475_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody475_17 : HolLoopProg 64 :=
.mark loopBody475_16

def loopBody475_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 16#64]))

def loopBody475_19 : HolLoopProg 64 :=
.mark loopBody475_18

def loopBody475_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody475_21 : HolLoopProg 64 :=
.mark loopBody475_20

def loopBody475_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody475_23 : HolLoopProg 64 :=
.mark loopBody475_22

def loopBody475_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.RegImm.reg 3) loopBody475_21 loopBody475_23 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def loopBody475_25 : HolLoopProg 64 :=
.mark loopBody475_24

def loopBody475_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody475_27 : HolLoopProg 64 :=
.mark loopBody475_26

def loopBody475_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 2#64)

def loopBody475_29 : HolLoopProg 64 :=
.mark loopBody475_28

def loopBody475_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 1)

def loopBody475_31 : HolLoopProg 64 :=
.mark loopBody475_30

def loopBody475_32 : HolLoopProg 64 :=
.seq loopBody475_31 loopBody475_1

def loopBody475_33 : HolLoopProg 64 :=
.mark loopBody475_32

def loopBody475_34 : HolLoopProg 64 :=
.seq loopBody475_33 loopBody475_1

def loopBody475_35 : HolLoopProg 64 :=
.mark loopBody475_34

def loopBody475_36 : HolLoopProg 64 :=
.seq loopBody475_29 loopBody475_35

def loopBody475_37 : HolLoopProg 64 :=
.mark loopBody475_36

def loopBody475_38 : HolLoopProg 64 :=
.seq loopBody475_1 loopBody475_37

def loopBody475_39 : HolLoopProg 64 :=
.mark loopBody475_38

def loopBody475_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 8#64)

def loopBody475_41 : HolLoopProg 64 :=
.mark loopBody475_40

def loopBody475_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 1

def loopBody475_43 : HolLoopProg 64 :=
.mark loopBody475_42

def loopBody475_44 : HolLoopProg 64 :=
.seq loopBody475_41 loopBody475_43

def loopBody475_45 : HolLoopProg 64 :=
.mark loopBody475_44

def loopBody475_46 : HolLoopProg 64 :=
.seq loopBody475_39 loopBody475_45

def loopBody475_47 : HolLoopProg 64 :=
.mark loopBody475_46

def loopBody475_48 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody475_47 loopBody475_1 (Flapjack.Spt.ls PUnit.unit)

def loopBody475_49 : HolLoopProg 64 :=
.mark loopBody475_48

def loopBody475_50 : HolLoopProg 64 :=
.seq loopBody475_49 loopBody475_1

def loopBody475_51 : HolLoopProg 64 :=
.mark loopBody475_50

def loopBody475_52 : HolLoopProg 64 :=
.seq loopBody475_27 loopBody475_51

def loopBody475_53 : HolLoopProg 64 :=
.mark loopBody475_52

def loopBody475_54 : HolLoopProg 64 :=
.seq loopBody475_25 loopBody475_53

def loopBody475_55 : HolLoopProg 64 :=
.mark loopBody475_54

def loopBody475_56 : HolLoopProg 64 :=
.seq loopBody475_19 loopBody475_55

def loopBody475_57 : HolLoopProg 64 :=
.mark loopBody475_56

def loopBody475_58 : HolLoopProg 64 :=
.seq loopBody475_17 loopBody475_57

def loopBody475_59 : HolLoopProg 64 :=
.mark loopBody475_58

def loopBody475_60 : HolLoopProg 64 :=
.seq loopBody475_15 loopBody475_59

def loopBody475_61 : HolLoopProg 64 :=
.mark loopBody475_60

def loopBody475_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody475_63 : HolLoopProg 64 :=
.mark loopBody475_62

def loopBody475_64 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 538) ([2, 3]) (some (2, loopBody475_5, loopBody475_1, (Flapjack.Spt.ln)))

def loopBody475_65 : HolLoopProg 64 :=
.mark loopBody475_64

def loopBody475_66 : HolLoopProg 64 :=
.seq loopBody475_65 loopBody475_1

def loopBody475_67 : HolLoopProg 64 :=
.mark loopBody475_66

def loopBody475_68 : HolLoopProg 64 :=
.seq loopBody475_63 loopBody475_67

def loopBody475_69 : HolLoopProg 64 :=
.mark loopBody475_68

def loopBody475_70 : HolLoopProg 64 :=
.seq loopBody475_23 loopBody475_69

def loopBody475_71 : HolLoopProg 64 :=
.mark loopBody475_70

def loopBody475_72 : HolLoopProg 64 :=
.seq loopBody475_1 loopBody475_71

def loopBody475_73 : HolLoopProg 64 :=
.mark loopBody475_72

def loopBody475_74 : HolLoopProg 64 :=
.seq loopBody475_1 loopBody475_73

def loopBody475_75 : HolLoopProg 64 :=
.mark loopBody475_74

def loopBody475_76 : HolLoopProg 64 :=
.seq loopBody475_61 loopBody475_75

def loopBody475_77 : HolLoopProg 64 :=
.mark loopBody475_76

def loopBody475_78 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 490) ([2]) (some (2, loopBody475_5, loopBody475_1, (Flapjack.Spt.ln)))

def loopBody475_79 : HolLoopProg 64 :=
.mark loopBody475_78

def loopBody475_80 : HolLoopProg 64 :=
.seq loopBody475_79 loopBody475_1

def loopBody475_81 : HolLoopProg 64 :=
.mark loopBody475_80

def loopBody475_82 : HolLoopProg 64 :=
.seq loopBody475_21 loopBody475_81

def loopBody475_83 : HolLoopProg 64 :=
.mark loopBody475_82

def loopBody475_84 : HolLoopProg 64 :=
.seq loopBody475_1 loopBody475_83

def loopBody475_85 : HolLoopProg 64 :=
.mark loopBody475_84

def loopBody475_86 : HolLoopProg 64 :=
.seq loopBody475_1 loopBody475_85

def loopBody475_87 : HolLoopProg 64 :=
.mark loopBody475_86

def loopBody475_88 : HolLoopProg 64 :=
.seq loopBody475_77 loopBody475_87

def loopBody475_89 : HolLoopProg 64 :=
.mark loopBody475_88

def loopBody475_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody475_91 : HolLoopProg 64 :=
.mark loopBody475_90

def loopBody475_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody475_93 : HolLoopProg 64 :=
.mark loopBody475_92

def loopBody475_94 : HolLoopProg 64 :=
.seq loopBody475_93 loopBody475_1

def loopBody475_95 : HolLoopProg 64 :=
.mark loopBody475_94

def loopBody475_96 : HolLoopProg 64 :=
.seq loopBody475_91 loopBody475_95

def loopBody475_97 : HolLoopProg 64 :=
.mark loopBody475_96

def loopBody475_98 : HolLoopProg 64 :=
.seq loopBody475_89 loopBody475_97

def loopBody475_99 : HolLoopProg 64 :=
.mark loopBody475_98

def output475 : Nat × List Nat × HolLoopProg 64 :=
  (539, [0], loopBody475_99)
end InitECandidate.Proofs.FrontendStages.Loop
