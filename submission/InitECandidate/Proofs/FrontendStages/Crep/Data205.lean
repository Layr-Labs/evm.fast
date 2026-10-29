import InitECandidate.Proofs.FrontendStages.Crep.Translate189
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody205_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3, 4, 5, 6], none)) "rlp_item"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64],
          Flapjack.CrepExp.const 8#64])]

def crepBody205_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 7)

def crepBody205_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody205_3 : CrepProg (BitVec 64) :=
.seq crepBody205_1 crepBody205_2

def crepBody205_4 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 1#64) crepBody205_3

def crepBody205_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 3#64

def crepBody205_6 : CrepProg (BitVec 64) :=
.seq crepBody205_4 crepBody205_5

def crepBody205_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 0#64)) crepBody205_6 crepBody205_2

def crepBody205_8 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 2#64) crepBody205_3

def crepBody205_9 : CrepProg (BitVec 64) :=
.seq crepBody205_8 crepBody205_5

def crepBody205_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.var 4))
  (Flapjack.CrepExp.const 0#64)) crepBody205_9 crepBody205_2

def crepBody205_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64)) crepBody205_10 crepBody205_2

def crepBody205_12 : CrepProg (BitVec 64) :=
.seq crepBody205_7 crepBody205_11

def crepBody205_13 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 3#64) crepBody205_3

def crepBody205_14 : CrepProg (BitVec 64) :=
.seq crepBody205_13 crepBody205_5

def crepBody205_15 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 5)) crepBody205_14 crepBody205_2

def crepBody205_16 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody205_15 crepBody205_2

def crepBody205_17 : CrepProg (BitVec 64) :=
.seq crepBody205_12 crepBody205_16

def crepBody205_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody205_19 : CrepProg (BitVec 64) :=
.seq crepBody205_17 crepBody205_18

def crepBody205_20 : CrepProg (BitVec 64) :=
.seq crepBody205_0 crepBody205_19

def crepBody205_21 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody205_20

def crepBody205_22 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody205_21

def crepBody205_23 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody205_22

def crepBody205_24 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody205_23

def data205 : CrepProg (BitVec 64) := crepBody205_24
def output205 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [104#8, 100#8, 114#8, 95#8, 117#8, 105#8, 110#8, 116#8, 95#8, 102#8, 105#8, 101#8, 108#8, 100#8], [0, 1, 2], crepProgToHOL data205)
end InitECandidate.Proofs.FrontendStages.Crep
