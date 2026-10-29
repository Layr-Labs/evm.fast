import InitECandidate.Proofs.FrontendStages.Crep.Translate211
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody227_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "min" [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3]

def crepBody227_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 5]

def crepBody227_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody227_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 5]))
  (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 5]))) crepBody227_1 crepBody227_2

def crepBody227_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.var 6)

def crepBody227_5 : CrepProg (BitVec 64) :=
.seq crepBody227_4 crepBody227_2

def crepBody227_6 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64]) crepBody227_5

def crepBody227_7 : CrepProg (BitVec 64) :=
.seq crepBody227_3 crepBody227_6

def crepBody227_8 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 4)) crepBody227_7

def crepBody227_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 4]

def crepBody227_10 : CrepProg (BitVec 64) :=
.seq crepBody227_8 crepBody227_9

def crepBody227_11 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody227_10

def crepBody227_12 : CrepProg (BitVec 64) :=
.seq crepBody227_0 crepBody227_11

def crepBody227_13 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody227_12

def data227 : CrepProg (BitVec 64) := crepBody227_13
def output227 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [99#8, 111#8, 109#8, 109#8, 111#8, 110#8, 95#8, 112#8, 114#8, 101#8, 102#8, 105#8, 120#8, 95#8, 108#8, 101#8, 110#8,
    103#8, 116#8, 104#8], [0, 1, 2, 3], crepProgToHOL data227)
end InitECandidate.Proofs.FrontendStages.Crep
