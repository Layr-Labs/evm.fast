import InitECandidate.Proofs.FrontendStages.Crep.Translate390
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody406_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 2)

def crepBody406_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody406_2 : CrepProg (BitVec 64) :=
.seq crepBody406_0 crepBody406_1

def crepBody406_3 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 4#64) crepBody406_2

def crepBody406_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody406_5 : CrepProg (BitVec 64) :=
.seq crepBody406_3 crepBody406_4

def crepBody406_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 0)) crepBody406_5 crepBody406_1

def crepBody406_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 3)

def crepBody406_8 : CrepProg (BitVec 64) :=
.seq crepBody406_7 crepBody406_1

def crepBody406_9 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 0]) crepBody406_8

def crepBody406_10 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 64#64]) crepBody406_9

def crepBody406_11 : CrepProg (BitVec 64) :=
.seq crepBody406_6 crepBody406_10

def crepBody406_12 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 184#64]),
    Flapjack.CrepExp.var 0]) crepBody406_8

def crepBody406_13 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 184#64]) crepBody406_12

def crepBody406_14 : CrepProg (BitVec 64) :=
.seq crepBody406_11 crepBody406_13

def crepBody406_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody406_16 : CrepProg (BitVec 64) :=
.seq crepBody406_14 crepBody406_15

def crepBody406_17 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 64#64])) crepBody406_16

def data406 : CrepProg (BitVec 64) := crepBody406_17
def output406 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [99#8, 104#8, 97#8, 114#8, 103#8, 101#8, 95#8, 103#8, 97#8, 115#8], [0], crepProgToHOL data406)
end InitECandidate.Proofs.FrontendStages.Crep
