import InitECandidate.Proofs.FrontendStages.Crep.Translate403
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody419_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9, 10], none)) "extend_memory_cost1"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody419_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "add_sat" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 9]

def crepBody419_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "charge_gas" [Flapjack.CrepExp.var 11]

def crepBody419_3 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody419_2

def crepBody419_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "extend_memory" [Flapjack.CrepExp.var 10]

def crepBody419_5 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody419_4

def crepBody419_6 : CrepProg (BitVec 64) :=
.seq crepBody419_3 crepBody419_5

def crepBody419_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody419_8 : CrepProg (BitVec 64) :=
.seq crepBody419_6 crepBody419_7

def crepBody419_9 : CrepProg (BitVec 64) :=
.seq crepBody419_1 crepBody419_8

def crepBody419_10 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody419_9

def crepBody419_11 : CrepProg (BitVec 64) :=
.seq crepBody419_0 crepBody419_10

def crepBody419_12 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody419_11

def crepBody419_13 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody419_12

def data419 : CrepProg (BitVec 64) := crepBody419_13
def output419 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [99#8, 104#8, 97#8, 114#8, 103#8, 101#8, 95#8, 119#8, 105#8, 116#8, 104#8, 95#8, 109#8, 101#8, 109#8, 111#8, 114#8,
    121#8], [0, 1, 2, 3, 4, 5, 6, 7, 8], crepProgToHOL data419)
end InitECandidate.Proofs.FrontendStages.Crep
