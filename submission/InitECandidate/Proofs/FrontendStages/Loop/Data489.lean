import InitECandidate.Proofs.FrontendStages.Loop.Translate473
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody489_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody489_1 : HolLoopProg 64 :=
.mark loopBody489_0

def loopBody489_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 2#64)

def loopBody489_3 : HolLoopProg 64 :=
.mark loopBody489_2

def loopBody489_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody489_5 : HolLoopProg 64 :=
.mark loopBody489_4

def loopBody489_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 470) ([2]) (some (2, loopBody489_5, loopBody489_1, (Flapjack.Spt.ln)))

def loopBody489_7 : HolLoopProg 64 :=
.mark loopBody489_6

def loopBody489_8 : HolLoopProg 64 :=
.seq loopBody489_7 loopBody489_1

def loopBody489_9 : HolLoopProg 64 :=
.mark loopBody489_8

def loopBody489_10 : HolLoopProg 64 :=
.seq loopBody489_3 loopBody489_9

def loopBody489_11 : HolLoopProg 64 :=
.mark loopBody489_10

def loopBody489_12 : HolLoopProg 64 :=
.seq loopBody489_1 loopBody489_11

def loopBody489_13 : HolLoopProg 64 :=
.mark loopBody489_12

def loopBody489_14 : HolLoopProg 64 :=
.seq loopBody489_1 loopBody489_13

def loopBody489_15 : HolLoopProg 64 :=
.mark loopBody489_14

def loopBody489_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.add
            [Flapjack.HolLoopExp.load
                (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                  [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
              Flapjack.HolLoopExp.const 112#64]),
        Flapjack.HolLoopExp.const 32#64]))

def loopBody489_17 : HolLoopProg 64 :=
.mark loopBody489_16

def loopBody489_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody489_19 : HolLoopProg 64 :=
.mark loopBody489_18

def loopBody489_20 : HolLoopProg 64 :=
.call (some ([1, 2, 3, 4], Flapjack.Spt.ln)) (some 467) ([5]) (some (5, loopBody489_19, loopBody489_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody489_21 : HolLoopProg 64 :=
.mark loopBody489_20

def loopBody489_22 : HolLoopProg 64 :=
.seq loopBody489_21 loopBody489_1

def loopBody489_23 : HolLoopProg 64 :=
.mark loopBody489_22

def loopBody489_24 : HolLoopProg 64 :=
.seq loopBody489_17 loopBody489_23

def loopBody489_25 : HolLoopProg 64 :=
.mark loopBody489_24

def loopBody489_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody489_27 : HolLoopProg 64 :=
.mark loopBody489_26

def loopBody489_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody489_29 : HolLoopProg 64 :=
.mark loopBody489_28

def loopBody489_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody489_31 : HolLoopProg 64 :=
.mark loopBody489_30

def loopBody489_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 4)

def loopBody489_33 : HolLoopProg 64 :=
.mark loopBody489_32

def loopBody489_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody489_35 : HolLoopProg 64 :=
.mark loopBody489_34

def loopBody489_36 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.ln)) (some 476) ([6, 7, 8, 9]) (some (6, loopBody489_35, loopBody489_1, (Flapjack.Spt.ln)))

def loopBody489_37 : HolLoopProg 64 :=
.mark loopBody489_36

def loopBody489_38 : HolLoopProg 64 :=
.seq loopBody489_37 loopBody489_1

def loopBody489_39 : HolLoopProg 64 :=
.mark loopBody489_38

def loopBody489_40 : HolLoopProg 64 :=
.seq loopBody489_33 loopBody489_39

def loopBody489_41 : HolLoopProg 64 :=
.mark loopBody489_40

def loopBody489_42 : HolLoopProg 64 :=
.seq loopBody489_31 loopBody489_41

def loopBody489_43 : HolLoopProg 64 :=
.mark loopBody489_42

def loopBody489_44 : HolLoopProg 64 :=
.seq loopBody489_29 loopBody489_43

def loopBody489_45 : HolLoopProg 64 :=
.mark loopBody489_44

def loopBody489_46 : HolLoopProg 64 :=
.seq loopBody489_27 loopBody489_45

def loopBody489_47 : HolLoopProg 64 :=
.mark loopBody489_46

def loopBody489_48 : HolLoopProg 64 :=
.seq loopBody489_1 loopBody489_47

def loopBody489_49 : HolLoopProg 64 :=
.mark loopBody489_48

def loopBody489_50 : HolLoopProg 64 :=
.seq loopBody489_1 loopBody489_49

def loopBody489_51 : HolLoopProg 64 :=
.mark loopBody489_50

def loopBody489_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody489_53 : HolLoopProg 64 :=
.mark loopBody489_52

def loopBody489_54 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.ln)) (some 490) ([6]) (some (6, loopBody489_35, loopBody489_1, (Flapjack.Spt.ln)))

def loopBody489_55 : HolLoopProg 64 :=
.mark loopBody489_54

def loopBody489_56 : HolLoopProg 64 :=
.seq loopBody489_55 loopBody489_1

def loopBody489_57 : HolLoopProg 64 :=
.mark loopBody489_56

def loopBody489_58 : HolLoopProg 64 :=
.seq loopBody489_53 loopBody489_57

def loopBody489_59 : HolLoopProg 64 :=
.mark loopBody489_58

def loopBody489_60 : HolLoopProg 64 :=
.seq loopBody489_1 loopBody489_59

def loopBody489_61 : HolLoopProg 64 :=
.mark loopBody489_60

def loopBody489_62 : HolLoopProg 64 :=
.seq loopBody489_1 loopBody489_61

def loopBody489_63 : HolLoopProg 64 :=
.mark loopBody489_62

def loopBody489_64 : HolLoopProg 64 :=
.seq loopBody489_51 loopBody489_63

def loopBody489_65 : HolLoopProg 64 :=
.mark loopBody489_64

def loopBody489_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody489_67 : HolLoopProg 64 :=
.mark loopBody489_66

def loopBody489_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody489_69 : HolLoopProg 64 :=
.mark loopBody489_68

def loopBody489_70 : HolLoopProg 64 :=
.seq loopBody489_69 loopBody489_1

def loopBody489_71 : HolLoopProg 64 :=
.mark loopBody489_70

def loopBody489_72 : HolLoopProg 64 :=
.seq loopBody489_67 loopBody489_71

def loopBody489_73 : HolLoopProg 64 :=
.mark loopBody489_72

def loopBody489_74 : HolLoopProg 64 :=
.seq loopBody489_65 loopBody489_73

def loopBody489_75 : HolLoopProg 64 :=
.mark loopBody489_74

def loopBody489_76 : HolLoopProg 64 :=
.seq loopBody489_25 loopBody489_75

def loopBody489_77 : HolLoopProg 64 :=
.mark loopBody489_76

def loopBody489_78 : HolLoopProg 64 :=
.seq loopBody489_1 loopBody489_77

def loopBody489_79 : HolLoopProg 64 :=
.mark loopBody489_78

def loopBody489_80 : HolLoopProg 64 :=
.seq loopBody489_1 loopBody489_79

def loopBody489_81 : HolLoopProg 64 :=
.mark loopBody489_80

def loopBody489_82 : HolLoopProg 64 :=
.seq loopBody489_1 loopBody489_81

def loopBody489_83 : HolLoopProg 64 :=
.mark loopBody489_82

def loopBody489_84 : HolLoopProg 64 :=
.seq loopBody489_1 loopBody489_83

def loopBody489_85 : HolLoopProg 64 :=
.mark loopBody489_84

def loopBody489_86 : HolLoopProg 64 :=
.seq loopBody489_1 loopBody489_85

def loopBody489_87 : HolLoopProg 64 :=
.mark loopBody489_86

def loopBody489_88 : HolLoopProg 64 :=
.seq loopBody489_1 loopBody489_87

def loopBody489_89 : HolLoopProg 64 :=
.mark loopBody489_88

def loopBody489_90 : HolLoopProg 64 :=
.seq loopBody489_1 loopBody489_89

def loopBody489_91 : HolLoopProg 64 :=
.mark loopBody489_90

def loopBody489_92 : HolLoopProg 64 :=
.seq loopBody489_1 loopBody489_91

def loopBody489_93 : HolLoopProg 64 :=
.mark loopBody489_92

def loopBody489_94 : HolLoopProg 64 :=
.seq loopBody489_15 loopBody489_93

def loopBody489_95 : HolLoopProg 64 :=
.mark loopBody489_94

def output489 : Nat × List Nat × HolLoopProg 64 :=
  (553, [], loopBody489_95)
end InitECandidate.Proofs.FrontendStages.Loop
