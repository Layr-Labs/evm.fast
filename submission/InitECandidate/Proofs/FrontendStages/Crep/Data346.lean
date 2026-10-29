import InitECandidate.Proofs.FrontendStages.Crep.Translate330
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody346_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "sk_make" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody346_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "htab_set"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
          Flapjack.CrepExp.const 24#64]),
    Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 1#64]

def crepBody346_2 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody346_1

def crepBody346_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3, 4], none)) "stor_lookup"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
          Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody346_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.load (Flapjack.CrepExp.var 4),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 24#64])]

def crepBody346_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody346_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 0#64)) crepBody346_4 crepBody346_5

def crepBody346_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3, 4], none)) "stor_lookup"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 176#64]),
          Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody346_8 : CrepProg (BitVec 64) :=
.seq crepBody346_6 crepBody346_7

def crepBody346_9 : CrepProg (BitVec 64) :=
.seq crepBody346_8 crepBody346_6

def crepBody346_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "record_pre_state_read" [Flapjack.CrepExp.var 0]

def crepBody346_11 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody346_10

def crepBody346_12 : CrepProg (BitVec 64) :=
.seq crepBody346_9 crepBody346_11

def crepBody346_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "ws_get_storage" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody346_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody346_15 : CrepProg (BitVec 64) :=
.seq crepBody346_13 crepBody346_14

def crepBody346_16 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody346_15

def crepBody346_17 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody346_16

def crepBody346_18 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody346_17

def crepBody346_19 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody346_18

def crepBody346_20 : CrepProg (BitVec 64) :=
.seq crepBody346_12 crepBody346_19

def crepBody346_21 : CrepProg (BitVec 64) :=
.seq crepBody346_3 crepBody346_20

def crepBody346_22 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody346_21

def crepBody346_23 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody346_22

def crepBody346_24 : CrepProg (BitVec 64) :=
.seq crepBody346_2 crepBody346_23

def crepBody346_25 : CrepProg (BitVec 64) :=
.seq crepBody346_0 crepBody346_24

def crepBody346_26 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody346_25

def data346 : CrepProg (BitVec 64) := crepBody346_26
def output346 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [103#8, 101#8, 116#8, 95#8, 115#8, 116#8, 111#8, 114#8, 97#8, 103#8, 101#8], [0, 1], crepProgToHOL data346)
end InitECandidate.Proofs.FrontendStages.Crep
