import InitECandidate.Proofs.FrontendStages.Crep.Translate341
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody357_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2, 3], none)) "htab_get" [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 0]

def crepBody357_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody357_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody357_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody357_1 crepBody357_2

def crepBody357_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7, 8, 9], none)) "htab_item" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 6]

def crepBody357_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "sk_make" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 8]

def crepBody357_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "htab_set"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
          Flapjack.CrepExp.const 24#64]),
    Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 1#64]

def crepBody357_7 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody357_6

def crepBody357_8 : CrepProg (BitVec 64) :=
.seq crepBody357_5 crepBody357_7

def crepBody357_9 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody357_8

def crepBody357_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 0#64)) crepBody357_9 crepBody357_2

def crepBody357_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.var 10)

def crepBody357_12 : CrepProg (BitVec 64) :=
.seq crepBody357_11 crepBody357_2

def crepBody357_13 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 1#64]) crepBody357_12

def crepBody357_14 : CrepProg (BitVec 64) :=
.seq crepBody357_10 crepBody357_13

def crepBody357_15 : CrepProg (BitVec 64) :=
.seq crepBody357_4 crepBody357_14

def crepBody357_16 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody357_15

def crepBody357_17 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody357_16

def crepBody357_18 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody357_17

def crepBody357_19 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 5)) crepBody357_18

def crepBody357_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "jdel" [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 0]

def crepBody357_21 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody357_20

def crepBody357_22 : CrepProg (BitVec 64) :=
.seq crepBody357_19 crepBody357_21

def crepBody357_23 : CrepProg (BitVec 64) :=
.seq crepBody357_22 crepBody357_1

def crepBody357_24 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody357_23

def crepBody357_25 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 24#64])) crepBody357_24

def crepBody357_26 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.var 3) crepBody357_25

def crepBody357_27 : CrepProg (BitVec 64) :=
.seq crepBody357_3 crepBody357_26

def crepBody357_28 : CrepProg (BitVec 64) :=
.seq crepBody357_0 crepBody357_27

def crepBody357_29 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody357_28

def crepBody357_30 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody357_29

def crepBody357_31 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
      Flapjack.CrepExp.const 32#64])) crepBody357_30

def data357 : CrepProg (BitVec 64) := crepBody357_31
def output357 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [100#8, 101#8, 115#8, 116#8, 114#8, 111#8, 121#8, 95#8, 115#8, 116#8, 111#8, 114#8, 97#8, 103#8, 101#8], [0], crepProgToHOL data357)
end InitECandidate.Proofs.FrontendStages.Crep
