import InitECandidate.Proofs.FrontendStages.Crep.Translate383
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody399_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 18446744073709551615#64]

def crepBody399_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody399_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 0)) crepBody399_0 crepBody399_1

def crepBody399_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 2]

def crepBody399_4 : CrepProg (BitVec 64) :=
.seq crepBody399_2 crepBody399_3

def crepBody399_5 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]) crepBody399_4

def data399 : CrepProg (BitVec 64) := crepBody399_5
def output399 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [97#8, 100#8, 100#8, 95#8, 115#8, 97#8, 116#8], [0, 1], crepProgToHOL data399)
end InitECandidate.Proofs.FrontendStages.Crep
