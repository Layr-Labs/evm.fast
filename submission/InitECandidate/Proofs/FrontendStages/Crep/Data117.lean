import InitECandidate.Proofs.FrontendStages.Crep.Translate101
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody117_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody117_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody117_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 128#64)) crepBody117_0 crepBody117_1

def crepBody117_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "rlp_be_len" [Flapjack.CrepExp.var 0]

def crepBody117_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 1]]

def crepBody117_5 : CrepProg (BitVec 64) :=
.seq crepBody117_3 crepBody117_4

def crepBody117_6 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody117_5

def crepBody117_7 : CrepProg (BitVec 64) :=
.seq crepBody117_2 crepBody117_6

def data117 : CrepProg (BitVec 64) := crepBody117_7
def output117 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [114#8, 108#8, 112#8, 95#8, 119#8, 111#8, 114#8, 100#8, 95#8, 101#8, 110#8, 99#8, 111#8, 100#8, 101#8, 100#8, 95#8,
    108#8, 101#8, 110#8], [0], crepProgToHOL data117)
end InitECandidate.Proofs.FrontendStages.Crep
