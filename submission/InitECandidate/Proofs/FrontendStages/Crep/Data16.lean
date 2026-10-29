import InitECandidate.Proofs.FrontendStages.Crep.Translate0
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody16_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody16_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody16_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2]))
  (Flapjack.CrepExp.const 0#64)) crepBody16_0 crepBody16_1

def crepBody16_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2 (Flapjack.CrepExp.var 3)

def crepBody16_4 : CrepProg (BitVec 64) :=
.seq crepBody16_3 crepBody16_1

def crepBody16_5 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 1#64]) crepBody16_4

def crepBody16_6 : CrepProg (BitVec 64) :=
.seq crepBody16_2 crepBody16_5

def crepBody16_7 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 1)) crepBody16_6

def crepBody16_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody16_9 : CrepProg (BitVec 64) :=
.seq crepBody16_7 crepBody16_8

def crepBody16_10 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody16_9

def data16 : CrepProg (BitVec 64) := crepBody16_10
def output16 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [105#8, 115#8, 95#8, 122#8, 101#8, 114#8, 111#8, 95#8, 98#8, 121#8, 116#8, 101#8, 115#8], [0, 1], crepProgToHOL data16)
end InitECandidate.Proofs.FrontendStages.Crep
