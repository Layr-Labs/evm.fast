import InitECandidate.Proofs.FrontendStages.Crep.Translate372
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody388_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4, 5], none)) "htab_get"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 216#64]),
    Flapjack.CrepExp.var 0]

def crepBody388_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody388_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody388_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)) crepBody388_1 crepBody388_2

def crepBody388_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "bal_list_remove_idx"
  [Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 1]),
    Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody388_5 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody388_4

def crepBody388_6 : CrepProg (BitVec 64) :=
.seq crepBody388_3 crepBody388_5

def crepBody388_7 : CrepProg (BitVec 64) :=
.seq crepBody388_6 crepBody388_1

def crepBody388_8 : CrepProg (BitVec 64) :=
.seq crepBody388_0 crepBody388_7

def crepBody388_9 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody388_8

def crepBody388_10 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody388_9

def data388 : CrepProg (BitVec 64) := crepBody388_10
def output388 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 97#8, 108#8, 95#8, 114#8, 101#8, 109#8, 111#8, 118#8, 101#8, 95#8, 99#8, 104#8, 97#8, 110#8, 103#8, 101#8], [0, 1, 2, 3], crepProgToHOL data388)
end InitECandidate.Proofs.FrontendStages.Crep
