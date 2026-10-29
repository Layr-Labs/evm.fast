import InitECandidate.Proofs.FrontendStages.Crep.Translate349
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody365_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "get_account" [Flapjack.CrepExp.var 0]

def crepBody365_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "acct_copy" [Flapjack.CrepExp.var 5]

def crepBody365_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 7)

def crepBody365_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 8)

def crepBody365_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 9)

def crepBody365_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 10)

def crepBody365_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody365_7 : CrepProg (BitVec 64) :=
.seq crepBody365_5 crepBody365_6

def crepBody365_8 : CrepProg (BitVec 64) :=
.seq crepBody365_4 crepBody365_7

def crepBody365_9 : CrepProg (BitVec 64) :=
.seq crepBody365_3 crepBody365_8

def crepBody365_10 : CrepProg (BitVec 64) :=
.seq crepBody365_2 crepBody365_9

def crepBody365_11 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 4) crepBody365_10

def crepBody365_12 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 3) crepBody365_11

def crepBody365_13 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 2) crepBody365_12

def crepBody365_14 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 1) crepBody365_13

def crepBody365_15 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 8#64]) crepBody365_14

def crepBody365_16 : CrepProg (BitVec 64) :=
.seq crepBody365_1 crepBody365_15

def crepBody365_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "modify_state_commit" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 5]

def crepBody365_18 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody365_17

def crepBody365_19 : CrepProg (BitVec 64) :=
.seq crepBody365_16 crepBody365_18

def crepBody365_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody365_21 : CrepProg (BitVec 64) :=
.seq crepBody365_19 crepBody365_20

def crepBody365_22 : CrepProg (BitVec 64) :=
.seq crepBody365_0 crepBody365_21

def crepBody365_23 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody365_22

def data365 : CrepProg (BitVec 64) := crepBody365_23
def output365 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [115#8, 101#8, 116#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8, 95#8, 98#8, 97#8, 108#8, 97#8, 110#8, 99#8,
    101#8], [0, 1, 2, 3, 4], crepProgToHOL data365)
end InitECandidate.Proofs.FrontendStages.Crep
