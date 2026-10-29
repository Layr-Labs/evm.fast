import InitECandidate.Proofs.FrontendStages.Crep.Translate523
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody539_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "state_snapshot" []

def crepBody539_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "destroy_storage" [Flapjack.CrepExp.var 9]

def crepBody539_2 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody539_1

def crepBody539_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "mark_account_created" [Flapjack.CrepExp.var 9]

def crepBody539_4 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody539_3

def crepBody539_5 : CrepProg (BitVec 64) :=
.seq crepBody539_2 crepBody539_4

def crepBody539_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "increment_nonce" [Flapjack.CrepExp.var 9]

def crepBody539_7 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody539_6

def crepBody539_8 : CrepProg (BitVec 64) :=
.seq crepBody539_5 crepBody539_7

def crepBody539_9 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64])) crepBody539_8

def crepBody539_10 : CrepProg (BitVec 64) :=
.seq crepBody539_0 crepBody539_9

def crepBody539_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody539_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 2#64)) crepBody539_10 crepBody539_11

def crepBody539_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 9)

def crepBody539_14 : CrepProg (BitVec 64) :=
.seq crepBody539_13 crepBody539_11

def crepBody539_15 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 7#64) crepBody539_14

def crepBody539_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody539_17 : CrepProg (BitVec 64) :=
.seq crepBody539_15 crepBody539_16

def crepBody539_18 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 1024#64)
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 128#64]))) crepBody539_17 crepBody539_11

def crepBody539_19 : CrepProg (BitVec 64) :=
.seq crepBody539_12 crepBody539_18

def crepBody539_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "frame_open" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody539_21 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody539_20

def crepBody539_22 : CrepProg (BitVec 64) :=
.seq crepBody539_19 crepBody539_21

def crepBody539_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "state_snapshot" []

def crepBody539_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.var 11)

def crepBody539_25 : CrepProg (BitVec 64) :=
.seq crepBody539_24 crepBody539_11

def crepBody539_26 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 9) crepBody539_25

def crepBody539_27 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 288#64]),
    Flapjack.CrepExp.const 24#64]) crepBody539_26

def crepBody539_28 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 8) crepBody539_25

def crepBody539_29 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 288#64]),
    Flapjack.CrepExp.const 96#64]) crepBody539_28

def crepBody539_30 : CrepProg (BitVec 64) :=
.seq crepBody539_27 crepBody539_29

def crepBody539_31 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 2) crepBody539_25

def crepBody539_32 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 288#64]),
    Flapjack.CrepExp.const 48#64]) crepBody539_31

def crepBody539_33 : CrepProg (BitVec 64) :=
.seq crepBody539_30 crepBody539_32

def crepBody539_34 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 3) crepBody539_25

def crepBody539_35 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 288#64]),
    Flapjack.CrepExp.const 56#64]) crepBody539_34

def crepBody539_36 : CrepProg (BitVec 64) :=
.seq crepBody539_33 crepBody539_35

def crepBody539_37 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 4) crepBody539_25

def crepBody539_38 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 288#64]),
    Flapjack.CrepExp.const 64#64]) crepBody539_37

def crepBody539_39 : CrepProg (BitVec 64) :=
.seq crepBody539_36 crepBody539_38

def crepBody539_40 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 5) crepBody539_25

def crepBody539_41 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 288#64]),
    Flapjack.CrepExp.const 72#64]) crepBody539_40

def crepBody539_42 : CrepProg (BitVec 64) :=
.seq crepBody539_39 crepBody539_41

def crepBody539_43 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 6) crepBody539_25

def crepBody539_44 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 288#64]),
    Flapjack.CrepExp.const 80#64]) crepBody539_43

def crepBody539_45 : CrepProg (BitVec 64) :=
.seq crepBody539_42 crepBody539_44

def crepBody539_46 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 7) crepBody539_25

def crepBody539_47 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 288#64]),
    Flapjack.CrepExp.const 88#64]) crepBody539_46

def crepBody539_48 : CrepProg (BitVec 64) :=
.seq crepBody539_45 crepBody539_47

def crepBody539_49 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "frame_start" []

def crepBody539_50 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody539_49

def crepBody539_51 : CrepProg (BitVec 64) :=
.seq crepBody539_48 crepBody539_50

def crepBody539_52 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody539_53 : CrepProg (BitVec 64) :=
.seq crepBody539_51 crepBody539_52

def crepBody539_54 : CrepProg (BitVec 64) :=
.seq crepBody539_23 crepBody539_53

def crepBody539_55 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody539_54

def crepBody539_56 : CrepProg (BitVec 64) :=
.seq crepBody539_22 crepBody539_55

def crepBody539_57 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody539_56

def data539 : CrepProg (BitVec 64) := crepBody539_57
def output539 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 116#8, 97#8, 114#8, 116#8, 95#8, 99#8, 104#8, 105#8, 108#8, 100#8], [0, 1, 2, 3, 4, 5, 6, 7], crepProgToHOL data539)
end InitECandidate.Proofs.FrontendStages.Crep
