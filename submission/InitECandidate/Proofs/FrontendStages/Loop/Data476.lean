import InitECandidate.Proofs.FrontendStages.Loop.Translate460
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody476_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody476_1 : HolLoopProg 64 :=
.mark loopBody476_0

def loopBody476_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 0#64]))

def loopBody476_3 : HolLoopProg 64 :=
.mark loopBody476_2

def loopBody476_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 1#64])

def loopBody476_5 : HolLoopProg 64 :=
.mark loopBody476_4

def loopBody476_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 56#64]))

def loopBody476_7 : HolLoopProg 64 :=
.mark loopBody476_6

def loopBody476_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody476_9 : HolLoopProg 64 :=
.mark loopBody476_8

def loopBody476_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody476_11 : HolLoopProg 64 :=
.mark loopBody476_10

def loopBody476_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.RegImm.reg 4) loopBody476_9 loopBody476_11 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody476_13 : HolLoopProg 64 :=
.mark loopBody476_12

def loopBody476_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody476_15 : HolLoopProg 64 :=
.mark loopBody476_14

def loopBody476_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.load
              (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
            Flapjack.HolLoopExp.const 48#64]),
      Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 1#64])

def loopBody476_17 : HolLoopProg 64 :=
.mark loopBody476_16

def loopBody476_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 2 2

def loopBody476_19 : HolLoopProg 64 :=
.mark loopBody476_18

def loopBody476_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 2)

def loopBody476_21 : HolLoopProg 64 :=
.mark loopBody476_20

def loopBody476_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody476_23 : HolLoopProg 64 :=
.mark loopBody476_22

def loopBody476_24 : HolLoopProg 64 :=
.seq loopBody476_23 loopBody476_1

def loopBody476_25 : HolLoopProg 64 :=
.mark loopBody476_24

def loopBody476_26 : HolLoopProg 64 :=
.seq loopBody476_21 loopBody476_25

def loopBody476_27 : HolLoopProg 64 :=
.mark loopBody476_26

def loopBody476_28 : HolLoopProg 64 :=
.seq loopBody476_19 loopBody476_27

def loopBody476_29 : HolLoopProg 64 :=
.mark loopBody476_28

def loopBody476_30 : HolLoopProg 64 :=
.seq loopBody476_17 loopBody476_29

def loopBody476_31 : HolLoopProg 64 :=
.mark loopBody476_30

def loopBody476_32 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody476_31 loopBody476_1 (Flapjack.Spt.ln)

def loopBody476_33 : HolLoopProg 64 :=
.mark loopBody476_32

def loopBody476_34 : HolLoopProg 64 :=
.seq loopBody476_33 loopBody476_1

def loopBody476_35 : HolLoopProg 64 :=
.mark loopBody476_34

def loopBody476_36 : HolLoopProg 64 :=
.seq loopBody476_15 loopBody476_35

def loopBody476_37 : HolLoopProg 64 :=
.mark loopBody476_36

def loopBody476_38 : HolLoopProg 64 :=
.seq loopBody476_13 loopBody476_37

def loopBody476_39 : HolLoopProg 64 :=
.mark loopBody476_38

def loopBody476_40 : HolLoopProg 64 :=
.seq loopBody476_7 loopBody476_39

def loopBody476_41 : HolLoopProg 64 :=
.mark loopBody476_40

def loopBody476_42 : HolLoopProg 64 :=
.seq loopBody476_5 loopBody476_41

def loopBody476_43 : HolLoopProg 64 :=
.mark loopBody476_42

def loopBody476_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody476_45 : HolLoopProg 64 :=
.mark loopBody476_44

def loopBody476_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody476_47 : HolLoopProg 64 :=
.mark loopBody476_46

def loopBody476_48 : HolLoopProg 64 :=
.seq loopBody476_47 loopBody476_1

def loopBody476_49 : HolLoopProg 64 :=
.mark loopBody476_48

def loopBody476_50 : HolLoopProg 64 :=
.seq loopBody476_45 loopBody476_49

def loopBody476_51 : HolLoopProg 64 :=
.mark loopBody476_50

def loopBody476_52 : HolLoopProg 64 :=
.seq loopBody476_43 loopBody476_51

def loopBody476_53 : HolLoopProg 64 :=
.mark loopBody476_52

def loopBody476_54 : HolLoopProg 64 :=
.seq loopBody476_3 loopBody476_53

def loopBody476_55 : HolLoopProg 64 :=
.mark loopBody476_54

def loopBody476_56 : HolLoopProg 64 :=
.seq loopBody476_1 loopBody476_55

def loopBody476_57 : HolLoopProg 64 :=
.mark loopBody476_56

def output476 : Nat × List Nat × HolLoopProg 64 :=
  (540, [], loopBody476_57)
end InitECandidate.Proofs.FrontendStages.Loop
