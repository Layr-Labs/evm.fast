import InitECandidate.Proofs.FrontendStages.Loop.Translate491
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody507_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody507_1 : HolLoopProg 64 :=
.mark loopBody507_0

def loopBody507_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 5#64)

def loopBody507_3 : HolLoopProg 64 :=
.mark loopBody507_2

def loopBody507_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody507_5 : HolLoopProg 64 :=
.mark loopBody507_4

def loopBody507_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 470) ([2]) (some (2, loopBody507_5, loopBody507_1, (Flapjack.Spt.ln)))

def loopBody507_7 : HolLoopProg 64 :=
.mark loopBody507_6

def loopBody507_8 : HolLoopProg 64 :=
.seq loopBody507_7 loopBody507_1

def loopBody507_9 : HolLoopProg 64 :=
.mark loopBody507_8

def loopBody507_10 : HolLoopProg 64 :=
.seq loopBody507_3 loopBody507_9

def loopBody507_11 : HolLoopProg 64 :=
.mark loopBody507_10

def loopBody507_12 : HolLoopProg 64 :=
.seq loopBody507_1 loopBody507_11

def loopBody507_13 : HolLoopProg 64 :=
.mark loopBody507_12

def loopBody507_14 : HolLoopProg 64 :=
.seq loopBody507_1 loopBody507_13

def loopBody507_15 : HolLoopProg 64 :=
.mark loopBody507_14

def loopBody507_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.add
            [Flapjack.HolLoopExp.load
                (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                  [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
              Flapjack.HolLoopExp.const 112#64]),
        Flapjack.HolLoopExp.const 32#64]))

def loopBody507_17 : HolLoopProg 64 :=
.mark loopBody507_16

def loopBody507_18 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 407) ([2]) (some (2, loopBody507_5, loopBody507_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody507_19 : HolLoopProg 64 :=
.mark loopBody507_18

def loopBody507_20 : HolLoopProg 64 :=
.seq loopBody507_19 loopBody507_1

def loopBody507_21 : HolLoopProg 64 :=
.mark loopBody507_20

def loopBody507_22 : HolLoopProg 64 :=
.seq loopBody507_17 loopBody507_21

def loopBody507_23 : HolLoopProg 64 :=
.mark loopBody507_22

def loopBody507_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 8#64]))

def loopBody507_25 : HolLoopProg 64 :=
.mark loopBody507_24

def loopBody507_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 8#64],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody507_27 : HolLoopProg 64 :=
.mark loopBody507_26

def loopBody507_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 8#64],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody507_29 : HolLoopProg 64 :=
.mark loopBody507_28

def loopBody507_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 8#64],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody507_31 : HolLoopProg 64 :=
.mark loopBody507_30

def loopBody507_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody507_33 : HolLoopProg 64 :=
.mark loopBody507_32

def loopBody507_34 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 476) ([3, 4, 5, 6]) (some (3, loopBody507_33, loopBody507_1, (Flapjack.Spt.ln)))

def loopBody507_35 : HolLoopProg 64 :=
.mark loopBody507_34

def loopBody507_36 : HolLoopProg 64 :=
.seq loopBody507_35 loopBody507_1

def loopBody507_37 : HolLoopProg 64 :=
.mark loopBody507_36

def loopBody507_38 : HolLoopProg 64 :=
.seq loopBody507_31 loopBody507_37

def loopBody507_39 : HolLoopProg 64 :=
.mark loopBody507_38

def loopBody507_40 : HolLoopProg 64 :=
.seq loopBody507_29 loopBody507_39

def loopBody507_41 : HolLoopProg 64 :=
.mark loopBody507_40

def loopBody507_42 : HolLoopProg 64 :=
.seq loopBody507_27 loopBody507_41

def loopBody507_43 : HolLoopProg 64 :=
.mark loopBody507_42

def loopBody507_44 : HolLoopProg 64 :=
.seq loopBody507_25 loopBody507_43

def loopBody507_45 : HolLoopProg 64 :=
.mark loopBody507_44

def loopBody507_46 : HolLoopProg 64 :=
.seq loopBody507_1 loopBody507_45

def loopBody507_47 : HolLoopProg 64 :=
.mark loopBody507_46

def loopBody507_48 : HolLoopProg 64 :=
.seq loopBody507_1 loopBody507_47

def loopBody507_49 : HolLoopProg 64 :=
.mark loopBody507_48

def loopBody507_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody507_51 : HolLoopProg 64 :=
.mark loopBody507_50

def loopBody507_52 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 490) ([3]) (some (3, loopBody507_33, loopBody507_1, (Flapjack.Spt.ln)))

def loopBody507_53 : HolLoopProg 64 :=
.mark loopBody507_52

def loopBody507_54 : HolLoopProg 64 :=
.seq loopBody507_53 loopBody507_1

def loopBody507_55 : HolLoopProg 64 :=
.mark loopBody507_54

def loopBody507_56 : HolLoopProg 64 :=
.seq loopBody507_51 loopBody507_55

def loopBody507_57 : HolLoopProg 64 :=
.mark loopBody507_56

def loopBody507_58 : HolLoopProg 64 :=
.seq loopBody507_1 loopBody507_57

def loopBody507_59 : HolLoopProg 64 :=
.mark loopBody507_58

def loopBody507_60 : HolLoopProg 64 :=
.seq loopBody507_1 loopBody507_59

def loopBody507_61 : HolLoopProg 64 :=
.mark loopBody507_60

def loopBody507_62 : HolLoopProg 64 :=
.seq loopBody507_49 loopBody507_61

def loopBody507_63 : HolLoopProg 64 :=
.mark loopBody507_62

def loopBody507_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody507_65 : HolLoopProg 64 :=
.mark loopBody507_64

def loopBody507_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody507_67 : HolLoopProg 64 :=
.mark loopBody507_66

def loopBody507_68 : HolLoopProg 64 :=
.seq loopBody507_67 loopBody507_1

def loopBody507_69 : HolLoopProg 64 :=
.mark loopBody507_68

def loopBody507_70 : HolLoopProg 64 :=
.seq loopBody507_65 loopBody507_69

def loopBody507_71 : HolLoopProg 64 :=
.mark loopBody507_70

def loopBody507_72 : HolLoopProg 64 :=
.seq loopBody507_63 loopBody507_71

def loopBody507_73 : HolLoopProg 64 :=
.mark loopBody507_72

def loopBody507_74 : HolLoopProg 64 :=
.seq loopBody507_23 loopBody507_73

def loopBody507_75 : HolLoopProg 64 :=
.mark loopBody507_74

def loopBody507_76 : HolLoopProg 64 :=
.seq loopBody507_1 loopBody507_75

def loopBody507_77 : HolLoopProg 64 :=
.mark loopBody507_76

def loopBody507_78 : HolLoopProg 64 :=
.seq loopBody507_1 loopBody507_77

def loopBody507_79 : HolLoopProg 64 :=
.mark loopBody507_78

def loopBody507_80 : HolLoopProg 64 :=
.seq loopBody507_15 loopBody507_79

def loopBody507_81 : HolLoopProg 64 :=
.mark loopBody507_80

def output507 : Nat × List Nat × HolLoopProg 64 :=
  (571, [], loopBody507_81)
end InitECandidate.Proofs.FrontendStages.Loop
