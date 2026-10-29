import InitECandidate.Proofs.FrontendStages.Crep.Translate357
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody373_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3],
        Flapjack.CrepExp.const 2#64]]

def crepBody373_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "memcpy"
  [Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64]),
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2]]

def crepBody373_2 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody373_1

def crepBody373_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 6)

def crepBody373_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody373_5 : CrepProg (BitVec 64) :=
.seq crepBody373_3 crepBody373_4

def crepBody373_6 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 4) crepBody373_5

def crepBody373_7 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64]) crepBody373_6

def crepBody373_8 : CrepProg (BitVec 64) :=
.seq crepBody373_2 crepBody373_7

def crepBody373_9 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 2#64]) crepBody373_5

def crepBody373_10 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64]) crepBody373_9

def crepBody373_11 : CrepProg (BitVec 64) :=
.seq crepBody373_8 crepBody373_10

def crepBody373_12 : CrepProg (BitVec 64) :=
.seq crepBody373_0 crepBody373_11

def crepBody373_13 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody373_12

def crepBody373_14 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 3)) crepBody373_13 crepBody373_4

def crepBody373_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 5)

def crepBody373_16 : CrepProg (BitVec 64) :=
.seq crepBody373_15 crepBody373_4

def crepBody373_17 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 1#64]) crepBody373_16

def crepBody373_18 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64]) crepBody373_17

def crepBody373_19 : CrepProg (BitVec 64) :=
.seq crepBody373_14 crepBody373_18

def crepBody373_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64]),
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 1]]]

def crepBody373_21 : CrepProg (BitVec 64) :=
.seq crepBody373_19 crepBody373_20

def crepBody373_22 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64])) crepBody373_21

def crepBody373_23 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64])) crepBody373_22

def data373 : CrepProg (BitVec 64) := crepBody373_23
def output373 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [108#8, 115#8, 116#8, 95#8, 112#8, 117#8, 115#8, 104#8], [0, 1], crepProgToHOL data373)
end InitECandidate.Proofs.FrontendStages.Crep
