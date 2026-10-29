import InitECandidate.Proofs.FrontendStages.Crep.Translate365
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody381_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "bal_ensure_account" [Flapjack.CrepExp.var 0]

def crepBody381_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "lst_upsert_idx"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.const 24#64, Flapjack.CrepExp.var 1]

def crepBody381_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 7)

def crepBody381_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody381_4 : CrepProg (BitVec 64) :=
.seq crepBody381_2 crepBody381_3

def crepBody381_5 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 2) crepBody381_4

def crepBody381_6 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 8#64]) crepBody381_5

def crepBody381_7 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 3) crepBody381_4

def crepBody381_8 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 16#64]) crepBody381_7

def crepBody381_9 : CrepProg (BitVec 64) :=
.seq crepBody381_6 crepBody381_8

def crepBody381_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody381_11 : CrepProg (BitVec 64) :=
.seq crepBody381_9 crepBody381_10

def crepBody381_12 : CrepProg (BitVec 64) :=
.seq crepBody381_1 crepBody381_11

def crepBody381_13 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody381_12

def crepBody381_14 : CrepProg (BitVec 64) :=
.seq crepBody381_0 crepBody381_13

def crepBody381_15 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody381_14

def data381 : CrepProg (BitVec 64) := crepBody381_15
def output381 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [97#8, 100#8, 100#8, 95#8, 99#8, 111#8, 100#8, 101#8, 95#8, 99#8, 104#8, 97#8, 110#8, 103#8, 101#8], [0, 1, 2, 3], crepProgToHOL data381)
end InitECandidate.Proofs.FrontendStages.Crep
