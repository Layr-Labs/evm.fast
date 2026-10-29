import InitECandidate.Proofs.FrontendStages.Crep.Translate18
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody34_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "alloc" [Flapjack.CrepExp.const 640#64]

def crepBody34_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 3)

def crepBody34_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody34_3 : CrepProg (BitVec 64) :=
.seq crepBody34_1 crepBody34_2

def crepBody34_4 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.var 1) crepBody34_3

def crepBody34_5 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 40#64]) crepBody34_4

def crepBody34_6 : CrepProg (BitVec 64) :=
.seq crepBody34_0 crepBody34_5

def crepBody34_7 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody34_6

def crepBody34_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 40#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody34_7 crepBody34_2

def crepBody34_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody34_10 : CrepProg (BitVec 64) :=
.seq crepBody34_8 crepBody34_9

def data34 : CrepProg (BitVec 64) := crepBody34_10
def output34 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [117#8, 50#8, 53#8, 54#8, 95#8, 119#8, 115#8, 95#8, 105#8, 110#8, 105#8, 116#8], [], crepProgToHOL data34)
end InitECandidate.Proofs.FrontendStages.Crep
