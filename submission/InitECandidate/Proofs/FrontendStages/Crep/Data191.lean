import InitECandidate.Proofs.FrontendStages.Crep.Translate175
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody191_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4, 5], none)) "ssz_split_var_list"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2]

def crepBody191_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "ssz_fail" [Flapjack.CrepExp.const 70#64]

def crepBody191_2 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody191_1

def crepBody191_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody191_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 3)
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 4,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 16#64],
        Flapjack.CrepExp.const 8#64]))) crepBody191_2 crepBody191_3

def crepBody191_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.var 7)

def crepBody191_6 : CrepProg (BitVec 64) :=
.seq crepBody191_5 crepBody191_3

def crepBody191_7 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 1#64]) crepBody191_6

def crepBody191_8 : CrepProg (BitVec 64) :=
.seq crepBody191_4 crepBody191_7

def crepBody191_9 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 5)) crepBody191_8

def crepBody191_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody191_11 : CrepProg (BitVec 64) :=
.seq crepBody191_9 crepBody191_10

def crepBody191_12 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody191_11

def crepBody191_13 : CrepProg (BitVec 64) :=
.seq crepBody191_0 crepBody191_12

def crepBody191_14 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody191_13

def crepBody191_15 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody191_14

def data191 : CrepProg (BitVec 64) := crepBody191_15
def output191 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 98#8, 121#8, 116#8, 101#8, 115#8, 95#8, 108#8, 105#8, 115#8, 116#8], [0, 1, 2, 3], crepProgToHOL data191)
end InitECandidate.Proofs.FrontendStages.Crep
