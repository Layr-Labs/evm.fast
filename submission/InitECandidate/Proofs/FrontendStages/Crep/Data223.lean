import InitECandidate.Proofs.FrontendStages.Crep.Translate207
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody223_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody223_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 3)

def crepBody223_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody223_3 : CrepProg (BitVec 64) :=
.seq crepBody223_1 crepBody223_2

def crepBody223_4 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.var 1) crepBody223_3

def crepBody223_5 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 128#64]) crepBody223_4

def crepBody223_6 : CrepProg (BitVec 64) :=
.seq crepBody223_0 crepBody223_5

def crepBody223_7 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody223_6

def crepBody223_8 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 136#64]) crepBody223_4

def crepBody223_9 : CrepProg (BitVec 64) :=
.seq crepBody223_0 crepBody223_8

def crepBody223_10 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody223_9

def crepBody223_11 : CrepProg (BitVec 64) :=
.seq crepBody223_7 crepBody223_10

def crepBody223_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "alloc" [Flapjack.CrepExp.const 64#64]

def crepBody223_13 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 144#64]) crepBody223_4

def crepBody223_14 : CrepProg (BitVec 64) :=
.seq crepBody223_12 crepBody223_13

def crepBody223_15 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody223_14

def crepBody223_16 : CrepProg (BitVec 64) :=
.seq crepBody223_11 crepBody223_15

def crepBody223_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "alloc" [Flapjack.CrepExp.const 40#64]

def crepBody223_18 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 152#64]) crepBody223_4

def crepBody223_19 : CrepProg (BitVec 64) :=
.seq crepBody223_17 crepBody223_18

def crepBody223_20 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody223_19

def crepBody223_21 : CrepProg (BitVec 64) :=
.seq crepBody223_16 crepBody223_20

def crepBody223_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "alloc" [Flapjack.CrepExp.const 16#64]

def crepBody223_23 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 160#64]) crepBody223_4

def crepBody223_24 : CrepProg (BitVec 64) :=
.seq crepBody223_22 crepBody223_23

def crepBody223_25 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody223_24

def crepBody223_26 : CrepProg (BitVec 64) :=
.seq crepBody223_21 crepBody223_25

def crepBody223_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 152#64]))
  (Flapjack.CrepExp.const 128#64)

def crepBody223_28 : CrepProg (BitVec 64) :=
.seq crepBody223_26 crepBody223_27

def crepBody223_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "keccak256"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 152#64]),
    Flapjack.CrepExp.const 1#64,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 128#64])]

def crepBody223_30 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody223_29

def crepBody223_31 : CrepProg (BitVec 64) :=
.seq crepBody223_28 crepBody223_30

def crepBody223_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "keccak256"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 152#64]),
    Flapjack.CrepExp.const 0#64,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 136#64])]

def crepBody223_33 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody223_32

def crepBody223_34 : CrepProg (BitVec 64) :=
.seq crepBody223_31 crepBody223_33

def crepBody223_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody223_36 : CrepProg (BitVec 64) :=
.seq crepBody223_34 crepBody223_35

def data223 : CrepProg (BitVec 64) := crepBody223_36
def output223 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 112#8, 116#8, 95#8, 105#8, 110#8, 105#8, 116#8], [], crepProgToHOL data223)
end InitECandidate.Proofs.FrontendStages.Crep
