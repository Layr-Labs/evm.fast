import InitECandidate.Proofs.FrontendStages.Crep.Translate313
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody329_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "alloc" [Flapjack.CrepExp.const 56#64]

def crepBody329_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 8)

def crepBody329_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody329_3 : CrepProg (BitVec 64) :=
.seq crepBody329_1 crepBody329_2

def crepBody329_4 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 0) crepBody329_3

def crepBody329_5 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 0#64]) crepBody329_4

def crepBody329_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 9)

def crepBody329_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 10)

def crepBody329_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 11)

def crepBody329_9 : CrepProg (BitVec 64) :=
.seq crepBody329_8 crepBody329_2

def crepBody329_10 : CrepProg (BitVec 64) :=
.seq crepBody329_7 crepBody329_9

def crepBody329_11 : CrepProg (BitVec 64) :=
.seq crepBody329_6 crepBody329_10

def crepBody329_12 : CrepProg (BitVec 64) :=
.seq crepBody329_1 crepBody329_11

def crepBody329_13 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 4) crepBody329_12

def crepBody329_14 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 3) crepBody329_13

def crepBody329_15 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 2) crepBody329_14

def crepBody329_16 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 1) crepBody329_15

def crepBody329_17 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 8#64]) crepBody329_16

def crepBody329_18 : CrepProg (BitVec 64) :=
.seq crepBody329_5 crepBody329_17

def crepBody329_19 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 128#64])) crepBody329_3

def crepBody329_20 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 40#64]) crepBody329_19

def crepBody329_21 : CrepProg (BitVec 64) :=
.seq crepBody329_18 crepBody329_20

def crepBody329_22 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 5) crepBody329_3

def crepBody329_23 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 48#64]) crepBody329_22

def crepBody329_24 : CrepProg (BitVec 64) :=
.seq crepBody329_21 crepBody329_23

def crepBody329_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 6]

def crepBody329_26 : CrepProg (BitVec 64) :=
.seq crepBody329_24 crepBody329_25

def crepBody329_27 : CrepProg (BitVec 64) :=
.seq crepBody329_0 crepBody329_26

def crepBody329_28 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody329_27

def data329 : CrepProg (BitVec 64) := crepBody329_28
def output329 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [97#8, 99#8, 99#8, 116#8, 95#8, 110#8, 101#8, 119#8], [0, 1, 2, 3, 4, 5], crepProgToHOL data329)
end InitECandidate.Proofs.FrontendStages.Crep
