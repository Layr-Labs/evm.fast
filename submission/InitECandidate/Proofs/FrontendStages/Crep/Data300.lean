import InitECandidate.Proofs.FrontendStages.Crep.Translate284
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody300_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "auth_payload_len"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 0,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 120#64]]]

def crepBody300_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "rlp_list_header_len" [Flapjack.CrepExp.var 4]

def crepBody300_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2 (Flapjack.CrepExp.var 6)

def crepBody300_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody300_4 : CrepProg (BitVec 64) :=
.seq crepBody300_2 crepBody300_3

def crepBody300_5 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 4]) crepBody300_4

def crepBody300_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 6)

def crepBody300_7 : CrepProg (BitVec 64) :=
.seq crepBody300_6 crepBody300_3

def crepBody300_8 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64]) crepBody300_7

def crepBody300_9 : CrepProg (BitVec 64) :=
.seq crepBody300_5 crepBody300_8

def crepBody300_10 : CrepProg (BitVec 64) :=
.seq crepBody300_1 crepBody300_9

def crepBody300_11 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody300_10

def crepBody300_12 : CrepProg (BitVec 64) :=
.seq crepBody300_0 crepBody300_11

def crepBody300_13 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody300_12

def crepBody300_14 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 1)) crepBody300_13

def crepBody300_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 2]

def crepBody300_16 : CrepProg (BitVec 64) :=
.seq crepBody300_14 crepBody300_15

def crepBody300_17 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody300_16

def crepBody300_18 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody300_17

def data300 : CrepProg (BitVec 64) := crepBody300_18
def output300 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [97#8, 117#8, 116#8, 104#8, 95#8, 108#8, 105#8, 115#8, 116#8, 95#8, 112#8, 97#8, 121#8, 108#8, 111#8, 97#8, 100#8,
    95#8, 108#8, 101#8, 110#8], [0, 1], crepProgToHOL data300)
end InitECandidate.Proofs.FrontendStages.Crep
