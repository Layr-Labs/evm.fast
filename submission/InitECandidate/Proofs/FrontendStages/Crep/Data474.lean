import InitECandidate.Proofs.FrontendStages.Crep.Translate458
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody474_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.var 15)

def crepBody474_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 14, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 16)

def crepBody474_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 14, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 17)

def crepBody474_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 14, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 18)

def crepBody474_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody474_5 : CrepProg (BitVec 64) :=
.seq crepBody474_3 crepBody474_4

def crepBody474_6 : CrepProg (BitVec 64) :=
.seq crepBody474_2 crepBody474_5

def crepBody474_7 : CrepProg (BitVec 64) :=
.seq crepBody474_1 crepBody474_6

def crepBody474_8 : CrepProg (BitVec 64) :=
.seq crepBody474_0 crepBody474_7

def crepBody474_9 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.var 13) crepBody474_8

def crepBody474_10 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.var 12) crepBody474_9

def crepBody474_11 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.var 11) crepBody474_10

def crepBody474_12 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 10) crepBody474_11

def crepBody474_13 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 4) crepBody474_12

def crepBody474_14 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.var 9) crepBody474_8

def crepBody474_15 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.var 8) crepBody474_14

def crepBody474_16 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.var 7) crepBody474_15

def crepBody474_17 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 6) crepBody474_16

def crepBody474_18 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 5) crepBody474_17

def crepBody474_19 : CrepProg (BitVec 64) :=
.seq crepBody474_13 crepBody474_18

def crepBody474_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody474_21 : CrepProg (BitVec 64) :=
.seq crepBody474_19 crepBody474_20

def crepBody474_22 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 24#64])) crepBody474_21

def crepBody474_23 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 16#64])) crepBody474_22

def crepBody474_24 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 8#64])) crepBody474_23

def crepBody474_25 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 5)) crepBody474_24

def crepBody474_26 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 24#64])) crepBody474_25

def crepBody474_27 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 16#64])) crepBody474_26

def crepBody474_28 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 8#64])) crepBody474_27

def crepBody474_29 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 4)) crepBody474_28

def crepBody474_30 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.op Flapjack.BinOp.sub
          [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 1#64],
            Flapjack.CrepExp.var 1],
        Flapjack.CrepExp.const 32#64]]) crepBody474_29

def crepBody474_31 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.op Flapjack.BinOp.sub
          [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 1#64],
            Flapjack.CrepExp.var 0],
        Flapjack.CrepExp.const 32#64]]) crepBody474_30

def crepBody474_32 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 8#64])) crepBody474_31

def crepBody474_33 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 16#64])) crepBody474_32

def data474 : CrepProg (BitVec 64) := crepBody474_33
def output474 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [115#8, 116#8, 97#8, 99#8, 107#8, 95#8, 115#8, 119#8, 97#8, 112#8, 95#8, 112#8, 111#8, 115#8, 105#8, 116#8, 105#8,
    111#8, 110#8, 115#8], [0, 1], crepProgToHOL data474)
end InitECandidate.Proofs.FrontendStages.Crep
