import InitECandidate.Proofs.FrontendStages.Crep.Translate395
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody411_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 2)

def crepBody411_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody411_2 : CrepProg (BitVec 64) :=
.seq crepBody411_0 crepBody411_1

def crepBody411_3 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 2#64) crepBody411_2

def crepBody411_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody411_5 : CrepProg (BitVec 64) :=
.seq crepBody411_3 crepBody411_4

def crepBody411_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 0#64)) crepBody411_5 crepBody411_1

def crepBody411_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 1 (Flapjack.CrepExp.var 2)

def crepBody411_8 : CrepProg (BitVec 64) :=
.seq crepBody411_7 crepBody411_1

def crepBody411_9 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64]) crepBody411_8

def crepBody411_10 : CrepProg (BitVec 64) :=
.seq crepBody411_6 crepBody411_9

def crepBody411_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 3)

def crepBody411_12 : CrepProg (BitVec 64) :=
.seq crepBody411_11 crepBody411_1

def crepBody411_13 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.var 1) crepBody411_12

def crepBody411_14 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 16#64]) crepBody411_13

def crepBody411_15 : CrepProg (BitVec 64) :=
.seq crepBody411_10 crepBody411_14

def crepBody411_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.load
                  (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
                Flapjack.CrepExp.const 8#64]),
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.load
                (Flapjack.CrepExp.op Flapjack.BinOp.add
                  [Flapjack.CrepExp.load
                      (Flapjack.CrepExp.op Flapjack.BinOp.sub
                        [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
                    Flapjack.CrepExp.const 8#64]),
              Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.load
                (Flapjack.CrepExp.op Flapjack.BinOp.add
                  [Flapjack.CrepExp.load
                      (Flapjack.CrepExp.op Flapjack.BinOp.sub
                        [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
                    Flapjack.CrepExp.const 8#64]),
              Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.load
                (Flapjack.CrepExp.op Flapjack.BinOp.add
                  [Flapjack.CrepExp.load
                      (Flapjack.CrepExp.op Flapjack.BinOp.sub
                        [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
                    Flapjack.CrepExp.const 8#64]),
              Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]],
          Flapjack.CrepExp.const 24#64])]

def crepBody411_17 : CrepProg (BitVec 64) :=
.seq crepBody411_15 crepBody411_16

def crepBody411_18 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 16#64])) crepBody411_17

def data411 : CrepProg (BitVec 64) := crepBody411_18
def output411 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 116#8, 97#8, 99#8, 107#8, 95#8, 112#8, 111#8, 112#8], [], crepProgToHOL data411)
end InitECandidate.Proofs.FrontendStages.Crep
