import InitECandidate.Proofs.FrontendStages.Crep.Translate90
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody106_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "rlp_fail" [Flapjack.CrepExp.const 20#64]

def crepBody106_1 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody106_0

def crepBody106_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody106_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 8#64) (Flapjack.CrepExp.var 1)) crepBody106_1 crepBody106_2

def crepBody106_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "rlp_fail" [Flapjack.CrepExp.const 21#64]

def crepBody106_5 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody106_4

def crepBody106_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 1)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.var 0))
        (Flapjack.CrepExp.const 0#64))]) crepBody106_5 crepBody106_2

def crepBody106_7 : CrepProg (BitVec 64) :=
.seq crepBody106_3 crepBody106_6

def crepBody106_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2 (Flapjack.CrepExp.var 4)

def crepBody106_9 : CrepProg (BitVec 64) :=
.seq crepBody106_8 crepBody106_2

def crepBody106_10 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3])]) crepBody106_9

def crepBody106_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 4)

def crepBody106_12 : CrepProg (BitVec 64) :=
.seq crepBody106_11 crepBody106_2

def crepBody106_13 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64]) crepBody106_12

def crepBody106_14 : CrepProg (BitVec 64) :=
.seq crepBody106_10 crepBody106_13

def crepBody106_15 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 1)) crepBody106_14

def crepBody106_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 2]

def crepBody106_17 : CrepProg (BitVec 64) :=
.seq crepBody106_15 crepBody106_16

def crepBody106_18 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody106_17

def crepBody106_19 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody106_18

def crepBody106_20 : CrepProg (BitVec 64) :=
.seq crepBody106_7 crepBody106_19

def data106 : CrepProg (BitVec 64) := crepBody106_20
def output106 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [114#8, 108#8, 112#8, 95#8, 98#8, 121#8, 116#8, 101#8, 115#8, 95#8, 116#8, 111#8, 95#8, 119#8, 111#8, 114#8, 100#8], [0, 1], crepProgToHOL data106)
end InitECandidate.Proofs.FrontendStages.Crep
