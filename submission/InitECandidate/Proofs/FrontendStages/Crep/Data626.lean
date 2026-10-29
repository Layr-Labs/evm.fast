import InitECandidate.Proofs.FrontendStages.Crep.Translate610
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody626_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13, 14, 15, 16], none)) "fq_mul"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12]

def crepBody626_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17, 18, 19, 20], none)) "fq_sub"
  [Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20,
    Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16]

def crepBody626_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.var 22)

def crepBody626_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 21, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 23)

def crepBody626_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 21, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 24)

def crepBody626_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 21, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 25)

def crepBody626_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody626_7 : CrepProg (BitVec 64) :=
.seq crepBody626_5 crepBody626_6

def crepBody626_8 : CrepProg (BitVec 64) :=
.seq crepBody626_4 crepBody626_7

def crepBody626_9 : CrepProg (BitVec 64) :=
.seq crepBody626_3 crepBody626_8

def crepBody626_10 : CrepProg (BitVec 64) :=
.seq crepBody626_2 crepBody626_9

def crepBody626_11 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.var 20) crepBody626_10

def crepBody626_12 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.var 19) crepBody626_11

def crepBody626_13 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.var 18) crepBody626_12

def crepBody626_14 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.var 17) crepBody626_13

def crepBody626_15 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 8],
        Flapjack.CrepExp.const 32#64]]) crepBody626_14

def crepBody626_16 : CrepProg (BitVec 64) :=
.seq crepBody626_1 crepBody626_15

def crepBody626_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 21)

def crepBody626_18 : CrepProg (BitVec 64) :=
.seq crepBody626_17 crepBody626_6

def crepBody626_19 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 1#64]) crepBody626_18

def crepBody626_20 : CrepProg (BitVec 64) :=
.seq crepBody626_16 crepBody626_19

def crepBody626_21 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 8],
              Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 24#64])) crepBody626_20

def crepBody626_22 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 8],
              Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 16#64])) crepBody626_21

def crepBody626_23 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 8],
              Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 8#64])) crepBody626_22

def crepBody626_24 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 0,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 8],
          Flapjack.CrepExp.const 32#64]])) crepBody626_23

def crepBody626_25 : CrepProg (BitVec 64) :=
.seq crepBody626_0 crepBody626_24

def crepBody626_26 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody626_25

def crepBody626_27 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody626_26

def crepBody626_28 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody626_27

def crepBody626_29 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody626_28

def crepBody626_30 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 24#64])) crepBody626_29

def crepBody626_31 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 16#64])) crepBody626_30

def crepBody626_32 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 8#64])) crepBody626_31

def crepBody626_33 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 1,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 32#64]])) crepBody626_32

def crepBody626_34 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 8)) crepBody626_33

def crepBody626_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody626_36 : CrepProg (BitVec 64) :=
.seq crepBody626_34 crepBody626_35

def crepBody626_37 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody626_36

def data626 : CrepProg (BitVec 64) := crepBody626_37
def output626 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [102#8, 113#8, 95#8, 112#8, 111#8, 108#8, 121#8, 95#8, 115#8, 117#8, 98#8, 109#8, 117#8, 108#8], [0, 1, 2, 3, 4, 5, 6, 7], crepProgToHOL data626)
end InitECandidate.Proofs.FrontendStages.Crep
