import InitECandidate.Proofs.FrontendStages.Crep.Translate371
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody387_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 4,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 1]],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 4,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
          [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64],
            Flapjack.CrepExp.var 1]],
    Flapjack.CrepExp.var 1]

def crepBody387_1 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody387_0

def crepBody387_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody387_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 5)
  (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64])) crepBody387_1 crepBody387_2

def crepBody387_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 7)

def crepBody387_5 : CrepProg (BitVec 64) :=
.seq crepBody387_4 crepBody387_2

def crepBody387_6 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64]) crepBody387_5

def crepBody387_7 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64]) crepBody387_6

def crepBody387_8 : CrepProg (BitVec 64) :=
.seq crepBody387_3 crepBody387_7

def crepBody387_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody387_10 : CrepProg (BitVec 64) :=
.seq crepBody387_8 crepBody387_9

def crepBody387_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 4,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 1]]))
  (Flapjack.CrepExp.var 2)) crepBody387_10 crepBody387_2

def crepBody387_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.var 6)

def crepBody387_13 : CrepProg (BitVec 64) :=
.seq crepBody387_12 crepBody387_2

def crepBody387_14 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64]) crepBody387_13

def crepBody387_15 : CrepProg (BitVec 64) :=
.seq crepBody387_11 crepBody387_14

def crepBody387_16 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 3)) crepBody387_15

def crepBody387_17 : CrepProg (BitVec 64) :=
.seq crepBody387_16 crepBody387_9

def crepBody387_18 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody387_17

def crepBody387_19 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64])) crepBody387_18

def crepBody387_20 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64])) crepBody387_19

def data387 : CrepProg (BitVec 64) := crepBody387_20
def output387 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 97#8, 108#8, 95#8, 108#8, 105#8, 115#8, 116#8, 95#8, 114#8, 101#8, 109#8, 111#8, 118#8, 101#8, 95#8, 105#8,
    100#8, 120#8], [0, 1, 2], crepProgToHOL data387)
end InitECandidate.Proofs.FrontendStages.Crep
