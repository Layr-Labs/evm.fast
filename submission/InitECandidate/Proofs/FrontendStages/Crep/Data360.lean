import InitECandidate.Proofs.FrontendStages.Crep.Translate344
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody360_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "destroy_storage" [Flapjack.CrepExp.var 0]

def crepBody360_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody360_0

def crepBody360_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "get_account" [Flapjack.CrepExp.var 0]

def crepBody360_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "acct_copy" [Flapjack.CrepExp.var 1]

def crepBody360_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 3)

def crepBody360_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody360_6 : CrepProg (BitVec 64) :=
.seq crepBody360_4 crepBody360_5

def crepBody360_7 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody360_6

def crepBody360_8 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 0#64]) crepBody360_7

def crepBody360_9 : CrepProg (BitVec 64) :=
.seq crepBody360_3 crepBody360_8

def crepBody360_10 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 136#64])) crepBody360_6

def crepBody360_11 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64]) crepBody360_10

def crepBody360_12 : CrepProg (BitVec 64) :=
.seq crepBody360_9 crepBody360_11

def crepBody360_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "modify_state_commit" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody360_14 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody360_13

def crepBody360_15 : CrepProg (BitVec 64) :=
.seq crepBody360_12 crepBody360_14

def crepBody360_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody360_17 : CrepProg (BitVec 64) :=
.seq crepBody360_15 crepBody360_16

def crepBody360_18 : CrepProg (BitVec 64) :=
.seq crepBody360_2 crepBody360_17

def crepBody360_19 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody360_18

def crepBody360_20 : CrepProg (BitVec 64) :=
.seq crepBody360_1 crepBody360_19

def data360 : CrepProg (BitVec 64) := crepBody360_20
def output360 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [99#8, 108#8, 101#8, 97#8, 114#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8, 95#8, 112#8, 114#8, 101#8,
    115#8, 101#8, 114#8, 118#8, 105#8, 110#8, 103#8, 95#8, 98#8, 97#8, 108#8, 97#8, 110#8, 99#8, 101#8], [0], crepProgToHOL data360)
end InitECandidate.Proofs.FrontendStages.Crep
