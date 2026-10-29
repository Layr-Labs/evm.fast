import InitECandidate.Proofs.FrontendStages.Crep.Translate202
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody218_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "udiv" [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1024#64]

def crepBody218_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody218_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody218_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 0)
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2])) crepBody218_1 crepBody218_2

def crepBody218_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 1)
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2])) crepBody218_1 crepBody218_2

def crepBody218_5 : CrepProg (BitVec 64) :=
.seq crepBody218_3 crepBody218_4

def crepBody218_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 5000#64)) crepBody218_1 crepBody218_2

def crepBody218_7 : CrepProg (BitVec 64) :=
.seq crepBody218_5 crepBody218_6

def crepBody218_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody218_9 : CrepProg (BitVec 64) :=
.seq crepBody218_7 crepBody218_8

def crepBody218_10 : CrepProg (BitVec 64) :=
.seq crepBody218_0 crepBody218_9

def crepBody218_11 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody218_10

def data218 : CrepProg (BitVec 64) := crepBody218_11
def output218 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [99#8, 104#8, 101#8, 99#8, 107#8, 95#8, 103#8, 97#8, 115#8, 95#8, 108#8, 105#8, 109#8, 105#8, 116#8], [0, 1], crepProgToHOL data218)
end InitECandidate.Proofs.FrontendStages.Crep
