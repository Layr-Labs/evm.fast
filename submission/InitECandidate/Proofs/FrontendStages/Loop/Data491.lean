import InitECandidate.Proofs.FrontendStages.Loop.Translate475
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody491_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody491_1 : HolLoopProg 64 :=
.mark loopBody491_0

def loopBody491_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 2#64)

def loopBody491_3 : HolLoopProg 64 :=
.mark loopBody491_2

def loopBody491_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody491_5 : HolLoopProg 64 :=
.mark loopBody491_4

def loopBody491_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 470) ([2]) (some (2, loopBody491_5, loopBody491_1, (Flapjack.Spt.ln)))

def loopBody491_7 : HolLoopProg 64 :=
.mark loopBody491_6

def loopBody491_8 : HolLoopProg 64 :=
.seq loopBody491_7 loopBody491_1

def loopBody491_9 : HolLoopProg 64 :=
.mark loopBody491_8

def loopBody491_10 : HolLoopProg 64 :=
.seq loopBody491_3 loopBody491_9

def loopBody491_11 : HolLoopProg 64 :=
.mark loopBody491_10

def loopBody491_12 : HolLoopProg 64 :=
.seq loopBody491_1 loopBody491_11

def loopBody491_13 : HolLoopProg 64 :=
.mark loopBody491_12

def loopBody491_14 : HolLoopProg 64 :=
.seq loopBody491_1 loopBody491_13

def loopBody491_15 : HolLoopProg 64 :=
.mark loopBody491_14

def loopBody491_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.add
            [Flapjack.HolLoopExp.load
                (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                  [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
              Flapjack.HolLoopExp.const 112#64]),
        Flapjack.HolLoopExp.const 8#64]))

def loopBody491_17 : HolLoopProg 64 :=
.mark loopBody491_16

def loopBody491_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 0#64]))

def loopBody491_19 : HolLoopProg 64 :=
.mark loopBody491_18

def loopBody491_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody491_21 : HolLoopProg 64 :=
.mark loopBody491_20

def loopBody491_22 : HolLoopProg 64 :=
.call (some ([2, 3, 4, 5], Flapjack.Spt.ln)) (some 467) ([6]) (some (6, loopBody491_21, loopBody491_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))

def loopBody491_23 : HolLoopProg 64 :=
.mark loopBody491_22

def loopBody491_24 : HolLoopProg 64 :=
.seq loopBody491_23 loopBody491_1

def loopBody491_25 : HolLoopProg 64 :=
.mark loopBody491_24

def loopBody491_26 : HolLoopProg 64 :=
.seq loopBody491_19 loopBody491_25

def loopBody491_27 : HolLoopProg 64 :=
.mark loopBody491_26

def loopBody491_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody491_29 : HolLoopProg 64 :=
.mark loopBody491_28

def loopBody491_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody491_31 : HolLoopProg 64 :=
.mark loopBody491_30

def loopBody491_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 4)

def loopBody491_33 : HolLoopProg 64 :=
.mark loopBody491_32

def loopBody491_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 5)

def loopBody491_35 : HolLoopProg 64 :=
.mark loopBody491_34

def loopBody491_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody491_37 : HolLoopProg 64 :=
.mark loopBody491_36

def loopBody491_38 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.ln)) (some 476) ([7, 8, 9, 10]) (some (7, loopBody491_37, loopBody491_1, (Flapjack.Spt.ln)))

def loopBody491_39 : HolLoopProg 64 :=
.mark loopBody491_38

def loopBody491_40 : HolLoopProg 64 :=
.seq loopBody491_39 loopBody491_1

def loopBody491_41 : HolLoopProg 64 :=
.mark loopBody491_40

def loopBody491_42 : HolLoopProg 64 :=
.seq loopBody491_35 loopBody491_41

def loopBody491_43 : HolLoopProg 64 :=
.mark loopBody491_42

def loopBody491_44 : HolLoopProg 64 :=
.seq loopBody491_33 loopBody491_43

def loopBody491_45 : HolLoopProg 64 :=
.mark loopBody491_44

def loopBody491_46 : HolLoopProg 64 :=
.seq loopBody491_31 loopBody491_45

def loopBody491_47 : HolLoopProg 64 :=
.mark loopBody491_46

def loopBody491_48 : HolLoopProg 64 :=
.seq loopBody491_29 loopBody491_47

def loopBody491_49 : HolLoopProg 64 :=
.mark loopBody491_48

def loopBody491_50 : HolLoopProg 64 :=
.seq loopBody491_1 loopBody491_49

def loopBody491_51 : HolLoopProg 64 :=
.mark loopBody491_50

def loopBody491_52 : HolLoopProg 64 :=
.seq loopBody491_1 loopBody491_51

def loopBody491_53 : HolLoopProg 64 :=
.mark loopBody491_52

def loopBody491_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody491_55 : HolLoopProg 64 :=
.mark loopBody491_54

def loopBody491_56 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.ln)) (some 490) ([7]) (some (7, loopBody491_37, loopBody491_1, (Flapjack.Spt.ln)))

def loopBody491_57 : HolLoopProg 64 :=
.mark loopBody491_56

def loopBody491_58 : HolLoopProg 64 :=
.seq loopBody491_57 loopBody491_1

def loopBody491_59 : HolLoopProg 64 :=
.mark loopBody491_58

def loopBody491_60 : HolLoopProg 64 :=
.seq loopBody491_55 loopBody491_59

def loopBody491_61 : HolLoopProg 64 :=
.mark loopBody491_60

def loopBody491_62 : HolLoopProg 64 :=
.seq loopBody491_1 loopBody491_61

def loopBody491_63 : HolLoopProg 64 :=
.mark loopBody491_62

def loopBody491_64 : HolLoopProg 64 :=
.seq loopBody491_1 loopBody491_63

def loopBody491_65 : HolLoopProg 64 :=
.mark loopBody491_64

def loopBody491_66 : HolLoopProg 64 :=
.seq loopBody491_53 loopBody491_65

def loopBody491_67 : HolLoopProg 64 :=
.mark loopBody491_66

def loopBody491_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody491_69 : HolLoopProg 64 :=
.mark loopBody491_68

def loopBody491_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody491_71 : HolLoopProg 64 :=
.mark loopBody491_70

def loopBody491_72 : HolLoopProg 64 :=
.seq loopBody491_71 loopBody491_1

def loopBody491_73 : HolLoopProg 64 :=
.mark loopBody491_72

def loopBody491_74 : HolLoopProg 64 :=
.seq loopBody491_69 loopBody491_73

def loopBody491_75 : HolLoopProg 64 :=
.mark loopBody491_74

def loopBody491_76 : HolLoopProg 64 :=
.seq loopBody491_67 loopBody491_75

def loopBody491_77 : HolLoopProg 64 :=
.mark loopBody491_76

def loopBody491_78 : HolLoopProg 64 :=
.seq loopBody491_27 loopBody491_77

def loopBody491_79 : HolLoopProg 64 :=
.mark loopBody491_78

def loopBody491_80 : HolLoopProg 64 :=
.seq loopBody491_1 loopBody491_79

def loopBody491_81 : HolLoopProg 64 :=
.mark loopBody491_80

def loopBody491_82 : HolLoopProg 64 :=
.seq loopBody491_1 loopBody491_81

def loopBody491_83 : HolLoopProg 64 :=
.mark loopBody491_82

def loopBody491_84 : HolLoopProg 64 :=
.seq loopBody491_1 loopBody491_83

def loopBody491_85 : HolLoopProg 64 :=
.mark loopBody491_84

def loopBody491_86 : HolLoopProg 64 :=
.seq loopBody491_1 loopBody491_85

def loopBody491_87 : HolLoopProg 64 :=
.mark loopBody491_86

def loopBody491_88 : HolLoopProg 64 :=
.seq loopBody491_1 loopBody491_87

def loopBody491_89 : HolLoopProg 64 :=
.mark loopBody491_88

def loopBody491_90 : HolLoopProg 64 :=
.seq loopBody491_1 loopBody491_89

def loopBody491_91 : HolLoopProg 64 :=
.mark loopBody491_90

def loopBody491_92 : HolLoopProg 64 :=
.seq loopBody491_1 loopBody491_91

def loopBody491_93 : HolLoopProg 64 :=
.mark loopBody491_92

def loopBody491_94 : HolLoopProg 64 :=
.seq loopBody491_1 loopBody491_93

def loopBody491_95 : HolLoopProg 64 :=
.mark loopBody491_94

def loopBody491_96 : HolLoopProg 64 :=
.seq loopBody491_17 loopBody491_95

def loopBody491_97 : HolLoopProg 64 :=
.mark loopBody491_96

def loopBody491_98 : HolLoopProg 64 :=
.seq loopBody491_1 loopBody491_97

def loopBody491_99 : HolLoopProg 64 :=
.mark loopBody491_98

def loopBody491_100 : HolLoopProg 64 :=
.seq loopBody491_15 loopBody491_99

def loopBody491_101 : HolLoopProg 64 :=
.mark loopBody491_100

def output491 : Nat × List Nat × HolLoopProg 64 :=
  (555, [], loopBody491_101)
end InitECandidate.Proofs.FrontendStages.Loop
