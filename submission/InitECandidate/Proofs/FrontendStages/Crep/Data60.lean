import InitECandidate.Proofs.FrontendStages.Crep.Translate44
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody60_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 6)

def crepBody60_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody60_2 : CrepProg (BitVec 64) :=
.seq crepBody60_0 crepBody60_1

def crepBody60_3 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 4294967295#64]) crepBody60_2

def crepBody60_4 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.var 0) crepBody60_3

def crepBody60_5 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 32#64)) crepBody60_2

def crepBody60_6 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64]) crepBody60_5

def crepBody60_7 : CrepProg (BitVec 64) :=
.seq crepBody60_4 crepBody60_6

def crepBody60_8 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 4294967295#64]) crepBody60_2

def crepBody60_9 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64]) crepBody60_8

def crepBody60_10 : CrepProg (BitVec 64) :=
.seq crepBody60_7 crepBody60_9

def crepBody60_11 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 32#64)) crepBody60_2

def crepBody60_12 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64]) crepBody60_11

def crepBody60_13 : CrepProg (BitVec 64) :=
.seq crepBody60_10 crepBody60_12

def crepBody60_14 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 4294967295#64]) crepBody60_2

def crepBody60_15 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]) crepBody60_14

def crepBody60_16 : CrepProg (BitVec 64) :=
.seq crepBody60_13 crepBody60_15

def crepBody60_17 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 32#64)) crepBody60_2

def crepBody60_18 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64]) crepBody60_17

def crepBody60_19 : CrepProg (BitVec 64) :=
.seq crepBody60_16 crepBody60_18

def crepBody60_20 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 4294967295#64]) crepBody60_2

def crepBody60_21 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64]) crepBody60_20

def crepBody60_22 : CrepProg (BitVec 64) :=
.seq crepBody60_19 crepBody60_21

def crepBody60_23 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 32#64)) crepBody60_2

def crepBody60_24 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 56#64]) crepBody60_23

def crepBody60_25 : CrepProg (BitVec 64) :=
.seq crepBody60_22 crepBody60_24

def crepBody60_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody60_27 : CrepProg (BitVec 64) :=
.seq crepBody60_25 crepBody60_26

def data60 : CrepProg (BitVec 64) := crepBody60_27
def output60 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [117#8, 50#8, 53#8, 54#8, 95#8, 116#8, 111#8, 95#8, 100#8, 105#8, 103#8, 105#8, 116#8, 115#8], [0, 1, 2, 3, 4], crepProgToHOL data60)
end InitECandidate.Proofs.FrontendStages.Crep
