import InitECandidate.Proofs.FrontendStages.Loop.Translate365
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody381_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody381_1 : HolLoopProg 64 :=
.mark loopBody381_0

def loopBody381_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody381_3 : HolLoopProg 64 :=
.mark loopBody381_2

def loopBody381_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody381_5 : HolLoopProg 64 :=
.mark loopBody381_4

def loopBody381_6 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 439) ([5]) (some (5, loopBody381_5, loopBody381_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody381_7 : HolLoopProg 64 :=
.mark loopBody381_6

def loopBody381_8 : HolLoopProg 64 :=
.seq loopBody381_7 loopBody381_1

def loopBody381_9 : HolLoopProg 64 :=
.mark loopBody381_8

def loopBody381_10 : HolLoopProg 64 :=
.seq loopBody381_3 loopBody381_9

def loopBody381_11 : HolLoopProg 64 :=
.mark loopBody381_10

def loopBody381_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 32#64]))

def loopBody381_13 : HolLoopProg 64 :=
.mark loopBody381_12

def loopBody381_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 24#64)

def loopBody381_15 : HolLoopProg 64 :=
.mark loopBody381_14

def loopBody381_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody381_17 : HolLoopProg 64 :=
.mark loopBody381_16

def loopBody381_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody381_19 : HolLoopProg 64 :=
.mark loopBody381_18

def loopBody381_20 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 440) ([6, 7, 8]) (some (6, loopBody381_19, loopBody381_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))

def loopBody381_21 : HolLoopProg 64 :=
.mark loopBody381_20

def loopBody381_22 : HolLoopProg 64 :=
.seq loopBody381_21 loopBody381_1

def loopBody381_23 : HolLoopProg 64 :=
.mark loopBody381_22

def loopBody381_24 : HolLoopProg 64 :=
.seq loopBody381_17 loopBody381_23

def loopBody381_25 : HolLoopProg 64 :=
.mark loopBody381_24

def loopBody381_26 : HolLoopProg 64 :=
.seq loopBody381_15 loopBody381_25

def loopBody381_27 : HolLoopProg 64 :=
.mark loopBody381_26

def loopBody381_28 : HolLoopProg 64 :=
.seq loopBody381_13 loopBody381_27

def loopBody381_29 : HolLoopProg 64 :=
.mark loopBody381_28

def loopBody381_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 8#64])

def loopBody381_31 : HolLoopProg 64 :=
.mark loopBody381_30

def loopBody381_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody381_33 : HolLoopProg 64 :=
.mark loopBody381_32

def loopBody381_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 7)

def loopBody381_35 : HolLoopProg 64 :=
.mark loopBody381_34

def loopBody381_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 6) 8

def loopBody381_37 : HolLoopProg 64 :=
.mark loopBody381_36

def loopBody381_38 : HolLoopProg 64 :=
.seq loopBody381_37 loopBody381_1

def loopBody381_39 : HolLoopProg 64 :=
.mark loopBody381_38

def loopBody381_40 : HolLoopProg 64 :=
.seq loopBody381_35 loopBody381_39

def loopBody381_41 : HolLoopProg 64 :=
.mark loopBody381_40

def loopBody381_42 : HolLoopProg 64 :=
.seq loopBody381_41 loopBody381_1

def loopBody381_43 : HolLoopProg 64 :=
.mark loopBody381_42

def loopBody381_44 : HolLoopProg 64 :=
.seq loopBody381_33 loopBody381_43

def loopBody381_45 : HolLoopProg 64 :=
.mark loopBody381_44

def loopBody381_46 : HolLoopProg 64 :=
.seq loopBody381_1 loopBody381_45

def loopBody381_47 : HolLoopProg 64 :=
.mark loopBody381_46

def loopBody381_48 : HolLoopProg 64 :=
.seq loopBody381_31 loopBody381_47

def loopBody381_49 : HolLoopProg 64 :=
.mark loopBody381_48

def loopBody381_50 : HolLoopProg 64 :=
.seq loopBody381_1 loopBody381_49

def loopBody381_51 : HolLoopProg 64 :=
.mark loopBody381_50

def loopBody381_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 16#64])

def loopBody381_53 : HolLoopProg 64 :=
.mark loopBody381_52

def loopBody381_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody381_55 : HolLoopProg 64 :=
.mark loopBody381_54

def loopBody381_56 : HolLoopProg 64 :=
.seq loopBody381_55 loopBody381_43

def loopBody381_57 : HolLoopProg 64 :=
.mark loopBody381_56

def loopBody381_58 : HolLoopProg 64 :=
.seq loopBody381_1 loopBody381_57

def loopBody381_59 : HolLoopProg 64 :=
.mark loopBody381_58

def loopBody381_60 : HolLoopProg 64 :=
.seq loopBody381_53 loopBody381_59

def loopBody381_61 : HolLoopProg 64 :=
.mark loopBody381_60

def loopBody381_62 : HolLoopProg 64 :=
.seq loopBody381_1 loopBody381_61

def loopBody381_63 : HolLoopProg 64 :=
.mark loopBody381_62

def loopBody381_64 : HolLoopProg 64 :=
.seq loopBody381_51 loopBody381_63

def loopBody381_65 : HolLoopProg 64 :=
.mark loopBody381_64

def loopBody381_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody381_67 : HolLoopProg 64 :=
.mark loopBody381_66

def loopBody381_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody381_69 : HolLoopProg 64 :=
.mark loopBody381_68

def loopBody381_70 : HolLoopProg 64 :=
.seq loopBody381_69 loopBody381_1

def loopBody381_71 : HolLoopProg 64 :=
.mark loopBody381_70

def loopBody381_72 : HolLoopProg 64 :=
.seq loopBody381_67 loopBody381_71

def loopBody381_73 : HolLoopProg 64 :=
.mark loopBody381_72

def loopBody381_74 : HolLoopProg 64 :=
.seq loopBody381_65 loopBody381_73

def loopBody381_75 : HolLoopProg 64 :=
.mark loopBody381_74

def loopBody381_76 : HolLoopProg 64 :=
.seq loopBody381_29 loopBody381_75

def loopBody381_77 : HolLoopProg 64 :=
.mark loopBody381_76

def loopBody381_78 : HolLoopProg 64 :=
.seq loopBody381_1 loopBody381_77

def loopBody381_79 : HolLoopProg 64 :=
.mark loopBody381_78

def loopBody381_80 : HolLoopProg 64 :=
.seq loopBody381_1 loopBody381_79

def loopBody381_81 : HolLoopProg 64 :=
.mark loopBody381_80

def loopBody381_82 : HolLoopProg 64 :=
.seq loopBody381_11 loopBody381_81

def loopBody381_83 : HolLoopProg 64 :=
.mark loopBody381_82

def loopBody381_84 : HolLoopProg 64 :=
.seq loopBody381_1 loopBody381_83

def loopBody381_85 : HolLoopProg 64 :=
.mark loopBody381_84

def loopBody381_86 : HolLoopProg 64 :=
.seq loopBody381_1 loopBody381_85

def loopBody381_87 : HolLoopProg 64 :=
.mark loopBody381_86

def output381 : Nat × List Nat × HolLoopProg 64 :=
  (445, [0, 1, 2, 3], loopBody381_87)
end InitECandidate.Proofs.FrontendStages.Loop
