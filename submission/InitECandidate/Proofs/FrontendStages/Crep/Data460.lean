import InitECandidate.Proofs.FrontendStages.Crep.Translate444
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody460_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 2)

def crepBody460_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody460_2 : CrepProg (BitVec 64) :=
.seq crepBody460_0 crepBody460_1

def crepBody460_3 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody460_2

def crepBody460_4 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 104#64]) crepBody460_3

def crepBody460_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody460_6 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody460_5

def crepBody460_7 : CrepProg (BitVec 64) :=
.seq crepBody460_4 crepBody460_6

def crepBody460_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody460_9 : CrepProg (BitVec 64) :=
.seq crepBody460_7 crepBody460_8

def data460 : CrepProg (BitVec 64) := crepBody460_9
def output460 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 115#8, 116#8, 111#8, 112#8], [], crepProgToHOL data460)
end InitECandidate.Proofs.FrontendStages.Crep
