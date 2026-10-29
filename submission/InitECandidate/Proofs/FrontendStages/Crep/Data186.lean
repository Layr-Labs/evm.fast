import InitECandidate.Proofs.FrontendStages.Crep.Translate170
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody186_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody186_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody186_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 0#64)) crepBody186_0 crepBody186_1

def crepBody186_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "ssz_fail" [Flapjack.CrepExp.const 10#64]

def crepBody186_4 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody186_3

def crepBody186_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 2),
      Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 5)])) crepBody186_4 crepBody186_1

def crepBody186_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "ssz_fail" [Flapjack.CrepExp.const 11#64]

def crepBody186_7 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody186_6

def crepBody186_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 5)
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.sub
      [Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 0,
            Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 8#64]],
        Flapjack.CrepExp.const 8#64]))) crepBody186_7 crepBody186_1

def crepBody186_9 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 4)) crepBody186_8 crepBody186_1

def crepBody186_10 : CrepProg (BitVec 64) :=
.seq crepBody186_5 crepBody186_9

def crepBody186_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.var 6)

def crepBody186_12 : CrepProg (BitVec 64) :=
.seq crepBody186_11 crepBody186_1

def crepBody186_13 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1#64]) crepBody186_12

def crepBody186_14 : CrepProg (BitVec 64) :=
.seq crepBody186_10 crepBody186_13

def crepBody186_15 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 0,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 8#64]])) crepBody186_14

def crepBody186_16 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 1)) crepBody186_15

def crepBody186_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "ssz_fail" [Flapjack.CrepExp.const 12#64]

def crepBody186_18 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody186_17

def crepBody186_19 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.load (Flapjack.CrepExp.var 0)) (Flapjack.CrepExp.var 2)) crepBody186_18 crepBody186_1

def crepBody186_20 : CrepProg (BitVec 64) :=
.seq crepBody186_16 crepBody186_19

def crepBody186_21 : CrepProg (BitVec 64) :=
.seq crepBody186_20 crepBody186_0

def crepBody186_22 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody186_21

def crepBody186_23 : CrepProg (BitVec 64) :=
.seq crepBody186_2 crepBody186_22

def data186 : CrepProg (BitVec 64) := crepBody186_23
def output186 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [115#8, 115#8, 122#8, 95#8, 99#8, 104#8, 101#8, 99#8, 107#8, 95#8, 111#8, 102#8, 102#8, 115#8, 101#8, 116#8, 115#8], [0, 1, 2, 3], crepProgToHOL data186)
end InitECandidate.Proofs.FrontendStages.Crep
