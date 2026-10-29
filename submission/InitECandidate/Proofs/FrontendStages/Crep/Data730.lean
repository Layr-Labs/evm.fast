import InitECandidate.Proofs.FrontendStages.Crep.Translate714
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody730_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "g1_is_inf" [Flapjack.CrepExp.var 1]

def crepBody730_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody730_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody730_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 1#64)) crepBody730_1 crepBody730_2

def crepBody730_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "g2_is_inf" [Flapjack.CrepExp.var 2]

def crepBody730_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 1#64)) crepBody730_1 crepBody730_2

def crepBody730_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "heap_mark" []

def crepBody730_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "alloc" [Flapjack.CrepExp.const 96#64]

def crepBody730_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "alloc" [Flapjack.CrepExp.const 192#64]

def crepBody730_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "alloc" [Flapjack.CrepExp.const 576#64]

def crepBody730_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "g1_normalize" [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 1]

def crepBody730_11 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody730_10

def crepBody730_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "g2_normalize" [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 2]

def crepBody730_13 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody730_12

def crepBody730_14 : CrepProg (BitVec 64) :=
.seq crepBody730_11 crepBody730_13

def crepBody730_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "pair_miller_loop"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15,
    Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19,
    Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 7]

def crepBody730_16 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody730_15

def crepBody730_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp12_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 8]

def crepBody730_18 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody730_17

def crepBody730_19 : CrepProg (BitVec 64) :=
.seq crepBody730_16 crepBody730_18

def crepBody730_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "heap_release" [Flapjack.CrepExp.var 5]

def crepBody730_21 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody730_20

def crepBody730_22 : CrepProg (BitVec 64) :=
.seq crepBody730_19 crepBody730_21

def crepBody730_23 : CrepProg (BitVec 64) :=
.seq crepBody730_22 crepBody730_1

def crepBody730_24 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 40#64])) crepBody730_23

def crepBody730_25 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 32#64])) crepBody730_24

def crepBody730_26 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 24#64])) crepBody730_25

def crepBody730_27 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 16#64])) crepBody730_26

def crepBody730_28 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 8#64])) crepBody730_27

def crepBody730_29 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 48#64])) crepBody730_28

def crepBody730_30 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 40#64])) crepBody730_29

def crepBody730_31 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 32#64])) crepBody730_30

def crepBody730_32 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 24#64])) crepBody730_31

def crepBody730_33 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 16#64])) crepBody730_32

def crepBody730_34 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 8#64])) crepBody730_33

def crepBody730_35 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 6)) crepBody730_34

def crepBody730_36 : CrepProg (BitVec 64) :=
.seq crepBody730_14 crepBody730_35

def crepBody730_37 : CrepProg (BitVec 64) :=
.seq crepBody730_9 crepBody730_36

def crepBody730_38 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody730_37

def crepBody730_39 : CrepProg (BitVec 64) :=
.seq crepBody730_8 crepBody730_38

def crepBody730_40 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody730_39

def crepBody730_41 : CrepProg (BitVec 64) :=
.seq crepBody730_7 crepBody730_40

def crepBody730_42 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody730_41

def crepBody730_43 : CrepProg (BitVec 64) :=
.seq crepBody730_6 crepBody730_42

def crepBody730_44 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody730_43

def crepBody730_45 : CrepProg (BitVec 64) :=
.seq crepBody730_5 crepBody730_44

def crepBody730_46 : CrepProg (BitVec 64) :=
.seq crepBody730_4 crepBody730_45

def crepBody730_47 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody730_46

def crepBody730_48 : CrepProg (BitVec 64) :=
.seq crepBody730_3 crepBody730_47

def crepBody730_49 : CrepProg (BitVec 64) :=
.seq crepBody730_0 crepBody730_48

def crepBody730_50 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody730_49

def data730 : CrepProg (BitVec 64) := crepBody730_50
def output730 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [112#8, 97#8, 105#8, 114#8, 95#8, 97#8, 99#8, 99#8, 117#8, 109#8, 117#8, 108#8, 97#8, 116#8, 101#8], [0, 1, 2], crepProgToHOL data730)
end InitECandidate.Proofs.FrontendStages.Crep
