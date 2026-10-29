import InitECandidate.Proofs.FrontendStages.Crep.Translate600
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody616_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "fe_set_one" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody616_1 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody616_0

def crepBody616_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "fe_set_one"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2]]

def crepBody616_3 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody616_2

def crepBody616_4 : CrepProg (BitVec 64) :=
.seq crepBody616_1 crepBody616_3

def crepBody616_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "fe_set_zero"
  [Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 2]]]

def crepBody616_6 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody616_5

def crepBody616_7 : CrepProg (BitVec 64) :=
.seq crepBody616_4 crepBody616_6

def crepBody616_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody616_9 : CrepProg (BitVec 64) :=
.seq crepBody616_7 crepBody616_8

def crepBody616_10 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]) crepBody616_9

def data616 : CrepProg (BitVec 64) := crepBody616_10
def output616 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [101#8, 99#8, 112#8, 95#8, 115#8, 101#8, 116#8, 95#8, 105#8, 110#8, 102#8], [0, 1], crepProgToHOL data616)
end InitECandidate.Proofs.FrontendStages.Crep
