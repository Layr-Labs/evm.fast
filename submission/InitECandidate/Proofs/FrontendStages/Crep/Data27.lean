import InitECandidate.Proofs.FrontendStages.Crep.Translate11
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody27_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.shMem Flapjack.WordMemOp.store8 3
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 2688614400#64, Flapjack.CrepExp.var 2])

def crepBody27_1 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2])) crepBody27_0

def crepBody27_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2 (Flapjack.CrepExp.var 3)

def crepBody27_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody27_4 : CrepProg (BitVec 64) :=
.seq crepBody27_2 crepBody27_3

def crepBody27_5 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 1#64]) crepBody27_4

def crepBody27_6 : CrepProg (BitVec 64) :=
.seq crepBody27_1 crepBody27_5

def crepBody27_7 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 1)) crepBody27_6

def crepBody27_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody27_9 : CrepProg (BitVec 64) :=
.seq crepBody27_7 crepBody27_8

def crepBody27_10 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody27_9

def data27 : CrepProg (BitVec 64) := crepBody27_10
def output27 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [111#8, 117#8, 116#8, 112#8, 117#8, 116#8, 95#8, 119#8, 114#8, 105#8, 116#8, 101#8], [0, 1], crepProgToHOL data27)
end InitECandidate.Proofs.FrontendStages.Crep
