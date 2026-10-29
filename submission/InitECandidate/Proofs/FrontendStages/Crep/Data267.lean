import InitECandidate.Proofs.FrontendStages.Crep.Translate251
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody267_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "memcpy"
  [Flapjack.CrepExp.var 1,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 128#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody267_1 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody267_0

def crepBody267_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody267_3 : CrepProg (BitVec 64) :=
.seq crepBody267_1 crepBody267_2

def crepBody267_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody267_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody267_3 crepBody267_4

def crepBody267_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "node_hash" [Flapjack.CrepExp.var 2]

def crepBody267_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "memcpy"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 32#64]

def crepBody267_8 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody267_7

def crepBody267_9 : CrepProg (BitVec 64) :=
.seq crepBody267_8 crepBody267_2

def crepBody267_10 : CrepProg (BitVec 64) :=
.seq crepBody267_6 crepBody267_9

def crepBody267_11 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody267_10

def crepBody267_12 : CrepProg (BitVec 64) :=
.seq crepBody267_5 crepBody267_11

def crepBody267_13 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64])) crepBody267_12

def data267 : CrepProg (BitVec 64) := crepBody267_13
def output267 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 112#8, 116#8, 95#8, 114#8, 111#8, 111#8, 116#8], [0, 1], crepProgToHOL data267)
end InitECandidate.Proofs.FrontendStages.Crep
