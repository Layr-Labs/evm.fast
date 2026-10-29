import InitECandidate.Proofs.FrontendStages.Crep.Translate445
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody461_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody461_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "charge_gas" [Flapjack.CrepExp.const 8#64]

def crepBody461_2 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody461_1

def crepBody461_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "is_valid_jumpdest"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody461_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 6)

def crepBody461_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody461_6 : CrepProg (BitVec 64) :=
.seq crepBody461_4 crepBody461_5

def crepBody461_7 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 6#64) crepBody461_6

def crepBody461_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody461_9 : CrepProg (BitVec 64) :=
.seq crepBody461_7 crepBody461_8

def crepBody461_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64)) crepBody461_9 crepBody461_5

def crepBody461_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 7)

def crepBody461_12 : CrepProg (BitVec 64) :=
.seq crepBody461_11 crepBody461_5

def crepBody461_13 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 1) crepBody461_12

def crepBody461_14 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 0#64]) crepBody461_13

def crepBody461_15 : CrepProg (BitVec 64) :=
.seq crepBody461_10 crepBody461_14

def crepBody461_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody461_17 : CrepProg (BitVec 64) :=
.seq crepBody461_15 crepBody461_16

def crepBody461_18 : CrepProg (BitVec 64) :=
.seq crepBody461_3 crepBody461_17

def crepBody461_19 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody461_18

def crepBody461_20 : CrepProg (BitVec 64) :=
.seq crepBody461_2 crepBody461_19

def crepBody461_21 : CrepProg (BitVec 64) :=
.seq crepBody461_0 crepBody461_20

def crepBody461_22 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody461_21

def crepBody461_23 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody461_22

def crepBody461_24 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody461_23

def crepBody461_25 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody461_24

def data461 : CrepProg (BitVec 64) := crepBody461_25
def output461 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 106#8, 117#8, 109#8, 112#8], [], crepProgToHOL data461)
end InitECandidate.Proofs.FrontendStages.Crep
