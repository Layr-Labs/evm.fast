import InitECandidate.Proofs.FrontendStages.Crep.Translate622
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody638_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "charge_gas" [Flapjack.CrepExp.const 6000#64]

def crepBody638_1 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody638_0

def crepBody638_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "alloc" [Flapjack.CrepExp.const 64#64]

def crepBody638_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "heap_mark" []

def crepBody638_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.const 96#64]

def crepBody638_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "buffer_read"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 88#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64]),
    Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 96#64, Flapjack.CrepExp.var 4]

def crepBody638_6 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody638_5

def crepBody638_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "bn254_g1_mul" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 2]

def crepBody638_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "heap_release" [Flapjack.CrepExp.var 3]

def crepBody638_9 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody638_8

def crepBody638_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 6)

def crepBody638_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody638_12 : CrepProg (BitVec 64) :=
.seq crepBody638_10 crepBody638_11

def crepBody638_13 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 4#64) crepBody638_12

def crepBody638_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody638_15 : CrepProg (BitVec 64) :=
.seq crepBody638_13 crepBody638_14

def crepBody638_16 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64)) crepBody638_15 crepBody638_11

def crepBody638_17 : CrepProg (BitVec 64) :=
.seq crepBody638_9 crepBody638_16

def crepBody638_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 7)

def crepBody638_19 : CrepProg (BitVec 64) :=
.seq crepBody638_18 crepBody638_11

def crepBody638_20 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 2) crepBody638_19

def crepBody638_21 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 120#64]) crepBody638_20

def crepBody638_22 : CrepProg (BitVec 64) :=
.seq crepBody638_17 crepBody638_21

def crepBody638_23 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 64#64) crepBody638_19

def crepBody638_24 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 128#64]) crepBody638_23

def crepBody638_25 : CrepProg (BitVec 64) :=
.seq crepBody638_22 crepBody638_24

def crepBody638_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody638_27 : CrepProg (BitVec 64) :=
.seq crepBody638_25 crepBody638_26

def crepBody638_28 : CrepProg (BitVec 64) :=
.seq crepBody638_7 crepBody638_27

def crepBody638_29 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody638_28

def crepBody638_30 : CrepProg (BitVec 64) :=
.seq crepBody638_6 crepBody638_29

def crepBody638_31 : CrepProg (BitVec 64) :=
.seq crepBody638_4 crepBody638_30

def crepBody638_32 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody638_31

def crepBody638_33 : CrepProg (BitVec 64) :=
.seq crepBody638_3 crepBody638_32

def crepBody638_34 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody638_33

def crepBody638_35 : CrepProg (BitVec 64) :=
.seq crepBody638_2 crepBody638_34

def crepBody638_36 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody638_35

def crepBody638_37 : CrepProg (BitVec 64) :=
.seq crepBody638_1 crepBody638_36

def crepBody638_38 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody638_37

def data638 : CrepProg (BitVec 64) := crepBody638_38
def output638 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [112#8, 114#8, 101#8, 95#8, 97#8, 108#8, 116#8, 95#8, 98#8, 110#8, 49#8, 50#8, 56#8, 95#8, 109#8, 117#8, 108#8], [], crepProgToHOL data638)
end InitECandidate.Proofs.FrontendStages.Crep
