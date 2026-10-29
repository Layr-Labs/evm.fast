import InitECandidate.Proofs.FrontendStages.Crep.Translate749
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody765_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "is_zero_bytes" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 18#64]

def crepBody765_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody765_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody765_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 0#64)) crepBody765_1 crepBody765_2

def crepBody765_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 18#64]

def crepBody765_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 0#64)) crepBody765_4 crepBody765_2

def crepBody765_6 : CrepProg (BitVec 64) :=
.seq crepBody765_5 crepBody765_1

def crepBody765_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 1#64)) crepBody765_6 crepBody765_2

def crepBody765_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody765_1 crepBody765_2

def crepBody765_9 : CrepProg (BitVec 64) :=
.seq crepBody765_7 crepBody765_8

def crepBody765_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 3]

def crepBody765_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 1#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.const 17#64) (Flapjack.CrepExp.var 3))]) crepBody765_10 crepBody765_2

def crepBody765_12 : CrepProg (BitVec 64) :=
.seq crepBody765_9 crepBody765_11

def crepBody765_13 : CrepProg (BitVec 64) :=
.seq crepBody765_12 crepBody765_1

def crepBody765_14 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.loadByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 19#64])) crepBody765_13

def crepBody765_15 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.loadByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 18#64])) crepBody765_14

def crepBody765_16 : CrepProg (BitVec 64) :=
.seq crepBody765_3 crepBody765_15

def crepBody765_17 : CrepProg (BitVec 64) :=
.seq crepBody765_0 crepBody765_16

def crepBody765_18 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody765_17

def data765 : CrepProg (BitVec 64) := crepBody765_18
def output765 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [112#8, 114#8, 101#8, 99#8, 111#8, 109#8, 112#8, 105#8, 108#8, 101#8, 95#8, 105#8, 110#8, 100#8, 101#8, 120#8], [0], crepProgToHOL data765)
end InitECandidate.Proofs.FrontendStages.Crep
