import InitECandidate.Proofs.FrontendStages.Crep.Translate260
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody276_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2, 3, 4, 5], none)) "rlp_item"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64],
          Flapjack.CrepExp.const 8#64])]

def crepBody276_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 6)

def crepBody276_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody276_3 : CrepProg (BitVec 64) :=
.seq crepBody276_1 crepBody276_2

def crepBody276_4 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 17#64) crepBody276_3

def crepBody276_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 6#64

def crepBody276_6 : CrepProg (BitVec 64) :=
.seq crepBody276_4 crepBody276_5

def crepBody276_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody276_6 crepBody276_2

def crepBody276_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody276_9 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)) crepBody276_8 crepBody276_2

def crepBody276_10 : CrepProg (BitVec 64) :=
.seq crepBody276_7 crepBody276_9

def crepBody276_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 20#64)) crepBody276_6 crepBody276_2

def crepBody276_12 : CrepProg (BitVec 64) :=
.seq crepBody276_10 crepBody276_11

def crepBody276_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 3]

def crepBody276_14 : CrepProg (BitVec 64) :=
.seq crepBody276_12 crepBody276_13

def crepBody276_15 : CrepProg (BitVec 64) :=
.seq crepBody276_0 crepBody276_14

def crepBody276_16 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody276_15

def crepBody276_17 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody276_16

def crepBody276_18 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody276_17

def crepBody276_19 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody276_18

def data276 : CrepProg (BitVec 64) := crepBody276_19
def output276 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 120#8, 95#8, 116#8, 111#8, 95#8, 105#8, 116#8, 101#8, 109#8], [0, 1], crepProgToHOL data276)
end InitECandidate.Proofs.FrontendStages.Crep
