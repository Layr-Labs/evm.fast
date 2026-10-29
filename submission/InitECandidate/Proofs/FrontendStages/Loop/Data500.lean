import InitECandidate.Proofs.FrontendStages.Loop.Translate484
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody500_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody500_1 : HolLoopProg 64 :=
.mark loopBody500_0

def loopBody500_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 2#64)

def loopBody500_3 : HolLoopProg 64 :=
.mark loopBody500_2

def loopBody500_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody500_5 : HolLoopProg 64 :=
.mark loopBody500_4

def loopBody500_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 470) ([2]) (some (2, loopBody500_5, loopBody500_1, (Flapjack.Spt.ln)))

def loopBody500_7 : HolLoopProg 64 :=
.mark loopBody500_6

def loopBody500_8 : HolLoopProg 64 :=
.seq loopBody500_7 loopBody500_1

def loopBody500_9 : HolLoopProg 64 :=
.mark loopBody500_8

def loopBody500_10 : HolLoopProg 64 :=
.seq loopBody500_3 loopBody500_9

def loopBody500_11 : HolLoopProg 64 :=
.mark loopBody500_10

def loopBody500_12 : HolLoopProg 64 :=
.seq loopBody500_1 loopBody500_11

def loopBody500_13 : HolLoopProg 64 :=
.mark loopBody500_12

def loopBody500_14 : HolLoopProg 64 :=
.seq loopBody500_1 loopBody500_13

def loopBody500_15 : HolLoopProg 64 :=
.mark loopBody500_14

def loopBody500_16 : HolLoopProg 64 :=
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

def loopBody500_17 : HolLoopProg 64 :=
.mark loopBody500_16

def loopBody500_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 48#64]))

def loopBody500_19 : HolLoopProg 64 :=
.mark loopBody500_18

def loopBody500_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 48#64],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody500_21 : HolLoopProg 64 :=
.mark loopBody500_20

def loopBody500_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 48#64],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody500_23 : HolLoopProg 64 :=
.mark loopBody500_22

def loopBody500_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 48#64],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody500_25 : HolLoopProg 64 :=
.mark loopBody500_24

def loopBody500_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody500_27 : HolLoopProg 64 :=
.mark loopBody500_26

def loopBody500_28 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 476) ([3, 4, 5, 6]) (some (3, loopBody500_27, loopBody500_1, (Flapjack.Spt.ln)))

def loopBody500_29 : HolLoopProg 64 :=
.mark loopBody500_28

def loopBody500_30 : HolLoopProg 64 :=
.seq loopBody500_29 loopBody500_1

def loopBody500_31 : HolLoopProg 64 :=
.mark loopBody500_30

def loopBody500_32 : HolLoopProg 64 :=
.seq loopBody500_25 loopBody500_31

def loopBody500_33 : HolLoopProg 64 :=
.mark loopBody500_32

def loopBody500_34 : HolLoopProg 64 :=
.seq loopBody500_23 loopBody500_33

def loopBody500_35 : HolLoopProg 64 :=
.mark loopBody500_34

def loopBody500_36 : HolLoopProg 64 :=
.seq loopBody500_21 loopBody500_35

def loopBody500_37 : HolLoopProg 64 :=
.mark loopBody500_36

def loopBody500_38 : HolLoopProg 64 :=
.seq loopBody500_19 loopBody500_37

def loopBody500_39 : HolLoopProg 64 :=
.mark loopBody500_38

def loopBody500_40 : HolLoopProg 64 :=
.seq loopBody500_1 loopBody500_39

def loopBody500_41 : HolLoopProg 64 :=
.mark loopBody500_40

def loopBody500_42 : HolLoopProg 64 :=
.seq loopBody500_1 loopBody500_41

def loopBody500_43 : HolLoopProg 64 :=
.mark loopBody500_42

def loopBody500_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody500_45 : HolLoopProg 64 :=
.mark loopBody500_44

def loopBody500_46 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 490) ([3]) (some (3, loopBody500_27, loopBody500_1, (Flapjack.Spt.ln)))

def loopBody500_47 : HolLoopProg 64 :=
.mark loopBody500_46

def loopBody500_48 : HolLoopProg 64 :=
.seq loopBody500_47 loopBody500_1

def loopBody500_49 : HolLoopProg 64 :=
.mark loopBody500_48

def loopBody500_50 : HolLoopProg 64 :=
.seq loopBody500_45 loopBody500_49

def loopBody500_51 : HolLoopProg 64 :=
.mark loopBody500_50

def loopBody500_52 : HolLoopProg 64 :=
.seq loopBody500_1 loopBody500_51

def loopBody500_53 : HolLoopProg 64 :=
.mark loopBody500_52

def loopBody500_54 : HolLoopProg 64 :=
.seq loopBody500_1 loopBody500_53

def loopBody500_55 : HolLoopProg 64 :=
.mark loopBody500_54

def loopBody500_56 : HolLoopProg 64 :=
.seq loopBody500_43 loopBody500_55

def loopBody500_57 : HolLoopProg 64 :=
.mark loopBody500_56

def loopBody500_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody500_59 : HolLoopProg 64 :=
.mark loopBody500_58

def loopBody500_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody500_61 : HolLoopProg 64 :=
.mark loopBody500_60

def loopBody500_62 : HolLoopProg 64 :=
.seq loopBody500_61 loopBody500_1

def loopBody500_63 : HolLoopProg 64 :=
.mark loopBody500_62

def loopBody500_64 : HolLoopProg 64 :=
.seq loopBody500_59 loopBody500_63

def loopBody500_65 : HolLoopProg 64 :=
.mark loopBody500_64

def loopBody500_66 : HolLoopProg 64 :=
.seq loopBody500_57 loopBody500_65

def loopBody500_67 : HolLoopProg 64 :=
.mark loopBody500_66

def loopBody500_68 : HolLoopProg 64 :=
.seq loopBody500_17 loopBody500_67

def loopBody500_69 : HolLoopProg 64 :=
.mark loopBody500_68

def loopBody500_70 : HolLoopProg 64 :=
.seq loopBody500_1 loopBody500_69

def loopBody500_71 : HolLoopProg 64 :=
.mark loopBody500_70

def loopBody500_72 : HolLoopProg 64 :=
.seq loopBody500_15 loopBody500_71

def loopBody500_73 : HolLoopProg 64 :=
.mark loopBody500_72

def output500 : Nat × List Nat × HolLoopProg 64 :=
  (564, [], loopBody500_73)
end InitECandidate.Proofs.FrontendStages.Loop
