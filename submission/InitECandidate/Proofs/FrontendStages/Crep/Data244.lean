import InitECandidate.Proofs.FrontendStages.Crep.Translate228
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody244_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "alloc" [Flapjack.CrepExp.const 16#64]

def crepBody244_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 4)

def crepBody244_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody244_3 : CrepProg (BitVec 64) :=
.seq crepBody244_1 crepBody244_2

def crepBody244_4 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.var 0) crepBody244_3

def crepBody244_5 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 0#64]) crepBody244_4

def crepBody244_6 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.var 1) crepBody244_3

def crepBody244_7 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64]) crepBody244_6

def crepBody244_8 : CrepProg (BitVec 64) :=
.seq crepBody244_5 crepBody244_7

def crepBody244_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 2]

def crepBody244_10 : CrepProg (BitVec 64) :=
.seq crepBody244_8 crepBody244_9

def crepBody244_11 : CrepProg (BitVec 64) :=
.seq crepBody244_0 crepBody244_10

def crepBody244_12 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody244_11

def data244 : CrepProg (BitVec 64) := crepBody244_12
def output244 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 112#8, 116#8, 95#8, 110#8, 101#8, 119#8], [0, 1], crepProgToHOL data244)
end InitECandidate.Proofs.FrontendStages.Crep
