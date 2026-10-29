import InitECandidate.Proofs.FrontendStages.Crep.Translate391
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody407_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 4)

def crepBody407_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody407_2 : CrepProg (BitVec 64) :=
.seq crepBody407_0 crepBody407_1

def crepBody407_3 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 0]) crepBody407_2

def crepBody407_4 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 72#64]) crepBody407_3

def crepBody407_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody407_6 : CrepProg (BitVec 64) :=
.seq crepBody407_4 crepBody407_5

def crepBody407_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 0)) crepBody407_6 crepBody407_1

def crepBody407_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "add_sat" [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2]

def crepBody407_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 6)

def crepBody407_10 : CrepProg (BitVec 64) :=
.seq crepBody407_9 crepBody407_1

def crepBody407_11 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody407_10

def crepBody407_12 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 72#64]) crepBody407_11

def crepBody407_13 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 4]) crepBody407_10

def crepBody407_14 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 64#64]) crepBody407_13

def crepBody407_15 : CrepProg (BitVec 64) :=
.seq crepBody407_12 crepBody407_14

def crepBody407_16 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 192#64]),
    Flapjack.CrepExp.var 4]) crepBody407_10

def crepBody407_17 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 192#64]) crepBody407_16

def crepBody407_18 : CrepProg (BitVec 64) :=
.seq crepBody407_15 crepBody407_17

def crepBody407_19 : CrepProg (BitVec 64) :=
.seq crepBody407_18 crepBody407_5

def crepBody407_20 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]) crepBody407_19

def crepBody407_21 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 0)) crepBody407_20 crepBody407_1

def crepBody407_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 4)

def crepBody407_23 : CrepProg (BitVec 64) :=
.seq crepBody407_22 crepBody407_1

def crepBody407_24 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 4#64) crepBody407_23

def crepBody407_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody407_26 : CrepProg (BitVec 64) :=
.seq crepBody407_24 crepBody407_25

def crepBody407_27 : CrepProg (BitVec 64) :=
.seq crepBody407_21 crepBody407_26

def crepBody407_28 : CrepProg (BitVec 64) :=
.seq crepBody407_27 crepBody407_5

def crepBody407_29 : CrepProg (BitVec 64) :=
.seq crepBody407_8 crepBody407_28

def crepBody407_30 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody407_29

def crepBody407_31 : CrepProg (BitVec 64) :=
.seq crepBody407_7 crepBody407_30

def crepBody407_32 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 64#64])) crepBody407_31

def crepBody407_33 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 72#64])) crepBody407_32

def data407 : CrepProg (BitVec 64) := crepBody407_33
def output407 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [99#8, 104#8, 97#8, 114#8, 103#8, 101#8, 95#8, 115#8, 116#8, 97#8, 116#8, 101#8, 95#8, 103#8, 97#8, 115#8], [0], crepProgToHOL data407)
end InitECandidate.Proofs.FrontendStages.Crep
