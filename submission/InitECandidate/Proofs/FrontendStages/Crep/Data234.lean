import InitECandidate.Proofs.FrontendStages.Crep.Translate218
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody234_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "alloc" [Flapjack.CrepExp.const 176#64]

def crepBody234_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "memzero" [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 176#64]

def crepBody234_2 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody234_1

def crepBody234_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 3)

def crepBody234_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody234_5 : CrepProg (BitVec 64) :=
.seq crepBody234_3 crepBody234_4

def crepBody234_6 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 3#64) crepBody234_5

def crepBody234_7 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 0#64]) crepBody234_6

def crepBody234_8 : CrepProg (BitVec 64) :=
.seq crepBody234_2 crepBody234_7

def crepBody234_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 1]

def crepBody234_10 : CrepProg (BitVec 64) :=
.seq crepBody234_8 crepBody234_9

def crepBody234_11 : CrepProg (BitVec 64) :=
.seq crepBody234_0 crepBody234_10

def crepBody234_12 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody234_11

def data234 : CrepProg (BitVec 64) := crepBody234_12
def output234 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [110#8, 111#8, 100#8, 101#8, 95#8, 110#8, 101#8, 119#8, 95#8, 98#8, 114#8, 97#8, 110#8, 99#8, 104#8], [], crepProgToHOL data234)
end InitECandidate.Proofs.FrontendStages.Crep
