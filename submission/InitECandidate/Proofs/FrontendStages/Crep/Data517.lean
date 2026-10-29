import InitECandidate.Proofs.FrontendStages.Crep.Translate501
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody517_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "charge_gas" [Flapjack.CrepExp.const 2#64]

def crepBody517_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody517_0

def crepBody517_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "block_env" []

def crepBody517_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "stack_push_word"
  [Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 0#64])]

def crepBody517_4 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody517_3

def crepBody517_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody517_6 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody517_5

def crepBody517_7 : CrepProg (BitVec 64) :=
.seq crepBody517_4 crepBody517_6

def crepBody517_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody517_9 : CrepProg (BitVec 64) :=
.seq crepBody517_7 crepBody517_8

def crepBody517_10 : CrepProg (BitVec 64) :=
.seq crepBody517_2 crepBody517_9

def crepBody517_11 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody517_10

def crepBody517_12 : CrepProg (BitVec 64) :=
.seq crepBody517_1 crepBody517_11

def data517 : CrepProg (BitVec 64) := crepBody517_12
def output517 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 99#8, 104#8, 97#8, 105#8, 110#8, 105#8, 100#8], [], crepProgToHOL data517)
end InitECandidate.Proofs.FrontendStages.Crep
