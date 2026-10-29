import InitECandidate.Proofs.FrontendStages.Crep.Translate621
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody637_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "charge_gas" [Flapjack.CrepExp.const 150#64]

def crepBody637_1 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody637_0

def crepBody637_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "alloc" [Flapjack.CrepExp.const 64#64]

def crepBody637_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "heap_mark" []

def crepBody637_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.const 128#64]

def crepBody637_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "buffer_read"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 88#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64]),
    Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 128#64, Flapjack.CrepExp.var 4]

def crepBody637_6 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody637_5

def crepBody637_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "bn254_g1_add" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 2]

def crepBody637_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "heap_release" [Flapjack.CrepExp.var 3]

def crepBody637_9 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody637_8

def crepBody637_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 6)

def crepBody637_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody637_12 : CrepProg (BitVec 64) :=
.seq crepBody637_10 crepBody637_11

def crepBody637_13 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 4#64) crepBody637_12

def crepBody637_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody637_15 : CrepProg (BitVec 64) :=
.seq crepBody637_13 crepBody637_14

def crepBody637_16 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64)) crepBody637_15 crepBody637_11

def crepBody637_17 : CrepProg (BitVec 64) :=
.seq crepBody637_9 crepBody637_16

def crepBody637_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 7)

def crepBody637_19 : CrepProg (BitVec 64) :=
.seq crepBody637_18 crepBody637_11

def crepBody637_20 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 2) crepBody637_19

def crepBody637_21 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 120#64]) crepBody637_20

def crepBody637_22 : CrepProg (BitVec 64) :=
.seq crepBody637_17 crepBody637_21

def crepBody637_23 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 64#64) crepBody637_19

def crepBody637_24 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 128#64]) crepBody637_23

def crepBody637_25 : CrepProg (BitVec 64) :=
.seq crepBody637_22 crepBody637_24

def crepBody637_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody637_27 : CrepProg (BitVec 64) :=
.seq crepBody637_25 crepBody637_26

def crepBody637_28 : CrepProg (BitVec 64) :=
.seq crepBody637_7 crepBody637_27

def crepBody637_29 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody637_28

def crepBody637_30 : CrepProg (BitVec 64) :=
.seq crepBody637_6 crepBody637_29

def crepBody637_31 : CrepProg (BitVec 64) :=
.seq crepBody637_4 crepBody637_30

def crepBody637_32 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody637_31

def crepBody637_33 : CrepProg (BitVec 64) :=
.seq crepBody637_3 crepBody637_32

def crepBody637_34 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody637_33

def crepBody637_35 : CrepProg (BitVec 64) :=
.seq crepBody637_2 crepBody637_34

def crepBody637_36 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody637_35

def crepBody637_37 : CrepProg (BitVec 64) :=
.seq crepBody637_1 crepBody637_36

def crepBody637_38 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody637_37

def data637 : CrepProg (BitVec 64) := crepBody637_38
def output637 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [112#8, 114#8, 101#8, 95#8, 97#8, 108#8, 116#8, 95#8, 98#8, 110#8, 49#8, 50#8, 56#8, 95#8, 97#8, 100#8, 100#8], [], crepProgToHOL data637)
end InitECandidate.Proofs.FrontendStages.Crep
