import InitECandidate.Proofs.FrontendStages.Crep.Translate797
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody813_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 1 (Flapjack.CrepExp.loadGlob 0#5)

def crepBody813_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody813_2 : CrepProg (BitVec 64) :=
.seq crepBody813_0 crepBody813_1

def crepBody813_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2 (Flapjack.CrepExp.const 0#64)

def crepBody813_4 : CrepProg (BitVec 64) :=
.seq crepBody813_3 crepBody813_1

def crepBody813_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 4)

def crepBody813_6 : CrepProg (BitVec 64) :=
.seq crepBody813_5 crepBody813_1

def crepBody813_7 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.var 1) crepBody813_6

def crepBody813_8 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 536#64]) crepBody813_7

def crepBody813_9 : CrepProg (BitVec 64) :=
.seq crepBody813_4 crepBody813_8

def crepBody813_10 : CrepProg (BitVec 64) :=
.seq crepBody813_2 crepBody813_9

def crepBody813_11 : CrepProg (BitVec 64) :=
.call (some (([3]), some ((9#64), crepBody813_10))) ("attempt_l7") ([Flapjack.CrepExp.var 0])

def crepBody813_12 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody813_11

def crepBody813_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 2]

def crepBody813_14 : CrepProg (BitVec 64) :=
.seq crepBody813_12 crepBody813_13

def crepBody813_15 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 1#64) crepBody813_14

def crepBody813_16 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody813_15

def data813 : CrepProg (BitVec 64) := crepBody813_16
def output813 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [118#8, 101#8, 114#8, 105#8, 102#8, 121#8, 95#8, 115#8, 116#8, 97#8, 116#8, 101#8, 108#8, 101#8, 115#8, 115#8, 95#8,
    110#8, 101#8, 119#8, 95#8, 112#8, 97#8, 121#8, 108#8, 111#8, 97#8, 100#8], [0], crepProgToHOL data813)
end InitECandidate.Proofs.FrontendStages.Crep
