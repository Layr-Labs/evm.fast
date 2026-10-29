import InitECandidate.Proofs.FrontendStages.Crep.Translate334
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody350_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2], none)) "htab_get"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
          Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.var 0]

def crepBody350_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody350_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody350_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 24#64]))) crepBody350_1 crepBody350_2

def crepBody350_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 0#64)) crepBody350_3 crepBody350_2

def crepBody350_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2], none)) "htab_get"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 176#64]),
          Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.var 0]

def crepBody350_6 : CrepProg (BitVec 64) :=
.seq crepBody350_4 crepBody350_5

def crepBody350_7 : CrepProg (BitVec 64) :=
.seq crepBody350_6 crepBody350_4

def crepBody350_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "record_pre_state_read" [Flapjack.CrepExp.var 0]

def crepBody350_9 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody350_8

def crepBody350_10 : CrepProg (BitVec 64) :=
.seq crepBody350_7 crepBody350_9

def crepBody350_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "ws_account_has_storage" [Flapjack.CrepExp.var 0]

def crepBody350_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 3]

def crepBody350_13 : CrepProg (BitVec 64) :=
.seq crepBody350_11 crepBody350_12

def crepBody350_14 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody350_13

def crepBody350_15 : CrepProg (BitVec 64) :=
.seq crepBody350_10 crepBody350_14

def crepBody350_16 : CrepProg (BitVec 64) :=
.seq crepBody350_0 crepBody350_15

def crepBody350_17 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody350_16

def crepBody350_18 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody350_17

def data350 : CrepProg (BitVec 64) := crepBody350_18
def output350 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8, 95#8, 104#8, 97#8, 115#8, 95#8, 115#8, 116#8, 111#8, 114#8, 97#8,
    103#8, 101#8], [0], crepProgToHOL data350)
end InitECandidate.Proofs.FrontendStages.Crep
