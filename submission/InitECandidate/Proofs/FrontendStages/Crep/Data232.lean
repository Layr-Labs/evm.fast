import InitECandidate.Proofs.FrontendStages.Crep.Translate216
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody232_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.const 64#64]

def crepBody232_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 6)

def crepBody232_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody232_3 : CrepProg (BitVec 64) :=
.seq crepBody232_1 crepBody232_2

def crepBody232_4 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 1#64) crepBody232_3

def crepBody232_5 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 0#64]) crepBody232_4

def crepBody232_6 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody232_3

def crepBody232_7 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 8#64]) crepBody232_6

def crepBody232_8 : CrepProg (BitVec 64) :=
.seq crepBody232_5 crepBody232_7

def crepBody232_9 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 16#64]) crepBody232_6

def crepBody232_10 : CrepProg (BitVec 64) :=
.seq crepBody232_8 crepBody232_9

def crepBody232_11 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 24#64]) crepBody232_6

def crepBody232_12 : CrepProg (BitVec 64) :=
.seq crepBody232_10 crepBody232_11

def crepBody232_13 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 0) crepBody232_3

def crepBody232_14 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64]) crepBody232_13

def crepBody232_15 : CrepProg (BitVec 64) :=
.seq crepBody232_12 crepBody232_14

def crepBody232_16 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 1) crepBody232_3

def crepBody232_17 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 40#64]) crepBody232_16

def crepBody232_18 : CrepProg (BitVec 64) :=
.seq crepBody232_15 crepBody232_17

def crepBody232_19 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 2) crepBody232_3

def crepBody232_20 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 48#64]) crepBody232_19

def crepBody232_21 : CrepProg (BitVec 64) :=
.seq crepBody232_18 crepBody232_20

def crepBody232_22 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 3) crepBody232_3

def crepBody232_23 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 56#64]) crepBody232_22

def crepBody232_24 : CrepProg (BitVec 64) :=
.seq crepBody232_21 crepBody232_23

def crepBody232_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 4]

def crepBody232_26 : CrepProg (BitVec 64) :=
.seq crepBody232_24 crepBody232_25

def crepBody232_27 : CrepProg (BitVec 64) :=
.seq crepBody232_0 crepBody232_26

def crepBody232_28 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody232_27

def data232 : CrepProg (BitVec 64) := crepBody232_28
def output232 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [110#8, 111#8, 100#8, 101#8, 95#8, 110#8, 101#8, 119#8, 95#8, 108#8, 101#8, 97#8, 102#8], [0, 1, 2, 3], crepProgToHOL data232)
end InitECandidate.Proofs.FrontendStages.Crep
