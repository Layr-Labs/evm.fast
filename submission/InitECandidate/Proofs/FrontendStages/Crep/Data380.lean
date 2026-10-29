import InitECandidate.Proofs.FrontendStages.Crep.Translate364
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody380_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "bal_ensure_account" [Flapjack.CrepExp.var 0]

def crepBody380_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.var 9)

def crepBody380_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody380_3 : CrepProg (BitVec 64) :=
.seq crepBody380_1 crepBody380_2

def crepBody380_4 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 2) crepBody380_3

def crepBody380_5 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 16#64],
    Flapjack.CrepExp.const 8#64]) crepBody380_4

def crepBody380_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 6,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 16#64],
        Flapjack.CrepExp.const 8#64]))
  (Flapjack.CrepExp.var 2)) crepBody380_5 crepBody380_2

def crepBody380_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody380_8 : CrepProg (BitVec 64) :=
.seq crepBody380_6 crepBody380_7

def crepBody380_9 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 6,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 16#64]]))
  (Flapjack.CrepExp.var 1)) crepBody380_8 crepBody380_2

def crepBody380_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 8)

def crepBody380_11 : CrepProg (BitVec 64) :=
.seq crepBody380_10 crepBody380_2

def crepBody380_12 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 1#64]) crepBody380_11

def crepBody380_13 : CrepProg (BitVec 64) :=
.seq crepBody380_9 crepBody380_12

def crepBody380_14 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 5)) crepBody380_13

def crepBody380_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "lst_push" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 16#64]

def crepBody380_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.var 10)

def crepBody380_17 : CrepProg (BitVec 64) :=
.seq crepBody380_16 crepBody380_2

def crepBody380_18 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 1) crepBody380_17

def crepBody380_19 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 8) crepBody380_18

def crepBody380_20 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 2) crepBody380_17

def crepBody380_21 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 8#64]) crepBody380_20

def crepBody380_22 : CrepProg (BitVec 64) :=
.seq crepBody380_19 crepBody380_21

def crepBody380_23 : CrepProg (BitVec 64) :=
.seq crepBody380_22 crepBody380_7

def crepBody380_24 : CrepProg (BitVec 64) :=
.seq crepBody380_15 crepBody380_23

def crepBody380_25 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody380_24

def crepBody380_26 : CrepProg (BitVec 64) :=
.seq crepBody380_14 crepBody380_25

def crepBody380_27 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody380_26

def crepBody380_28 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 0#64])) crepBody380_27

def crepBody380_29 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 8#64])) crepBody380_28

def crepBody380_30 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 24#64])) crepBody380_29

def crepBody380_31 : CrepProg (BitVec 64) :=
.seq crepBody380_0 crepBody380_30

def crepBody380_32 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody380_31

def data380 : CrepProg (BitVec 64) := crepBody380_32
def output380 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [97#8, 100#8, 100#8, 95#8, 110#8, 111#8, 110#8, 99#8, 101#8, 95#8, 99#8, 104#8, 97#8, 110#8, 103#8, 101#8], [0, 1, 2], crepProgToHOL data380)
end InitECandidate.Proofs.FrontendStages.Crep
