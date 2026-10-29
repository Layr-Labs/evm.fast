import InitECandidate.Proofs.FrontendStages.Crep.Translate512
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody528_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "get_account" [Flapjack.CrepExp.var 1]

def crepBody528_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3, 4], none)) "get_code"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.var 1]

def crepBody528_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "is_valid_delegation" [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody528_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody528_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody528_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64)) crepBody528_3 crepBody528_4

def crepBody528_6 : CrepProg (BitVec 64) :=
.seq crepBody528_2 crepBody528_5

def crepBody528_7 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody528_6

def crepBody528_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)) crepBody528_7 crepBody528_4

def crepBody528_9 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 0#64]))
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64]))) crepBody528_3 crepBody528_4

def crepBody528_10 : CrepProg (BitVec 64) :=
.seq crepBody528_8 crepBody528_9

def crepBody528_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody528_12 : CrepProg (BitVec 64) :=
.seq crepBody528_10 crepBody528_11

def crepBody528_13 : CrepProg (BitVec 64) :=
.seq crepBody528_1 crepBody528_12

def crepBody528_14 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody528_13

def crepBody528_15 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody528_14

def crepBody528_16 : CrepProg (BitVec 64) :=
.seq crepBody528_0 crepBody528_15

def crepBody528_17 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody528_16

def data528 : CrepProg (BitVec 64) := crepBody528_17
def output528 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [118#8, 97#8, 108#8, 105#8, 100#8, 97#8, 116#8, 101#8, 95#8, 97#8, 117#8, 116#8, 104#8, 111#8, 114#8, 105#8, 122#8,
    97#8, 116#8, 105#8, 111#8, 110#8, 95#8, 99#8, 104#8, 101#8, 99#8, 107#8, 115#8], [0, 1], crepProgToHOL data528)
end InitECandidate.Proofs.FrontendStages.Crep
