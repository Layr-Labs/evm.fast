import InitECandidate.Proofs.FrontendStages.Crep.Translate162
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody178_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "memzero" [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 32#64]

def crepBody178_1 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody178_0

def crepBody178_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "memcpy"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody178_3 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody178_2

def crepBody178_4 : CrepProg (BitVec 64) :=
.seq crepBody178_1 crepBody178_3

def crepBody178_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody178_6 : CrepProg (BitVec 64) :=
.seq crepBody178_4 crepBody178_5

def crepBody178_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody178_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.const 32#64) (Flapjack.CrepExp.var 1)) crepBody178_6 crepBody178_7

def crepBody178_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "heap_mark" []

def crepBody178_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4, 5], none)) "pack_bytes" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody178_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "merkleize"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 2]

def crepBody178_12 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody178_11

def crepBody178_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "heap_release" [Flapjack.CrepExp.var 3]

def crepBody178_14 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody178_13

def crepBody178_15 : CrepProg (BitVec 64) :=
.seq crepBody178_12 crepBody178_14

def crepBody178_16 : CrepProg (BitVec 64) :=
.seq crepBody178_15 crepBody178_5

def crepBody178_17 : CrepProg (BitVec 64) :=
.seq crepBody178_10 crepBody178_16

def crepBody178_18 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody178_17

def crepBody178_19 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody178_18

def crepBody178_20 : CrepProg (BitVec 64) :=
.seq crepBody178_9 crepBody178_19

def crepBody178_21 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody178_20

def crepBody178_22 : CrepProg (BitVec 64) :=
.seq crepBody178_8 crepBody178_21

def data178 : CrepProg (BitVec 64) := crepBody178_22
def output178 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [104#8, 116#8, 114#8, 95#8, 98#8, 121#8, 116#8, 101#8, 115#8, 95#8, 118#8, 101#8, 99#8, 116#8, 111#8, 114#8], [0, 1, 2], crepProgToHOL data178)
end InitECandidate.Proofs.FrontendStages.Crep
