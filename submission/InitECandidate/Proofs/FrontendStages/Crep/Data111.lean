import InitECandidate.Proofs.FrontendStages.Crep.Translate95
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody111_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody111_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody111_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.const 55#64) (Flapjack.CrepExp.var 0)) crepBody111_0 crepBody111_1

def crepBody111_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "rlp_be_len" [Flapjack.CrepExp.var 0]

def crepBody111_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 1]]

def crepBody111_5 : CrepProg (BitVec 64) :=
.seq crepBody111_3 crepBody111_4

def crepBody111_6 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody111_5

def crepBody111_7 : CrepProg (BitVec 64) :=
.seq crepBody111_2 crepBody111_6

def data111 : CrepProg (BitVec 64) := crepBody111_7
def output111 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [114#8, 108#8, 112#8, 95#8, 104#8, 101#8, 97#8, 100#8, 101#8, 114#8, 95#8, 108#8, 101#8, 110#8], [0], crepProgToHOL data111)
end InitECandidate.Proofs.FrontendStages.Crep
