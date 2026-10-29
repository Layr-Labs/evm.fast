import InitECandidate.Proofs.FrontendStages.Crep.Translate157
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody173_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "heap_mark" []

def crepBody173_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 24#64, Flapjack.CrepExp.const 32#64]]

def crepBody173_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody173_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.var 8)

def crepBody173_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody173_5 : CrepProg (BitVec 64) :=
.seq crepBody173_3 crepBody173_4

def crepBody173_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.var 9)) crepBody173_5 crepBody173_4

def crepBody173_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "merkleize"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 0,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 32#64]],
    Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 4,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 32#64]]]

def crepBody173_8 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody173_7

def crepBody173_9 : CrepProg (BitVec 64) :=
.seq crepBody173_6 crepBody173_8

def crepBody173_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 10)

def crepBody173_11 : CrepProg (BitVec 64) :=
.seq crepBody173_10 crepBody173_4

def crepBody173_12 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]) crepBody173_11

def crepBody173_13 : CrepProg (BitVec 64) :=
.seq crepBody173_9 crepBody173_12

def crepBody173_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 10)

def crepBody173_15 : CrepProg (BitVec 64) :=
.seq crepBody173_14 crepBody173_4

def crepBody173_16 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 2#64)) crepBody173_15

def crepBody173_17 : CrepProg (BitVec 64) :=
.seq crepBody173_13 crepBody173_16

def crepBody173_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.var 10)

def crepBody173_19 : CrepProg (BitVec 64) :=
.seq crepBody173_18 crepBody173_4

def crepBody173_20 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 1#64]) crepBody173_19

def crepBody173_21 : CrepProg (BitVec 64) :=
.seq crepBody173_17 crepBody173_20

def crepBody173_22 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 7]) crepBody173_21

def crepBody173_23 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 1)) crepBody173_22

def crepBody173_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "memzero" [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 32#64]

def crepBody173_25 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody173_24

def crepBody173_26 : CrepProg (BitVec 64) :=
.seq crepBody173_23 crepBody173_25

def crepBody173_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.var 9)

def crepBody173_28 : CrepProg (BitVec 64) :=
.seq crepBody173_27 crepBody173_4

def crepBody173_29 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 1#64]) crepBody173_28

def crepBody173_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "sha256_pair"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 4,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 32#64]],
    Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 5]

def crepBody173_31 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody173_30

def crepBody173_32 : CrepProg (BitVec 64) :=
.seq crepBody173_29 crepBody173_31

def crepBody173_33 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 0#64)) crepBody173_32

def crepBody173_34 : CrepProg (BitVec 64) :=
.seq crepBody173_26 crepBody173_33

def crepBody173_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "memcpy"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 32#64]

def crepBody173_36 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody173_35

def crepBody173_37 : CrepProg (BitVec 64) :=
.seq crepBody173_34 crepBody173_36

def crepBody173_38 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "heap_release" [Flapjack.CrepExp.var 3]

def crepBody173_39 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody173_38

def crepBody173_40 : CrepProg (BitVec 64) :=
.seq crepBody173_37 crepBody173_39

def crepBody173_41 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody173_42 : CrepProg (BitVec 64) :=
.seq crepBody173_40 crepBody173_41

def crepBody173_43 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 1#64) crepBody173_42

def crepBody173_44 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody173_43

def crepBody173_45 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody173_44

def crepBody173_46 : CrepProg (BitVec 64) :=
.seq crepBody173_2 crepBody173_45

def crepBody173_47 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody173_46

def crepBody173_48 : CrepProg (BitVec 64) :=
.seq crepBody173_1 crepBody173_47

def crepBody173_49 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody173_48

def crepBody173_50 : CrepProg (BitVec 64) :=
.seq crepBody173_0 crepBody173_49

def crepBody173_51 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody173_50

def data173 : CrepProg (BitVec 64) := crepBody173_51
def output173 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [109#8, 101#8, 114#8, 107#8, 108#8, 101#8, 105#8, 122#8, 101#8, 95#8, 112#8, 114#8, 111#8, 103#8, 114#8, 101#8, 115#8,
    115#8, 105#8, 118#8, 101#8], [0, 1, 2], crepProgToHOL data173)
end InitECandidate.Proofs.FrontendStages.Crep
