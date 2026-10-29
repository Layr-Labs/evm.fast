import InitECandidate.Proofs.FrontendStages.Crep.Translate641
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody657_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6, 7, 8, 9, 10, 11], none)) "bls_fp_inv_raw"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody657_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "bls_fp_mul"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 17098105564519244256#64,
    Flapjack.CrepExp.const 3557706395579559416#64, Flapjack.CrepExp.const 11120290361046346205#64,
    Flapjack.CrepExp.const 3801124253586036577#64, Flapjack.CrepExp.const 2671430854784468776#64,
    Flapjack.CrepExp.const 767358375875140941#64]

def crepBody657_2 : CrepProg (BitVec 64) :=
.seq crepBody657_0 crepBody657_1

def crepBody657_3 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody657_2

def crepBody657_4 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody657_3

def crepBody657_5 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody657_4

def crepBody657_6 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody657_5

def crepBody657_7 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody657_6

def crepBody657_8 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody657_7

def data657 : CrepProg (BitVec 64) := crepBody657_8
def output657 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 105#8, 110#8, 118#8], [0, 1, 2, 3, 4, 5], crepProgToHOL data657)
end InitECandidate.Proofs.FrontendStages.Crep
