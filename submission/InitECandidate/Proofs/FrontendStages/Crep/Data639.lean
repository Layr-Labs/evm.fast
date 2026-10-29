import InitECandidate.Proofs.FrontendStages.Crep.Translate623
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody639_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3, 4], none)) "udivmod" [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 192#64]

def crepBody639_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "charge_gas"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 34000#64, Flapjack.CrepExp.var 3],
        Flapjack.CrepExp.const 45000#64]]

def crepBody639_2 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody639_1

def crepBody639_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 5)

def crepBody639_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody639_5 : CrepProg (BitVec 64) :=
.seq crepBody639_3 crepBody639_4

def crepBody639_6 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 4#64) crepBody639_5

def crepBody639_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody639_8 : CrepProg (BitVec 64) :=
.seq crepBody639_6 crepBody639_7

def crepBody639_9 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)) crepBody639_8 crepBody639_4

def crepBody639_10 : CrepProg (BitVec 64) :=
.seq crepBody639_2 crepBody639_9

def crepBody639_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "bn254_pairing_check"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 88#64]),
    Flapjack.CrepExp.var 3]

def crepBody639_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 6)

def crepBody639_13 : CrepProg (BitVec 64) :=
.seq crepBody639_12 crepBody639_4

def crepBody639_14 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 4#64) crepBody639_13

def crepBody639_15 : CrepProg (BitVec 64) :=
.seq crepBody639_14 crepBody639_7

def crepBody639_16 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 2#64)) crepBody639_15 crepBody639_4

def crepBody639_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody639_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "memzero" [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 32#64]

def crepBody639_19 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody639_18

def crepBody639_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 31#64])
  (Flapjack.CrepExp.var 5)

def crepBody639_21 : CrepProg (BitVec 64) :=
.seq crepBody639_19 crepBody639_20

def crepBody639_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 8)

def crepBody639_23 : CrepProg (BitVec 64) :=
.seq crepBody639_22 crepBody639_4

def crepBody639_24 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 6) crepBody639_23

def crepBody639_25 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 120#64]) crepBody639_24

def crepBody639_26 : CrepProg (BitVec 64) :=
.seq crepBody639_21 crepBody639_25

def crepBody639_27 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 32#64) crepBody639_23

def crepBody639_28 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 128#64]) crepBody639_27

def crepBody639_29 : CrepProg (BitVec 64) :=
.seq crepBody639_26 crepBody639_28

def crepBody639_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody639_31 : CrepProg (BitVec 64) :=
.seq crepBody639_29 crepBody639_30

def crepBody639_32 : CrepProg (BitVec 64) :=
.seq crepBody639_17 crepBody639_31

def crepBody639_33 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody639_32

def crepBody639_34 : CrepProg (BitVec 64) :=
.seq crepBody639_16 crepBody639_33

def crepBody639_35 : CrepProg (BitVec 64) :=
.seq crepBody639_11 crepBody639_34

def crepBody639_36 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody639_35

def crepBody639_37 : CrepProg (BitVec 64) :=
.seq crepBody639_10 crepBody639_36

def crepBody639_38 : CrepProg (BitVec 64) :=
.seq crepBody639_0 crepBody639_37

def crepBody639_39 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody639_38

def crepBody639_40 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody639_39

def crepBody639_41 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64])) crepBody639_40

def crepBody639_42 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody639_41

def data639 : CrepProg (BitVec 64) := crepBody639_42
def output639 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [112#8, 114#8, 101#8, 95#8, 97#8, 108#8, 116#8, 95#8, 98#8, 110#8, 49#8, 50#8, 56#8, 95#8, 112#8, 97#8, 105#8, 114#8,
    105#8, 110#8, 103#8, 95#8, 99#8, 104#8, 101#8, 99#8, 107#8], [], crepProgToHOL data639)
end InitECandidate.Proofs.FrontendStages.Crep
