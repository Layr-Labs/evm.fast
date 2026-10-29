import InitECandidate.Proofs.FrontendStages.Crep.Translate557
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody573_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 7)

def crepBody573_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody573_2 : CrepProg (BitVec 64) :=
.seq crepBody573_0 crepBody573_1

def crepBody573_3 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody573_2

def crepBody573_4 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 8#64]]) crepBody573_3

def crepBody573_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.var 6)

def crepBody573_6 : CrepProg (BitVec 64) :=
.seq crepBody573_5 crepBody573_1

def crepBody573_7 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64]) crepBody573_6

def crepBody573_8 : CrepProg (BitVec 64) :=
.seq crepBody573_4 crepBody573_7

def crepBody573_9 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 5)
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3])) crepBody573_8

def crepBody573_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.const 0#64)

def crepBody573_11 : CrepProg (BitVec 64) :=
.seq crepBody573_10 crepBody573_1

def crepBody573_12 : CrepProg (BitVec 64) :=
.seq crepBody573_9 crepBody573_11

def crepBody573_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.var 12)

def crepBody573_14 : CrepProg (BitVec 64) :=
.seq crepBody573_13 crepBody573_1

def crepBody573_15 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 4294967295#64]) crepBody573_14

def crepBody573_16 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 8#64]]) crepBody573_15

def crepBody573_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 32#64))

def crepBody573_18 : CrepProg (BitVec 64) :=
.seq crepBody573_17 crepBody573_1

def crepBody573_19 : CrepProg (BitVec 64) :=
.seq crepBody573_16 crepBody573_18

def crepBody573_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 11)

def crepBody573_21 : CrepProg (BitVec 64) :=
.seq crepBody573_20 crepBody573_1

def crepBody573_22 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 1#64]) crepBody573_21

def crepBody573_23 : CrepProg (BitVec 64) :=
.seq crepBody573_19 crepBody573_22

def crepBody573_24 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.var 6,
        Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.var 2,
              Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 8#64]])],
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 9,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 8#64]]),
    Flapjack.CrepExp.var 7]) crepBody573_23

def crepBody573_25 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.var 3)) crepBody573_24

def crepBody573_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.var 11)

def crepBody573_27 : CrepProg (BitVec 64) :=
.seq crepBody573_26 crepBody573_1

def crepBody573_28 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 7) crepBody573_27

def crepBody573_29 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64]]) crepBody573_28

def crepBody573_30 : CrepProg (BitVec 64) :=
.seq crepBody573_25 crepBody573_29

def crepBody573_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.var 10)

def crepBody573_32 : CrepProg (BitVec 64) :=
.seq crepBody573_31 crepBody573_1

def crepBody573_33 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64]) crepBody573_32

def crepBody573_34 : CrepProg (BitVec 64) :=
.seq crepBody573_30 crepBody573_33

def crepBody573_35 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 8#64]]) crepBody573_34

def crepBody573_36 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody573_35

def crepBody573_37 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody573_36

def crepBody573_38 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 0,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 8#64]])) crepBody573_37

def crepBody573_39 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 1)) crepBody573_38

def crepBody573_40 : CrepProg (BitVec 64) :=
.seq crepBody573_12 crepBody573_39

def crepBody573_41 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody573_42 : CrepProg (BitVec 64) :=
.seq crepBody573_40 crepBody573_41

def crepBody573_43 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody573_42

def data573 : CrepProg (BitVec 64) := crepBody573_43
def output573 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 110#8, 95#8, 109#8, 117#8, 108#8], [0, 1, 2, 3, 4], crepProgToHOL data573)
end InitECandidate.Proofs.FrontendStages.Crep
