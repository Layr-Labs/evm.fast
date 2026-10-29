import InitECandidate.Proofs.FrontendStages.Crep.Translate643
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody659_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6, 7, 8, 9, 10, 11], none)) "bls_fp_from_mont"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody659_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 1#64]]

def crepBody659_2 : CrepProg (BitVec 64) :=
.seq crepBody659_0 crepBody659_1

def crepBody659_3 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody659_2

def crepBody659_4 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody659_3

def crepBody659_5 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody659_4

def crepBody659_6 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody659_5

def crepBody659_7 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody659_6

def crepBody659_8 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody659_7

def data659 : CrepProg (BitVec 64) := crepBody659_8
def output659 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 115#8, 103#8, 110#8, 48#8], [0, 1, 2, 3, 4, 5], crepProgToHOL data659)
end InitECandidate.Proofs.FrontendStages.Crep
