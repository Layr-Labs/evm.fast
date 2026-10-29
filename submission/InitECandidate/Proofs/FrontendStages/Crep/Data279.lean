import InitECandidate.Proofs.FrontendStages.Crep.Translate263
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody279_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2, 3], none)) "rlp_list_to_slices" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody279_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 32#64]]

def crepBody279_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "tx_fixed_bytes"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 32#64]

def crepBody279_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 4,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 32#64]],
    Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 32#64]

def crepBody279_4 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody279_3

def crepBody279_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.var 7)

def crepBody279_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody279_7 : CrepProg (BitVec 64) :=
.seq crepBody279_5 crepBody279_6

def crepBody279_8 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64]) crepBody279_7

def crepBody279_9 : CrepProg (BitVec 64) :=
.seq crepBody279_4 crepBody279_8

def crepBody279_10 : CrepProg (BitVec 64) :=
.seq crepBody279_2 crepBody279_9

def crepBody279_11 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody279_10

def crepBody279_12 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 3)) crepBody279_11

def crepBody279_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 3]

def crepBody279_14 : CrepProg (BitVec 64) :=
.seq crepBody279_12 crepBody279_13

def crepBody279_15 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody279_14

def crepBody279_16 : CrepProg (BitVec 64) :=
.seq crepBody279_1 crepBody279_15

def crepBody279_17 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody279_16

def crepBody279_18 : CrepProg (BitVec 64) :=
.seq crepBody279_0 crepBody279_17

def crepBody279_19 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody279_18

def crepBody279_20 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody279_19

def data279 : CrepProg (BitVec 64) := crepBody279_20
def output279 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 98#8, 108#8, 111#8, 98#8, 95#8, 104#8, 97#8, 115#8, 104#8, 101#8,
    115#8], [0, 1], crepProgToHOL data279)
end InitECandidate.Proofs.FrontendStages.Crep
