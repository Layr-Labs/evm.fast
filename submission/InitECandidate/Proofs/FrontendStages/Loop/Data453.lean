import InitECandidate.Proofs.FrontendStages.Loop.Translate437
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody453_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody453_1 : HolLoopProg 64 :=
.mark loopBody453_0

def loopBody453_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody453_3 : HolLoopProg 64 :=
.mark loopBody453_2

def loopBody453_4 : HolLoopProg 64 :=
.call (some ([1, 2, 3, 4], Flapjack.Spt.ln)) (some 475) ([]) (some (5, loopBody453_3, loopBody453_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody453_5 : HolLoopProg 64 :=
.mark loopBody453_4

def loopBody453_6 : HolLoopProg 64 :=
.seq loopBody453_5 loopBody453_1

def loopBody453_7 : HolLoopProg 64 :=
.mark loopBody453_6

def loopBody453_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 3#64)

def loopBody453_9 : HolLoopProg 64 :=
.mark loopBody453_8

def loopBody453_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody453_11 : HolLoopProg 64 :=
.mark loopBody453_10

def loopBody453_12 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 470) ([6]) (some (6, loopBody453_11, loopBody453_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody453_13 : HolLoopProg 64 :=
.mark loopBody453_12

def loopBody453_14 : HolLoopProg 64 :=
.seq loopBody453_13 loopBody453_1

def loopBody453_15 : HolLoopProg 64 :=
.mark loopBody453_14

def loopBody453_16 : HolLoopProg 64 :=
.seq loopBody453_9 loopBody453_15

def loopBody453_17 : HolLoopProg 64 :=
.mark loopBody453_16

def loopBody453_18 : HolLoopProg 64 :=
.seq loopBody453_1 loopBody453_17

def loopBody453_19 : HolLoopProg 64 :=
.mark loopBody453_18

def loopBody453_20 : HolLoopProg 64 :=
.seq loopBody453_1 loopBody453_19

def loopBody453_21 : HolLoopProg 64 :=
.mark loopBody453_20

def loopBody453_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor
    [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 18446744073709551615#64])

def loopBody453_23 : HolLoopProg 64 :=
.mark loopBody453_22

def loopBody453_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor
    [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 18446744073709551615#64])

def loopBody453_25 : HolLoopProg 64 :=
.mark loopBody453_24

def loopBody453_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor
    [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 18446744073709551615#64])

def loopBody453_27 : HolLoopProg 64 :=
.mark loopBody453_26

def loopBody453_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor
    [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 18446744073709551615#64])

def loopBody453_29 : HolLoopProg 64 :=
.mark loopBody453_28

def loopBody453_30 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.ln)) (some 476) ([6, 7, 8, 9]) (some (6, loopBody453_11, loopBody453_1, (Flapjack.Spt.ln)))

def loopBody453_31 : HolLoopProg 64 :=
.mark loopBody453_30

def loopBody453_32 : HolLoopProg 64 :=
.seq loopBody453_31 loopBody453_1

def loopBody453_33 : HolLoopProg 64 :=
.mark loopBody453_32

def loopBody453_34 : HolLoopProg 64 :=
.seq loopBody453_29 loopBody453_33

def loopBody453_35 : HolLoopProg 64 :=
.mark loopBody453_34

def loopBody453_36 : HolLoopProg 64 :=
.seq loopBody453_27 loopBody453_35

def loopBody453_37 : HolLoopProg 64 :=
.mark loopBody453_36

def loopBody453_38 : HolLoopProg 64 :=
.seq loopBody453_25 loopBody453_37

def loopBody453_39 : HolLoopProg 64 :=
.mark loopBody453_38

def loopBody453_40 : HolLoopProg 64 :=
.seq loopBody453_23 loopBody453_39

def loopBody453_41 : HolLoopProg 64 :=
.mark loopBody453_40

def loopBody453_42 : HolLoopProg 64 :=
.seq loopBody453_1 loopBody453_41

def loopBody453_43 : HolLoopProg 64 :=
.mark loopBody453_42

def loopBody453_44 : HolLoopProg 64 :=
.seq loopBody453_1 loopBody453_43

def loopBody453_45 : HolLoopProg 64 :=
.mark loopBody453_44

def loopBody453_46 : HolLoopProg 64 :=
.seq loopBody453_21 loopBody453_45

def loopBody453_47 : HolLoopProg 64 :=
.mark loopBody453_46

def loopBody453_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody453_49 : HolLoopProg 64 :=
.mark loopBody453_48

def loopBody453_50 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.ln)) (some 490) ([6]) (some (6, loopBody453_11, loopBody453_1, (Flapjack.Spt.ln)))

def loopBody453_51 : HolLoopProg 64 :=
.mark loopBody453_50

def loopBody453_52 : HolLoopProg 64 :=
.seq loopBody453_51 loopBody453_1

def loopBody453_53 : HolLoopProg 64 :=
.mark loopBody453_52

def loopBody453_54 : HolLoopProg 64 :=
.seq loopBody453_49 loopBody453_53

def loopBody453_55 : HolLoopProg 64 :=
.mark loopBody453_54

def loopBody453_56 : HolLoopProg 64 :=
.seq loopBody453_1 loopBody453_55

def loopBody453_57 : HolLoopProg 64 :=
.mark loopBody453_56

def loopBody453_58 : HolLoopProg 64 :=
.seq loopBody453_1 loopBody453_57

def loopBody453_59 : HolLoopProg 64 :=
.mark loopBody453_58

def loopBody453_60 : HolLoopProg 64 :=
.seq loopBody453_47 loopBody453_59

def loopBody453_61 : HolLoopProg 64 :=
.mark loopBody453_60

def loopBody453_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody453_63 : HolLoopProg 64 :=
.mark loopBody453_62

def loopBody453_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody453_65 : HolLoopProg 64 :=
.mark loopBody453_64

def loopBody453_66 : HolLoopProg 64 :=
.seq loopBody453_65 loopBody453_1

def loopBody453_67 : HolLoopProg 64 :=
.mark loopBody453_66

def loopBody453_68 : HolLoopProg 64 :=
.seq loopBody453_63 loopBody453_67

def loopBody453_69 : HolLoopProg 64 :=
.mark loopBody453_68

def loopBody453_70 : HolLoopProg 64 :=
.seq loopBody453_61 loopBody453_69

def loopBody453_71 : HolLoopProg 64 :=
.mark loopBody453_70

def loopBody453_72 : HolLoopProg 64 :=
.seq loopBody453_7 loopBody453_71

def loopBody453_73 : HolLoopProg 64 :=
.mark loopBody453_72

def loopBody453_74 : HolLoopProg 64 :=
.seq loopBody453_1 loopBody453_73

def loopBody453_75 : HolLoopProg 64 :=
.mark loopBody453_74

def loopBody453_76 : HolLoopProg 64 :=
.seq loopBody453_1 loopBody453_75

def loopBody453_77 : HolLoopProg 64 :=
.mark loopBody453_76

def loopBody453_78 : HolLoopProg 64 :=
.seq loopBody453_1 loopBody453_77

def loopBody453_79 : HolLoopProg 64 :=
.mark loopBody453_78

def loopBody453_80 : HolLoopProg 64 :=
.seq loopBody453_1 loopBody453_79

def loopBody453_81 : HolLoopProg 64 :=
.mark loopBody453_80

def loopBody453_82 : HolLoopProg 64 :=
.seq loopBody453_1 loopBody453_81

def loopBody453_83 : HolLoopProg 64 :=
.mark loopBody453_82

def loopBody453_84 : HolLoopProg 64 :=
.seq loopBody453_1 loopBody453_83

def loopBody453_85 : HolLoopProg 64 :=
.mark loopBody453_84

def loopBody453_86 : HolLoopProg 64 :=
.seq loopBody453_1 loopBody453_85

def loopBody453_87 : HolLoopProg 64 :=
.mark loopBody453_86

def loopBody453_88 : HolLoopProg 64 :=
.seq loopBody453_1 loopBody453_87

def loopBody453_89 : HolLoopProg 64 :=
.mark loopBody453_88

def output453 : Nat × List Nat × HolLoopProg 64 :=
  (517, [], loopBody453_89)
end InitECandidate.Proofs.FrontendStages.Loop
