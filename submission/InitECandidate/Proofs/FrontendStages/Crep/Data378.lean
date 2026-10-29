import InitECandidate.Proofs.FrontendStages.Crep.Translate362
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody378_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "bal_ensure_account" [Flapjack.CrepExp.var 0]

def crepBody378_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "htab_set"
  [Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64]

def crepBody378_2 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody378_1

def crepBody378_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody378_4 : CrepProg (BitVec 64) :=
.seq crepBody378_2 crepBody378_3

def crepBody378_5 : CrepProg (BitVec 64) :=
.seq crepBody378_0 crepBody378_4

def crepBody378_6 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody378_5

def data378 : CrepProg (BitVec 64) := crepBody378_6
def output378 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [97#8, 100#8, 100#8, 95#8, 115#8, 116#8, 111#8, 114#8, 97#8, 103#8, 101#8, 95#8, 114#8, 101#8, 97#8, 100#8], [0, 1], crepProgToHOL data378)
end InitECandidate.Proofs.FrontendStages.Crep
