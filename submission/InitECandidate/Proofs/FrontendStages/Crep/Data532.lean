import InitECandidate.Proofs.FrontendStages.Crep.Translate516
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody532_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "frame_new" [Flapjack.CrepExp.var 0]

def crepBody532_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "scratch_alloc" [Flapjack.CrepExp.const 104#64]

def crepBody532_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "memzero" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 104#64]

def crepBody532_3 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody532_2

def crepBody532_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 6)

def crepBody532_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody532_6 : CrepProg (BitVec 64) :=
.seq crepBody532_4 crepBody532_5

def crepBody532_7 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 2) crepBody532_6

def crepBody532_8 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 0#64]) crepBody532_7

def crepBody532_9 : CrepProg (BitVec 64) :=
.seq crepBody532_3 crepBody532_8

def crepBody532_10 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 288#64])) crepBody532_6

def crepBody532_11 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 8#64]) crepBody532_10

def crepBody532_12 : CrepProg (BitVec 64) :=
.seq crepBody532_9 crepBody532_11

def crepBody532_13 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 1) crepBody532_6

def crepBody532_14 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 16#64]) crepBody532_13

def crepBody532_15 : CrepProg (BitVec 64) :=
.seq crepBody532_12 crepBody532_14

def crepBody532_16 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 0) crepBody532_6

def crepBody532_17 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 40#64]) crepBody532_16

def crepBody532_18 : CrepProg (BitVec 64) :=
.seq crepBody532_15 crepBody532_17

def crepBody532_19 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 3) crepBody532_6

def crepBody532_20 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]) crepBody532_19

def crepBody532_21 : CrepProg (BitVec 64) :=
.seq crepBody532_18 crepBody532_20

def crepBody532_22 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 4) crepBody532_6

def crepBody532_23 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 288#64]) crepBody532_22

def crepBody532_24 : CrepProg (BitVec 64) :=
.seq crepBody532_21 crepBody532_23

def crepBody532_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 3]

def crepBody532_26 : CrepProg (BitVec 64) :=
.seq crepBody532_24 crepBody532_25

def crepBody532_27 : CrepProg (BitVec 64) :=
.seq crepBody532_1 crepBody532_26

def crepBody532_28 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody532_27

def crepBody532_29 : CrepProg (BitVec 64) :=
.seq crepBody532_0 crepBody532_28

def crepBody532_30 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody532_29

def crepBody532_31 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64])) crepBody532_30

def data532 : CrepProg (BitVec 64) := crepBody532_31
def output532 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 114#8, 97#8, 109#8, 101#8, 95#8, 111#8, 112#8, 101#8, 110#8], [0, 1], crepProgToHOL data532)
end InitECandidate.Proofs.FrontendStages.Crep
