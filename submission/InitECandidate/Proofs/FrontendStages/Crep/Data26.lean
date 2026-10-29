import InitECandidate.Proofs.FrontendStages.Crep.Translate10
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody26_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.shMem Flapjack.WordMemOp.load 1 (Flapjack.CrepExp.const 1073741832#64)

def crepBody26_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "trap_with" [Flapjack.CrepExp.const 8#64]

def crepBody26_2 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody26_1

def crepBody26_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody26_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 1073741808#64) (Flapjack.CrepExp.var 1)) crepBody26_2 crepBody26_3

def crepBody26_5 : CrepProg (BitVec 64) :=
.seq crepBody26_0 crepBody26_4

def crepBody26_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64]]

def crepBody26_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.shMem Flapjack.WordMemOp.load 4
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 1073741840#64, Flapjack.CrepExp.var 3])

def crepBody26_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 6)

def crepBody26_9 : CrepProg (BitVec 64) :=
.seq crepBody26_8 crepBody26_3

def crepBody26_10 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 4) crepBody26_9

def crepBody26_11 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]) crepBody26_10

def crepBody26_12 : CrepProg (BitVec 64) :=
.seq crepBody26_7 crepBody26_11

def crepBody26_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 5)

def crepBody26_14 : CrepProg (BitVec 64) :=
.seq crepBody26_13 crepBody26_3

def crepBody26_15 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64]) crepBody26_14

def crepBody26_16 : CrepProg (BitVec 64) :=
.seq crepBody26_12 crepBody26_15

def crepBody26_17 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 1)) crepBody26_16

def crepBody26_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 1]

def crepBody26_19 : CrepProg (BitVec 64) :=
.seq crepBody26_17 crepBody26_18

def crepBody26_20 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody26_19

def crepBody26_21 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody26_20

def crepBody26_22 : CrepProg (BitVec 64) :=
.seq crepBody26_6 crepBody26_21

def crepBody26_23 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody26_22

def crepBody26_24 : CrepProg (BitVec 64) :=
.seq crepBody26_5 crepBody26_23

def crepBody26_25 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody26_24

def data26 : CrepProg (BitVec 64) := crepBody26_25
def output26 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [105#8, 110#8, 112#8, 117#8, 116#8, 95#8, 98#8, 108#8, 111#8, 98#8], [], crepProgToHOL data26)
end InitECandidate.Proofs.FrontendStages.Crep
