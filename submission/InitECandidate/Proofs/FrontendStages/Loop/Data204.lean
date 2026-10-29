import InitECandidate.Proofs.FrontendStages.Loop.Translate188
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody204_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody204_1 : HolLoopProg 64 :=
.mark loopBody204_0

def loopBody204_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody204_3 : HolLoopProg 64 :=
.mark loopBody204_2

def loopBody204_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody204_5 : HolLoopProg 64 :=
.mark loopBody204_4

def loopBody204_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 32#64)

def loopBody204_7 : HolLoopProg 64 :=
.mark loopBody204_6

def loopBody204_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody204_9 : HolLoopProg 64 :=
.mark loopBody204_8

def loopBody204_10 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 77) ([6, 7, 8]) (some (6, loopBody204_9, loopBody204_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody204_11 : HolLoopProg 64 :=
.mark loopBody204_10

def loopBody204_12 : HolLoopProg 64 :=
.seq loopBody204_11 loopBody204_1

def loopBody204_13 : HolLoopProg 64 :=
.mark loopBody204_12

def loopBody204_14 : HolLoopProg 64 :=
.seq loopBody204_7 loopBody204_13

def loopBody204_15 : HolLoopProg 64 :=
.mark loopBody204_14

def loopBody204_16 : HolLoopProg 64 :=
.seq loopBody204_5 loopBody204_15

def loopBody204_17 : HolLoopProg 64 :=
.mark loopBody204_16

def loopBody204_18 : HolLoopProg 64 :=
.seq loopBody204_3 loopBody204_17

def loopBody204_19 : HolLoopProg 64 :=
.mark loopBody204_18

def loopBody204_20 : HolLoopProg 64 :=
.seq loopBody204_1 loopBody204_19

def loopBody204_21 : HolLoopProg 64 :=
.mark loopBody204_20

def loopBody204_22 : HolLoopProg 64 :=
.seq loopBody204_1 loopBody204_21

def loopBody204_23 : HolLoopProg 64 :=
.mark loopBody204_22

def loopBody204_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 32#64])

def loopBody204_25 : HolLoopProg 64 :=
.mark loopBody204_24

def loopBody204_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody204_27 : HolLoopProg 64 :=
.mark loopBody204_26

def loopBody204_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 5 6

def loopBody204_29 : HolLoopProg 64 :=
.mark loopBody204_28

def loopBody204_30 : HolLoopProg 64 :=
.seq loopBody204_29 loopBody204_1

def loopBody204_31 : HolLoopProg 64 :=
.mark loopBody204_30

def loopBody204_32 : HolLoopProg 64 :=
.seq loopBody204_27 loopBody204_31

def loopBody204_33 : HolLoopProg 64 :=
.mark loopBody204_32

def loopBody204_34 : HolLoopProg 64 :=
.seq loopBody204_25 loopBody204_33

def loopBody204_35 : HolLoopProg 64 :=
.mark loopBody204_34

def loopBody204_36 : HolLoopProg 64 :=
.seq loopBody204_23 loopBody204_35

def loopBody204_37 : HolLoopProg 64 :=
.mark loopBody204_36

def loopBody204_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 33#64])

def loopBody204_39 : HolLoopProg 64 :=
.mark loopBody204_38

def loopBody204_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody204_41 : HolLoopProg 64 :=
.mark loopBody204_40

def loopBody204_42 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)) (some 87) ([6, 7]) (some (6, loopBody204_9, loopBody204_1, (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))

def loopBody204_43 : HolLoopProg 64 :=
.mark loopBody204_42

def loopBody204_44 : HolLoopProg 64 :=
.seq loopBody204_43 loopBody204_1

def loopBody204_45 : HolLoopProg 64 :=
.mark loopBody204_44

def loopBody204_46 : HolLoopProg 64 :=
.seq loopBody204_41 loopBody204_45

def loopBody204_47 : HolLoopProg 64 :=
.mark loopBody204_46

def loopBody204_48 : HolLoopProg 64 :=
.seq loopBody204_39 loopBody204_47

def loopBody204_49 : HolLoopProg 64 :=
.mark loopBody204_48

def loopBody204_50 : HolLoopProg 64 :=
.seq loopBody204_1 loopBody204_49

def loopBody204_51 : HolLoopProg 64 :=
.mark loopBody204_50

def loopBody204_52 : HolLoopProg 64 :=
.seq loopBody204_1 loopBody204_51

def loopBody204_53 : HolLoopProg 64 :=
.mark loopBody204_52

def loopBody204_54 : HolLoopProg 64 :=
.seq loopBody204_37 loopBody204_53

def loopBody204_55 : HolLoopProg 64 :=
.mark loopBody204_54

def loopBody204_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 41#64])

def loopBody204_57 : HolLoopProg 64 :=
.mark loopBody204_56

def loopBody204_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 255#64])

def loopBody204_59 : HolLoopProg 64 :=
.mark loopBody204_58

def loopBody204_60 : HolLoopProg 64 :=
.seq loopBody204_59 loopBody204_31

def loopBody204_61 : HolLoopProg 64 :=
.mark loopBody204_60

def loopBody204_62 : HolLoopProg 64 :=
.seq loopBody204_57 loopBody204_61

def loopBody204_63 : HolLoopProg 64 :=
.mark loopBody204_62

def loopBody204_64 : HolLoopProg 64 :=
.seq loopBody204_55 loopBody204_63

def loopBody204_65 : HolLoopProg 64 :=
.mark loopBody204_64

def loopBody204_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 42#64])

def loopBody204_67 : HolLoopProg 64 :=
.mark loopBody204_66

def loopBody204_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 8#64))

def loopBody204_69 : HolLoopProg 64 :=
.mark loopBody204_68

def loopBody204_70 : HolLoopProg 64 :=
.seq loopBody204_69 loopBody204_31

def loopBody204_71 : HolLoopProg 64 :=
.mark loopBody204_70

def loopBody204_72 : HolLoopProg 64 :=
.seq loopBody204_67 loopBody204_71

def loopBody204_73 : HolLoopProg 64 :=
.mark loopBody204_72

def loopBody204_74 : HolLoopProg 64 :=
.seq loopBody204_65 loopBody204_73

def loopBody204_75 : HolLoopProg 64 :=
.mark loopBody204_74

def loopBody204_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 43#64)

def loopBody204_77 : HolLoopProg 64 :=
.mark loopBody204_76

def loopBody204_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody204_79 : HolLoopProg 64 :=
.mark loopBody204_78

def loopBody204_80 : HolLoopProg 64 :=
.seq loopBody204_79 loopBody204_1

def loopBody204_81 : HolLoopProg 64 :=
.mark loopBody204_80

def loopBody204_82 : HolLoopProg 64 :=
.seq loopBody204_77 loopBody204_81

def loopBody204_83 : HolLoopProg 64 :=
.mark loopBody204_82

def loopBody204_84 : HolLoopProg 64 :=
.seq loopBody204_75 loopBody204_83

def loopBody204_85 : HolLoopProg 64 :=
.mark loopBody204_84

def output204 : Nat × List Nat × HolLoopProg 64 :=
  (268, [0, 1, 2, 3, 4], loopBody204_85)
end InitECandidate.Proofs.FrontendStages.Loop
