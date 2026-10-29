import InitECandidate.Proofs.FrontendStages.Crep.Translate369
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody385_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "st_le64"
  [Flapjack.CrepExp.var 1,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 224#64])]

def crepBody385_1 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody385_0

def crepBody385_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64], Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.const 20#64]

def crepBody385_3 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody385_2

def crepBody385_4 : CrepProg (BitVec 64) :=
.seq crepBody385_1 crepBody385_3

def crepBody385_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2, 3], none)) "htab_get"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 232#64]),
    Flapjack.CrepExp.var 1]

def crepBody385_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 3]

def crepBody385_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody385_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody385_6 crepBody385_7

def crepBody385_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "get_pre_tx_account" [Flapjack.CrepExp.var 0]

def crepBody385_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "alloc" [Flapjack.CrepExp.const 80#64]

def crepBody385_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "memzero" [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 80#64]

def crepBody385_12 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody385_11

def crepBody385_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 48#64],
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 136#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody385_14 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody385_13

def crepBody385_15 : CrepProg (BitVec 64) :=
.seq crepBody385_12 crepBody385_14

def crepBody385_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 7)

def crepBody385_17 : CrepProg (BitVec 64) :=
.seq crepBody385_16 crepBody385_7

def crepBody385_18 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 1#64) crepBody385_17

def crepBody385_19 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 5) crepBody385_18

def crepBody385_20 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 0#64])) crepBody385_17

def crepBody385_21 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 8#64]) crepBody385_20

def crepBody385_22 : CrepProg (BitVec 64) :=
.seq crepBody385_19 crepBody385_21

def crepBody385_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 8)

def crepBody385_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 9)

def crepBody385_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 10)

def crepBody385_26 : CrepProg (BitVec 64) :=
.seq crepBody385_25 crepBody385_7

def crepBody385_27 : CrepProg (BitVec 64) :=
.seq crepBody385_24 crepBody385_26

def crepBody385_28 : CrepProg (BitVec 64) :=
.seq crepBody385_23 crepBody385_27

def crepBody385_29 : CrepProg (BitVec 64) :=
.seq crepBody385_16 crepBody385_28

def crepBody385_30 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 8#64],
      Flapjack.CrepExp.const 24#64])) crepBody385_29

def crepBody385_31 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 8#64],
      Flapjack.CrepExp.const 16#64])) crepBody385_30

def crepBody385_32 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 8#64],
      Flapjack.CrepExp.const 8#64])) crepBody385_31

def crepBody385_33 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 8#64])) crepBody385_32

def crepBody385_34 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 16#64]) crepBody385_33

def crepBody385_35 : CrepProg (BitVec 64) :=
.seq crepBody385_22 crepBody385_34

def crepBody385_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 48#64],
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody385_37 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody385_36

def crepBody385_38 : CrepProg (BitVec 64) :=
.seq crepBody385_35 crepBody385_37

def crepBody385_39 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 1#64)) crepBody385_38 crepBody385_7

def crepBody385_40 : CrepProg (BitVec 64) :=
.seq crepBody385_15 crepBody385_39

def crepBody385_41 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "st_le64"
  [Flapjack.CrepExp.var 1,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 224#64])]

def crepBody385_42 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody385_41

def crepBody385_43 : CrepProg (BitVec 64) :=
.seq crepBody385_40 crepBody385_42

def crepBody385_44 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64], Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.const 20#64]

def crepBody385_45 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody385_44

def crepBody385_46 : CrepProg (BitVec 64) :=
.seq crepBody385_43 crepBody385_45

def crepBody385_47 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "htab_set"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 232#64]),
    Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 5]

def crepBody385_48 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody385_47

def crepBody385_49 : CrepProg (BitVec 64) :=
.seq crepBody385_46 crepBody385_48

def crepBody385_50 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 5]

def crepBody385_51 : CrepProg (BitVec 64) :=
.seq crepBody385_49 crepBody385_50

def crepBody385_52 : CrepProg (BitVec 64) :=
.seq crepBody385_10 crepBody385_51

def crepBody385_53 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody385_52

def crepBody385_54 : CrepProg (BitVec 64) :=
.seq crepBody385_9 crepBody385_53

def crepBody385_55 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody385_54

def crepBody385_56 : CrepProg (BitVec 64) :=
.seq crepBody385_8 crepBody385_55

def crepBody385_57 : CrepProg (BitVec 64) :=
.seq crepBody385_5 crepBody385_56

def crepBody385_58 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody385_57

def crepBody385_59 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody385_58

def crepBody385_60 : CrepProg (BitVec 64) :=
.seq crepBody385_4 crepBody385_59

def crepBody385_61 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 248#64])) crepBody385_60

def data385 : CrepProg (BitVec 64) := crepBody385_61
def output385 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [105#8, 100#8, 120#8, 95#8, 115#8, 116#8, 97#8, 114#8, 116#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8], [0], crepProgToHOL data385)
end InitECandidate.Proofs.FrontendStages.Crep
