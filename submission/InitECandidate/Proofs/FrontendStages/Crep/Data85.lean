import InitECandidate.Proofs.FrontendStages.Crep.Translate69
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody85_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "alloc" [Flapjack.CrepExp.const 64#64]

def crepBody85_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 3)

def crepBody85_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody85_3 : CrepProg (BitVec 64) :=
.seq crepBody85_1 crepBody85_2

def crepBody85_4 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.var 1) crepBody85_3

def crepBody85_5 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 48#64]) crepBody85_4

def crepBody85_6 : CrepProg (BitVec 64) :=
.seq crepBody85_0 crepBody85_5

def crepBody85_7 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody85_6

def crepBody85_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "alloc" [Flapjack.CrepExp.const 128#64]

def crepBody85_9 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 56#64]) crepBody85_4

def crepBody85_10 : CrepProg (BitVec 64) :=
.seq crepBody85_8 crepBody85_9

def crepBody85_11 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody85_10

def crepBody85_12 : CrepProg (BitVec 64) :=
.seq crepBody85_7 crepBody85_11

def crepBody85_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody85_14 : CrepProg (BitVec 64) :=
.seq crepBody85_12 crepBody85_13

def data85 : CrepProg (BitVec 64) := crepBody85_14
def output85 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 104#8, 97#8, 50#8, 53#8, 54#8, 95#8, 105#8, 110#8, 105#8, 116#8], [], crepProgToHOL data85)
end InitECandidate.Proofs.FrontendStages.Crep
