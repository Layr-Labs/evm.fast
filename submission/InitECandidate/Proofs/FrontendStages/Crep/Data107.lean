import InitECandidate.Proofs.FrontendStages.Crep.Translate91
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody107_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_fail" [Flapjack.CrepExp.const 21#64]

def crepBody107_1 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody107_0

def crepBody107_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody107_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 1)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.var 0))
        (Flapjack.CrepExp.const 0#64))]) crepBody107_1 crepBody107_2

def crepBody107_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_fail" [Flapjack.CrepExp.const 22#64]

def crepBody107_5 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody107_4

def crepBody107_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 1))]) crepBody107_5 crepBody107_2

def crepBody107_7 : CrepProg (BitVec 64) :=
.seq crepBody107_3 crepBody107_6

def crepBody107_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody107_9 : CrepProg (BitVec 64) :=
.seq crepBody107_7 crepBody107_8

def data107 : CrepProg (BitVec 64) := crepBody107_9
def output107 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [114#8, 108#8, 112#8, 95#8, 99#8, 104#8, 101#8, 99#8, 107#8, 95#8, 117#8, 105#8, 110#8, 116#8, 95#8, 98#8, 121#8,
    116#8, 101#8, 115#8], [0, 1, 2], crepProgToHOL data107)
end InitECandidate.Proofs.FrontendStages.Crep
