import InitECandidate.Proofs.FrontendStages.Crep.Translate312
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody328_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "memcpy"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 192#64]),
    Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 20#64]

def crepBody328_1 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody328_0

def crepBody328_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 192#64]),
        Flapjack.CrepExp.const 20#64],
    Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]

def crepBody328_3 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody328_2

def crepBody328_4 : CrepProg (BitVec 64) :=
.seq crepBody328_1 crepBody328_3

def crepBody328_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 192#64])]

def crepBody328_6 : CrepProg (BitVec 64) :=
.seq crepBody328_4 crepBody328_5

def data328 : CrepProg (BitVec 64) := crepBody328_6
def output328 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 107#8, 95#8, 109#8, 97#8, 107#8, 101#8], [0, 1], crepProgToHOL data328)
end InitECandidate.Proofs.FrontendStages.Crep
