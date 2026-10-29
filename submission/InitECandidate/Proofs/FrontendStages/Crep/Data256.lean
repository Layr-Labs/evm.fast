import InitECandidate.Proofs.FrontendStages.Crep.Translate240
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody256_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6], none)) "mpt_nibble_key"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2]

def crepBody256_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "_mpt_delete_node"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 0#64]

def crepBody256_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "_mpt_insert_node"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 0#64,
    Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody256_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 0#64),
      Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)])) crepBody256_1 crepBody256_2

def crepBody256_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.var 9)

def crepBody256_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody256_6 : CrepProg (BitVec 64) :=
.seq crepBody256_4 crepBody256_5

def crepBody256_7 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 7) crepBody256_6

def crepBody256_8 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64]) crepBody256_7

def crepBody256_9 : CrepProg (BitVec 64) :=
.seq crepBody256_3 crepBody256_8

def crepBody256_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody256_11 : CrepProg (BitVec 64) :=
.seq crepBody256_9 crepBody256_10

def crepBody256_12 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64])) crepBody256_11

def crepBody256_13 : CrepProg (BitVec 64) :=
.seq crepBody256_0 crepBody256_12

def crepBody256_14 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody256_13

def crepBody256_15 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody256_14

def data256 : CrepProg (BitVec 64) := crepBody256_15
def output256 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 112#8, 116#8, 95#8, 115#8, 101#8, 116#8], [0, 1, 2, 3, 4], crepProgToHOL data256)
end InitECandidate.Proofs.FrontendStages.Crep
