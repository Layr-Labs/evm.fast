import InitECandidate.Proofs.FrontendStages.Loop.Translate477
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody493_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody493_1 : HolLoopProg 64 :=
.mark loopBody493_0

def loopBody493_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 2#64)

def loopBody493_3 : HolLoopProg 64 :=
.mark loopBody493_2

def loopBody493_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody493_5 : HolLoopProg 64 :=
.mark loopBody493_4

def loopBody493_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 470) ([2]) (some (2, loopBody493_5, loopBody493_1, (Flapjack.Spt.ln)))

def loopBody493_7 : HolLoopProg 64 :=
.mark loopBody493_6

def loopBody493_8 : HolLoopProg 64 :=
.seq loopBody493_7 loopBody493_1

def loopBody493_9 : HolLoopProg 64 :=
.mark loopBody493_8

def loopBody493_10 : HolLoopProg 64 :=
.seq loopBody493_3 loopBody493_9

def loopBody493_11 : HolLoopProg 64 :=
.mark loopBody493_10

def loopBody493_12 : HolLoopProg 64 :=
.seq loopBody493_1 loopBody493_11

def loopBody493_13 : HolLoopProg 64 :=
.mark loopBody493_12

def loopBody493_14 : HolLoopProg 64 :=
.seq loopBody493_1 loopBody493_13

def loopBody493_15 : HolLoopProg 64 :=
.mark loopBody493_14

def loopBody493_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.add
            [Flapjack.HolLoopExp.load
                (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                  [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
              Flapjack.HolLoopExp.const 112#64]),
        Flapjack.HolLoopExp.const 56#64]))

def loopBody493_17 : HolLoopProg 64 :=
.mark loopBody493_16

def loopBody493_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.load
              (Flapjack.HolLoopExp.op Flapjack.BinOp.add
                [Flapjack.HolLoopExp.load
                    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                      [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
                  Flapjack.HolLoopExp.const 112#64]),
            Flapjack.HolLoopExp.const 56#64],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody493_19 : HolLoopProg 64 :=
.mark loopBody493_18

def loopBody493_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.load
              (Flapjack.HolLoopExp.op Flapjack.BinOp.add
                [Flapjack.HolLoopExp.load
                    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                      [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
                  Flapjack.HolLoopExp.const 112#64]),
            Flapjack.HolLoopExp.const 56#64],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody493_21 : HolLoopProg 64 :=
.mark loopBody493_20

def loopBody493_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.load
              (Flapjack.HolLoopExp.op Flapjack.BinOp.add
                [Flapjack.HolLoopExp.load
                    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                      [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
                  Flapjack.HolLoopExp.const 112#64]),
            Flapjack.HolLoopExp.const 56#64],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody493_23 : HolLoopProg 64 :=
.mark loopBody493_22

def loopBody493_24 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 476) ([2, 3, 4, 5]) (some (2, loopBody493_5, loopBody493_1, (Flapjack.Spt.ln)))

def loopBody493_25 : HolLoopProg 64 :=
.mark loopBody493_24

def loopBody493_26 : HolLoopProg 64 :=
.seq loopBody493_25 loopBody493_1

def loopBody493_27 : HolLoopProg 64 :=
.mark loopBody493_26

def loopBody493_28 : HolLoopProg 64 :=
.seq loopBody493_23 loopBody493_27

def loopBody493_29 : HolLoopProg 64 :=
.mark loopBody493_28

def loopBody493_30 : HolLoopProg 64 :=
.seq loopBody493_21 loopBody493_29

def loopBody493_31 : HolLoopProg 64 :=
.mark loopBody493_30

def loopBody493_32 : HolLoopProg 64 :=
.seq loopBody493_19 loopBody493_31

def loopBody493_33 : HolLoopProg 64 :=
.mark loopBody493_32

def loopBody493_34 : HolLoopProg 64 :=
.seq loopBody493_17 loopBody493_33

def loopBody493_35 : HolLoopProg 64 :=
.mark loopBody493_34

def loopBody493_36 : HolLoopProg 64 :=
.seq loopBody493_1 loopBody493_35

def loopBody493_37 : HolLoopProg 64 :=
.mark loopBody493_36

def loopBody493_38 : HolLoopProg 64 :=
.seq loopBody493_1 loopBody493_37

def loopBody493_39 : HolLoopProg 64 :=
.mark loopBody493_38

def loopBody493_40 : HolLoopProg 64 :=
.seq loopBody493_15 loopBody493_39

def loopBody493_41 : HolLoopProg 64 :=
.mark loopBody493_40

def loopBody493_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody493_43 : HolLoopProg 64 :=
.mark loopBody493_42

def loopBody493_44 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 490) ([2]) (some (2, loopBody493_5, loopBody493_1, (Flapjack.Spt.ln)))

def loopBody493_45 : HolLoopProg 64 :=
.mark loopBody493_44

def loopBody493_46 : HolLoopProg 64 :=
.seq loopBody493_45 loopBody493_1

def loopBody493_47 : HolLoopProg 64 :=
.mark loopBody493_46

def loopBody493_48 : HolLoopProg 64 :=
.seq loopBody493_43 loopBody493_47

def loopBody493_49 : HolLoopProg 64 :=
.mark loopBody493_48

def loopBody493_50 : HolLoopProg 64 :=
.seq loopBody493_1 loopBody493_49

def loopBody493_51 : HolLoopProg 64 :=
.mark loopBody493_50

def loopBody493_52 : HolLoopProg 64 :=
.seq loopBody493_1 loopBody493_51

def loopBody493_53 : HolLoopProg 64 :=
.mark loopBody493_52

def loopBody493_54 : HolLoopProg 64 :=
.seq loopBody493_41 loopBody493_53

def loopBody493_55 : HolLoopProg 64 :=
.mark loopBody493_54

def loopBody493_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody493_57 : HolLoopProg 64 :=
.mark loopBody493_56

def loopBody493_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody493_59 : HolLoopProg 64 :=
.mark loopBody493_58

def loopBody493_60 : HolLoopProg 64 :=
.seq loopBody493_59 loopBody493_1

def loopBody493_61 : HolLoopProg 64 :=
.mark loopBody493_60

def loopBody493_62 : HolLoopProg 64 :=
.seq loopBody493_57 loopBody493_61

def loopBody493_63 : HolLoopProg 64 :=
.mark loopBody493_62

def loopBody493_64 : HolLoopProg 64 :=
.seq loopBody493_55 loopBody493_63

def loopBody493_65 : HolLoopProg 64 :=
.mark loopBody493_64

def output493 : Nat × List Nat × HolLoopProg 64 :=
  (557, [], loopBody493_65)
end InitECandidate.Proofs.FrontendStages.Loop
