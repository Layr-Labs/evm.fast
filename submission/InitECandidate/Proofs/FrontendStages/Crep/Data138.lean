import InitECandidate.Proofs.FrontendStages.Crep.Translate122
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody138_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8, 9, 10, 11, 12], none)) "u256_add_carry"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody138_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "u256_sub"
  [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16,
    Flapjack.CrepExp.const 18446744069414583343#64, Flapjack.CrepExp.const 18446744073709551615#64,
    Flapjack.CrepExp.const 18446744073709551615#64, Flapjack.CrepExp.const 18446744073709551615#64]

def crepBody138_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody138_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.const 1#64)) crepBody138_1 crepBody138_2

def crepBody138_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "u256_lt"
  [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16,
    Flapjack.CrepExp.const 18446744069414583343#64, Flapjack.CrepExp.const 18446744073709551615#64,
    Flapjack.CrepExp.const 18446744073709551615#64, Flapjack.CrepExp.const 18446744073709551615#64]

def crepBody138_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.const 0#64)) crepBody138_1 crepBody138_2

def crepBody138_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16]

def crepBody138_7 : CrepProg (BitVec 64) :=
.seq crepBody138_5 crepBody138_6

def crepBody138_8 : CrepProg (BitVec 64) :=
.seq crepBody138_4 crepBody138_7

def crepBody138_9 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody138_8

def crepBody138_10 : CrepProg (BitVec 64) :=
.seq crepBody138_3 crepBody138_9

def crepBody138_11 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.var 11) crepBody138_10

def crepBody138_12 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 10) crepBody138_11

def crepBody138_13 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 9) crepBody138_12

def crepBody138_14 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 8) crepBody138_13

def crepBody138_15 : CrepProg (BitVec 64) :=
.seq crepBody138_0 crepBody138_14

def crepBody138_16 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody138_15

def crepBody138_17 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody138_16

def crepBody138_18 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody138_17

def crepBody138_19 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody138_18

def crepBody138_20 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody138_19

def data138 : CrepProg (BitVec 64) := crepBody138_20
def output138 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 95#8, 97#8, 100#8, 100#8], [0, 1, 2, 3, 4, 5, 6, 7], crepProgToHOL data138)
end InitECandidate.Proofs.FrontendStages.Crep
