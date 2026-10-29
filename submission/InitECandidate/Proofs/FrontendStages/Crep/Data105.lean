import InitECandidate.Proofs.FrontendStages.Crep.Translate89
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody105_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "rlp_list_count" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody105_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 16#64]]

def crepBody105_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "rlp_item_total_unchecked"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 5]]

def crepBody105_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 8)

def crepBody105_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody105_5 : CrepProg (BitVec 64) :=
.seq crepBody105_3 crepBody105_4

def crepBody105_6 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 5]) crepBody105_5

def crepBody105_7 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 16#64]]) crepBody105_6

def crepBody105_8 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 6) crepBody105_5

def crepBody105_9 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 16#64],
    Flapjack.CrepExp.const 8#64]) crepBody105_8

def crepBody105_10 : CrepProg (BitVec 64) :=
.seq crepBody105_7 crepBody105_9

def crepBody105_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.var 7)

def crepBody105_12 : CrepProg (BitVec 64) :=
.seq crepBody105_11 crepBody105_4

def crepBody105_13 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]) crepBody105_12

def crepBody105_14 : CrepProg (BitVec 64) :=
.seq crepBody105_10 crepBody105_13

def crepBody105_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.var 7)

def crepBody105_16 : CrepProg (BitVec 64) :=
.seq crepBody105_15 crepBody105_4

def crepBody105_17 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1#64]) crepBody105_16

def crepBody105_18 : CrepProg (BitVec 64) :=
.seq crepBody105_14 crepBody105_17

def crepBody105_19 : CrepProg (BitVec 64) :=
.seq crepBody105_2 crepBody105_18

def crepBody105_20 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody105_19

def crepBody105_21 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 2)) crepBody105_20

def crepBody105_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 2]

def crepBody105_23 : CrepProg (BitVec 64) :=
.seq crepBody105_21 crepBody105_22

def crepBody105_24 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody105_23

def crepBody105_25 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody105_24

def crepBody105_26 : CrepProg (BitVec 64) :=
.seq crepBody105_1 crepBody105_25

def crepBody105_27 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody105_26

def crepBody105_28 : CrepProg (BitVec 64) :=
.seq crepBody105_0 crepBody105_27

def crepBody105_29 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody105_28

def data105 : CrepProg (BitVec 64) := crepBody105_29
def output105 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [114#8, 108#8, 112#8, 95#8, 108#8, 105#8, 115#8, 116#8, 95#8, 116#8, 111#8, 95#8, 115#8, 108#8, 105#8, 99#8, 101#8,
    115#8], [0, 1], crepProgToHOL data105)
end InitECandidate.Proofs.FrontendStages.Crep
