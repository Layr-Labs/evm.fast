import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody10_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "trap_with" [Flapjack.CrepExp.const 7#64]

def crepBody10_1 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody10_0

def crepBody10_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody10_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower
  (Flapjack.CrepExp.op Flapjack.BinOp.sub
    [Flapjack.CrepExp.var 1,
      Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 32#64])])
  (Flapjack.CrepExp.var 0)) crepBody10_1 crepBody10_2

def crepBody10_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "trap_with" [Flapjack.CrepExp.const 7#64]

def crepBody10_5 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody10_4

def crepBody10_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 2)
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 32#64]))) crepBody10_5 crepBody10_2

def crepBody10_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 4)

def crepBody10_8 : CrepProg (BitVec 64) :=
.seq crepBody10_7 crepBody10_2

def crepBody10_9 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.var 2) crepBody10_8

def crepBody10_10 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 24#64]) crepBody10_9

def crepBody10_11 : CrepProg (BitVec 64) :=
.seq crepBody10_6 crepBody10_10

def crepBody10_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 2]

def crepBody10_13 : CrepProg (BitVec 64) :=
.seq crepBody10_11 crepBody10_12

def crepBody10_14 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 0],
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 8#64]]) crepBody10_13

def crepBody10_15 : CrepProg (BitVec 64) :=
.seq crepBody10_3 crepBody10_14

def crepBody10_16 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 24#64])) crepBody10_15

def data10 : CrepProg (BitVec 64) := crepBody10_16
def output10 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [115#8, 99#8, 114#8, 97#8, 116#8, 99#8, 104#8, 95#8, 97#8, 108#8, 108#8, 111#8, 99#8], [0], crepProgToHOL data10)
end InitECandidate.Proofs.FrontendStages.Crep
