import InitECandidate.Proofs.FrontendStages.Crep.Translate437
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody453_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody453_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "charge_gas" [Flapjack.CrepExp.const 3#64]

def crepBody453_2 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody453_1

def crepBody453_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "stack_push"
  [Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 18446744073709551615#64],
    Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 18446744073709551615#64],
    Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 18446744073709551615#64],
    Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 18446744073709551615#64]]

def crepBody453_4 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody453_3

def crepBody453_5 : CrepProg (BitVec 64) :=
.seq crepBody453_2 crepBody453_4

def crepBody453_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody453_7 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody453_6

def crepBody453_8 : CrepProg (BitVec 64) :=
.seq crepBody453_5 crepBody453_7

def crepBody453_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody453_10 : CrepProg (BitVec 64) :=
.seq crepBody453_8 crepBody453_9

def crepBody453_11 : CrepProg (BitVec 64) :=
.seq crepBody453_0 crepBody453_10

def crepBody453_12 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody453_11

def crepBody453_13 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody453_12

def crepBody453_14 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody453_13

def crepBody453_15 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody453_14

def data453 : CrepProg (BitVec 64) := crepBody453_15
def output453 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 110#8, 111#8, 116#8], [], crepProgToHOL data453)
end InitECandidate.Proofs.FrontendStages.Crep
