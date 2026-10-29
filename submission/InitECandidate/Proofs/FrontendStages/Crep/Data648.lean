import InitECandidate.Proofs.FrontendStages.Crep.Translate632
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody648_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "bls_fp_is_zero"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody648_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64,
    Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody648_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody648_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 1#64)) crepBody648_1 crepBody648_2

def crepBody648_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7, 8, 9, 10, 11, 12, 13], none)) "bls_fp_sub_raw"
  [Flapjack.CrepExp.const 13402431016077863595#64, Flapjack.CrepExp.const 2210141511517208575#64,
    Flapjack.CrepExp.const 7435674573564081700#64, Flapjack.CrepExp.const 7239337960414712511#64,
    Flapjack.CrepExp.const 5412103778470702295#64, Flapjack.CrepExp.const 1873798617647539866#64,
    Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody648_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10,
    Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12]

def crepBody648_6 : CrepProg (BitVec 64) :=
.seq crepBody648_4 crepBody648_5

def crepBody648_7 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody648_6

def crepBody648_8 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody648_7

def crepBody648_9 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody648_8

def crepBody648_10 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody648_9

def crepBody648_11 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody648_10

def crepBody648_12 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody648_11

def crepBody648_13 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody648_12

def crepBody648_14 : CrepProg (BitVec 64) :=
.seq crepBody648_3 crepBody648_13

def crepBody648_15 : CrepProg (BitVec 64) :=
.seq crepBody648_0 crepBody648_14

def crepBody648_16 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody648_15

def data648 : CrepProg (BitVec 64) := crepBody648_16
def output648 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 110#8, 101#8, 103#8], [0, 1, 2, 3, 4, 5], crepProgToHOL data648)
end InitECandidate.Proofs.FrontendStages.Crep
