import InitECandidate.Proofs.FrontendStages.Crep.Translate87
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody103_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "rlp_item_total"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3],
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3]]

def crepBody103_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 5)

def crepBody103_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody103_3 : CrepProg (BitVec 64) :=
.seq crepBody103_1 crepBody103_2

def crepBody103_4 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]) crepBody103_3

def crepBody103_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2 (Flapjack.CrepExp.var 5)

def crepBody103_6 : CrepProg (BitVec 64) :=
.seq crepBody103_5 crepBody103_2

def crepBody103_7 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 1#64]) crepBody103_6

def crepBody103_8 : CrepProg (BitVec 64) :=
.seq crepBody103_4 crepBody103_7

def crepBody103_9 : CrepProg (BitVec 64) :=
.seq crepBody103_0 crepBody103_8

def crepBody103_10 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody103_9

def crepBody103_11 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 1)) crepBody103_10

def crepBody103_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 2]

def crepBody103_13 : CrepProg (BitVec 64) :=
.seq crepBody103_11 crepBody103_12

def crepBody103_14 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody103_13

def crepBody103_15 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody103_14

def data103 : CrepProg (BitVec 64) := crepBody103_15
def output103 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [114#8, 108#8, 112#8, 95#8, 108#8, 105#8, 115#8, 116#8, 95#8, 99#8, 111#8, 117#8, 110#8, 116#8], [0, 1], crepProgToHOL data103)
end InitECandidate.Proofs.FrontendStages.Crep
