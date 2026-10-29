import InitECandidate.Proofs.FrontendStages.Crep.Translate368
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody384_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2, 3], none)) "stor_lookup"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 176#64]),
          Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody384_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.load (Flapjack.CrepExp.var 3),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 24#64])]

def crepBody384_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody384_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody384_1 crepBody384_2

def crepBody384_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "record_pre_state_read" [Flapjack.CrepExp.var 0]

def crepBody384_5 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody384_4

def crepBody384_6 : CrepProg (BitVec 64) :=
.seq crepBody384_3 crepBody384_5

def crepBody384_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4, 5, 6, 7], none)) "ws_get_storage" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody384_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody384_9 : CrepProg (BitVec 64) :=
.seq crepBody384_7 crepBody384_8

def crepBody384_10 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody384_9

def crepBody384_11 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody384_10

def crepBody384_12 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody384_11

def crepBody384_13 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody384_12

def crepBody384_14 : CrepProg (BitVec 64) :=
.seq crepBody384_6 crepBody384_13

def crepBody384_15 : CrepProg (BitVec 64) :=
.seq crepBody384_0 crepBody384_14

def crepBody384_16 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody384_15

def crepBody384_17 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody384_16

def data384 : CrepProg (BitVec 64) := crepBody384_17
def output384 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [103#8, 101#8, 116#8, 95#8, 112#8, 114#8, 101#8, 95#8, 116#8, 120#8, 95#8, 115#8, 116#8, 111#8, 114#8, 97#8, 103#8,
    101#8], [0, 1], crepProgToHOL data384)
end InitECandidate.Proofs.FrontendStages.Crep
