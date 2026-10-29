import InitECandidate.Proofs.FrontendStages.Crep.Translate326
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody342_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "htab_set"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64]

def crepBody342_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody342_0

def crepBody342_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2], none)) "htab_get"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.var 0]

def crepBody342_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 2]

def crepBody342_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody342_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 0#64)) crepBody342_3 crepBody342_4

def crepBody342_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "get_pre_state_account_optional" [Flapjack.CrepExp.var 0]

def crepBody342_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 3]

def crepBody342_8 : CrepProg (BitVec 64) :=
.seq crepBody342_6 crepBody342_7

def crepBody342_9 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody342_8

def crepBody342_10 : CrepProg (BitVec 64) :=
.seq crepBody342_5 crepBody342_9

def crepBody342_11 : CrepProg (BitVec 64) :=
.seq crepBody342_2 crepBody342_10

def crepBody342_12 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody342_11

def crepBody342_13 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody342_12

def crepBody342_14 : CrepProg (BitVec 64) :=
.seq crepBody342_1 crepBody342_13

def data342 : CrepProg (BitVec 64) := crepBody342_14
def output342 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [103#8, 101#8, 116#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8, 95#8, 111#8, 112#8, 116#8, 105#8, 111#8,
    110#8, 97#8, 108#8], [0], crepProgToHOL data342)
end InitECandidate.Proofs.FrontendStages.Crep
