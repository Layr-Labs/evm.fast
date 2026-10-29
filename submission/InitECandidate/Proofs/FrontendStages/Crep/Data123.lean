import InitECandidate.Proofs.FrontendStages.Crep.Translate107
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody123_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "htab_find_leaf" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody123_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody123_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody123_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody123_1 crepBody123_2

def crepBody123_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "memeq"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 5,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 4]],
    Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3]

def crepBody123_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 6]

def crepBody123_6 : CrepProg (BitVec 64) :=
.seq crepBody123_4 crepBody123_5

def crepBody123_7 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody123_6

def crepBody123_8 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64])) crepBody123_7

def crepBody123_9 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64])) crepBody123_8

def crepBody123_10 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64])) crepBody123_9

def crepBody123_11 : CrepProg (BitVec 64) :=
.seq crepBody123_3 crepBody123_10

def crepBody123_12 : CrepProg (BitVec 64) :=
.seq crepBody123_0 crepBody123_11

def crepBody123_13 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody123_12

def data123 : CrepProg (BitVec 64) := crepBody123_13
def output123 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 116#8, 97#8, 98#8, 95#8, 104#8, 97#8, 115#8], [0, 1], crepProgToHOL data123)
end InitECandidate.Proofs.FrontendStages.Crep
