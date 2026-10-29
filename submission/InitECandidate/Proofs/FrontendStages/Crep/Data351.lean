import InitECandidate.Proofs.FrontendStages.Crep.Translate335
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody351_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "get_account" [Flapjack.CrepExp.var 0]

def crepBody351_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody351_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody351_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 0#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody351_1 crepBody351_2

def crepBody351_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "memeq"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 136#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody351_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody351_1 crepBody351_2

def crepBody351_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "account_has_storage" [Flapjack.CrepExp.var 0]

def crepBody351_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 0#64)) crepBody351_1 crepBody351_2

def crepBody351_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody351_9 : CrepProg (BitVec 64) :=
.seq crepBody351_7 crepBody351_8

def crepBody351_10 : CrepProg (BitVec 64) :=
.seq crepBody351_6 crepBody351_9

def crepBody351_11 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody351_10

def crepBody351_12 : CrepProg (BitVec 64) :=
.seq crepBody351_5 crepBody351_11

def crepBody351_13 : CrepProg (BitVec 64) :=
.seq crepBody351_4 crepBody351_12

def crepBody351_14 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody351_13

def crepBody351_15 : CrepProg (BitVec 64) :=
.seq crepBody351_3 crepBody351_14

def crepBody351_16 : CrepProg (BitVec 64) :=
.seq crepBody351_0 crepBody351_15

def crepBody351_17 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody351_16

def data351 : CrepProg (BitVec 64) := crepBody351_17
def output351 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8, 95#8, 100#8, 101#8, 112#8, 108#8, 111#8, 121#8, 97#8, 98#8, 108#8,
    101#8], [0], crepProgToHOL data351)
end InitECandidate.Proofs.FrontendStages.Crep
