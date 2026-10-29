import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody7_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "trap_with" [Flapjack.CrepExp.const 6#64]

def crepBody7_1 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody7_0

def crepBody7_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody7_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower
  (Flapjack.CrepExp.op Flapjack.BinOp.sub
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 24#64]),
      Flapjack.CrepExp.var 1])
  (Flapjack.CrepExp.var 0)) crepBody7_1 crepBody7_2

def crepBody7_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "trap_with" [Flapjack.CrepExp.const 6#64]

def crepBody7_5 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody7_4

def crepBody7_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 24#64]))
  (Flapjack.CrepExp.var 2)) crepBody7_5 crepBody7_2

def crepBody7_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 4)

def crepBody7_8 : CrepProg (BitVec 64) :=
.seq crepBody7_7 crepBody7_2

def crepBody7_9 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.var 2) crepBody7_8

def crepBody7_10 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 32#64]) crepBody7_9

def crepBody7_11 : CrepProg (BitVec 64) :=
.seq crepBody7_6 crepBody7_10

def crepBody7_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 1]

def crepBody7_13 : CrepProg (BitVec 64) :=
.seq crepBody7_11 crepBody7_12

def crepBody7_14 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 7#64],
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 8#64]]) crepBody7_13

def crepBody7_15 : CrepProg (BitVec 64) :=
.seq crepBody7_3 crepBody7_14

def crepBody7_16 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 32#64])) crepBody7_15

def data7 : CrepProg (BitVec 64) := crepBody7_16
def output7 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [102#8, 114#8, 97#8, 109#8, 101#8, 95#8, 109#8, 101#8, 109#8, 95#8, 97#8, 108#8, 108#8, 111#8, 99#8], [0], crepProgToHOL data7)
end InitECandidate.Proofs.FrontendStages.Crep
