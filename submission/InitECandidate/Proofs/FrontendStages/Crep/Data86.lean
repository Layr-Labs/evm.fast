import InitECandidate.Proofs.FrontendStages.Crep.Translate70
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody86_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 2)

def crepBody86_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody86_2 : CrepProg (BitVec 64) :=
.seq crepBody86_0 crepBody86_1

def crepBody86_3 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 1779033703#64) crepBody86_2

def crepBody86_4 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64]) crepBody86_3

def crepBody86_5 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 3144134277#64) crepBody86_2

def crepBody86_6 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64]) crepBody86_5

def crepBody86_7 : CrepProg (BitVec 64) :=
.seq crepBody86_4 crepBody86_6

def crepBody86_8 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 1013904242#64) crepBody86_2

def crepBody86_9 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64]) crepBody86_8

def crepBody86_10 : CrepProg (BitVec 64) :=
.seq crepBody86_7 crepBody86_9

def crepBody86_11 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 2773480762#64) crepBody86_2

def crepBody86_12 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64]) crepBody86_11

def crepBody86_13 : CrepProg (BitVec 64) :=
.seq crepBody86_10 crepBody86_12

def crepBody86_14 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 1359893119#64) crepBody86_2

def crepBody86_15 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]) crepBody86_14

def crepBody86_16 : CrepProg (BitVec 64) :=
.seq crepBody86_13 crepBody86_15

def crepBody86_17 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 2600822924#64) crepBody86_2

def crepBody86_18 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64]) crepBody86_17

def crepBody86_19 : CrepProg (BitVec 64) :=
.seq crepBody86_16 crepBody86_18

def crepBody86_20 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 528734635#64) crepBody86_2

def crepBody86_21 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64]) crepBody86_20

def crepBody86_22 : CrepProg (BitVec 64) :=
.seq crepBody86_19 crepBody86_21

def crepBody86_23 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 1541459225#64) crepBody86_2

def crepBody86_24 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 56#64]) crepBody86_23

def crepBody86_25 : CrepProg (BitVec 64) :=
.seq crepBody86_22 crepBody86_24

def crepBody86_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody86_27 : CrepProg (BitVec 64) :=
.seq crepBody86_25 crepBody86_26

def data86 : CrepProg (BitVec 64) := crepBody86_27
def output86 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [115#8, 104#8, 97#8, 50#8, 53#8, 54#8, 95#8, 115#8, 116#8, 97#8, 116#8, 101#8, 95#8, 105#8, 110#8, 105#8, 116#8], [0], crepProgToHOL data86)
end InitECandidate.Proofs.FrontendStages.Crep
