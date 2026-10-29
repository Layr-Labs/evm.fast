import InitECandidate.Proofs.FrontendStages.Loop.Translate476
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody492_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody492_1 : HolLoopProg 64 :=
.mark loopBody492_0

def loopBody492_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 2#64)

def loopBody492_3 : HolLoopProg 64 :=
.mark loopBody492_2

def loopBody492_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody492_5 : HolLoopProg 64 :=
.mark loopBody492_4

def loopBody492_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 470) ([2]) (some (2, loopBody492_5, loopBody492_1, (Flapjack.Spt.ln)))

def loopBody492_7 : HolLoopProg 64 :=
.mark loopBody492_6

def loopBody492_8 : HolLoopProg 64 :=
.seq loopBody492_7 loopBody492_1

def loopBody492_9 : HolLoopProg 64 :=
.mark loopBody492_8

def loopBody492_10 : HolLoopProg 64 :=
.seq loopBody492_3 loopBody492_9

def loopBody492_11 : HolLoopProg 64 :=
.mark loopBody492_10

def loopBody492_12 : HolLoopProg 64 :=
.seq loopBody492_1 loopBody492_11

def loopBody492_13 : HolLoopProg 64 :=
.mark loopBody492_12

def loopBody492_14 : HolLoopProg 64 :=
.seq loopBody492_1 loopBody492_13

def loopBody492_15 : HolLoopProg 64 :=
.mark loopBody492_14

def loopBody492_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.add
            [Flapjack.HolLoopExp.load
                (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                  [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
              Flapjack.HolLoopExp.const 112#64]),
        Flapjack.HolLoopExp.const 16#64]))

def loopBody492_17 : HolLoopProg 64 :=
.mark loopBody492_16

def loopBody492_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody492_19 : HolLoopProg 64 :=
.mark loopBody492_18

def loopBody492_20 : HolLoopProg 64 :=
.call (some ([1, 2, 3, 4], Flapjack.Spt.ln)) (some 467) ([5]) (some (5, loopBody492_19, loopBody492_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody492_21 : HolLoopProg 64 :=
.mark loopBody492_20

def loopBody492_22 : HolLoopProg 64 :=
.seq loopBody492_21 loopBody492_1

def loopBody492_23 : HolLoopProg 64 :=
.mark loopBody492_22

def loopBody492_24 : HolLoopProg 64 :=
.seq loopBody492_17 loopBody492_23

def loopBody492_25 : HolLoopProg 64 :=
.mark loopBody492_24

def loopBody492_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody492_27 : HolLoopProg 64 :=
.mark loopBody492_26

def loopBody492_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody492_29 : HolLoopProg 64 :=
.mark loopBody492_28

def loopBody492_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody492_31 : HolLoopProg 64 :=
.mark loopBody492_30

def loopBody492_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 4)

def loopBody492_33 : HolLoopProg 64 :=
.mark loopBody492_32

def loopBody492_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody492_35 : HolLoopProg 64 :=
.mark loopBody492_34

def loopBody492_36 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.ln)) (some 476) ([6, 7, 8, 9]) (some (6, loopBody492_35, loopBody492_1, (Flapjack.Spt.ln)))

def loopBody492_37 : HolLoopProg 64 :=
.mark loopBody492_36

def loopBody492_38 : HolLoopProg 64 :=
.seq loopBody492_37 loopBody492_1

def loopBody492_39 : HolLoopProg 64 :=
.mark loopBody492_38

def loopBody492_40 : HolLoopProg 64 :=
.seq loopBody492_33 loopBody492_39

def loopBody492_41 : HolLoopProg 64 :=
.mark loopBody492_40

def loopBody492_42 : HolLoopProg 64 :=
.seq loopBody492_31 loopBody492_41

def loopBody492_43 : HolLoopProg 64 :=
.mark loopBody492_42

def loopBody492_44 : HolLoopProg 64 :=
.seq loopBody492_29 loopBody492_43

def loopBody492_45 : HolLoopProg 64 :=
.mark loopBody492_44

def loopBody492_46 : HolLoopProg 64 :=
.seq loopBody492_27 loopBody492_45

def loopBody492_47 : HolLoopProg 64 :=
.mark loopBody492_46

def loopBody492_48 : HolLoopProg 64 :=
.seq loopBody492_1 loopBody492_47

def loopBody492_49 : HolLoopProg 64 :=
.mark loopBody492_48

def loopBody492_50 : HolLoopProg 64 :=
.seq loopBody492_1 loopBody492_49

def loopBody492_51 : HolLoopProg 64 :=
.mark loopBody492_50

def loopBody492_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody492_53 : HolLoopProg 64 :=
.mark loopBody492_52

def loopBody492_54 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.ln)) (some 490) ([6]) (some (6, loopBody492_35, loopBody492_1, (Flapjack.Spt.ln)))

def loopBody492_55 : HolLoopProg 64 :=
.mark loopBody492_54

def loopBody492_56 : HolLoopProg 64 :=
.seq loopBody492_55 loopBody492_1

def loopBody492_57 : HolLoopProg 64 :=
.mark loopBody492_56

def loopBody492_58 : HolLoopProg 64 :=
.seq loopBody492_53 loopBody492_57

def loopBody492_59 : HolLoopProg 64 :=
.mark loopBody492_58

def loopBody492_60 : HolLoopProg 64 :=
.seq loopBody492_1 loopBody492_59

def loopBody492_61 : HolLoopProg 64 :=
.mark loopBody492_60

def loopBody492_62 : HolLoopProg 64 :=
.seq loopBody492_1 loopBody492_61

def loopBody492_63 : HolLoopProg 64 :=
.mark loopBody492_62

def loopBody492_64 : HolLoopProg 64 :=
.seq loopBody492_51 loopBody492_63

def loopBody492_65 : HolLoopProg 64 :=
.mark loopBody492_64

def loopBody492_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody492_67 : HolLoopProg 64 :=
.mark loopBody492_66

def loopBody492_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody492_69 : HolLoopProg 64 :=
.mark loopBody492_68

def loopBody492_70 : HolLoopProg 64 :=
.seq loopBody492_69 loopBody492_1

def loopBody492_71 : HolLoopProg 64 :=
.mark loopBody492_70

def loopBody492_72 : HolLoopProg 64 :=
.seq loopBody492_67 loopBody492_71

def loopBody492_73 : HolLoopProg 64 :=
.mark loopBody492_72

def loopBody492_74 : HolLoopProg 64 :=
.seq loopBody492_65 loopBody492_73

def loopBody492_75 : HolLoopProg 64 :=
.mark loopBody492_74

def loopBody492_76 : HolLoopProg 64 :=
.seq loopBody492_25 loopBody492_75

def loopBody492_77 : HolLoopProg 64 :=
.mark loopBody492_76

def loopBody492_78 : HolLoopProg 64 :=
.seq loopBody492_1 loopBody492_77

def loopBody492_79 : HolLoopProg 64 :=
.mark loopBody492_78

def loopBody492_80 : HolLoopProg 64 :=
.seq loopBody492_1 loopBody492_79

def loopBody492_81 : HolLoopProg 64 :=
.mark loopBody492_80

def loopBody492_82 : HolLoopProg 64 :=
.seq loopBody492_1 loopBody492_81

def loopBody492_83 : HolLoopProg 64 :=
.mark loopBody492_82

def loopBody492_84 : HolLoopProg 64 :=
.seq loopBody492_1 loopBody492_83

def loopBody492_85 : HolLoopProg 64 :=
.mark loopBody492_84

def loopBody492_86 : HolLoopProg 64 :=
.seq loopBody492_1 loopBody492_85

def loopBody492_87 : HolLoopProg 64 :=
.mark loopBody492_86

def loopBody492_88 : HolLoopProg 64 :=
.seq loopBody492_1 loopBody492_87

def loopBody492_89 : HolLoopProg 64 :=
.mark loopBody492_88

def loopBody492_90 : HolLoopProg 64 :=
.seq loopBody492_1 loopBody492_89

def loopBody492_91 : HolLoopProg 64 :=
.mark loopBody492_90

def loopBody492_92 : HolLoopProg 64 :=
.seq loopBody492_1 loopBody492_91

def loopBody492_93 : HolLoopProg 64 :=
.mark loopBody492_92

def loopBody492_94 : HolLoopProg 64 :=
.seq loopBody492_15 loopBody492_93

def loopBody492_95 : HolLoopProg 64 :=
.mark loopBody492_94

def output492 : Nat × List Nat × HolLoopProg 64 :=
  (556, [], loopBody492_95)
end InitECandidate.Proofs.FrontendStages.Loop
