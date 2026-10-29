import InitECandidate.Proofs.FrontendStages.Crep.Translate381
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody397_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4, 5, 6], none)) "htab_item"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 216#64]),
    Flapjack.CrepExp.var 3]

def crepBody397_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 1 (Flapjack.CrepExp.var 10)

def crepBody397_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody397_3 : CrepProg (BitVec 64) :=
.seq crepBody397_1 crepBody397_2

def crepBody397_4 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 24#64])]) crepBody397_3

def crepBody397_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12, 13, 14], none)) "htab_item" [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 11]

def crepBody397_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "htab_has" [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 13]

def crepBody397_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 1 (Flapjack.CrepExp.var 16)

def crepBody397_8 : CrepProg (BitVec 64) :=
.seq crepBody397_7 crepBody397_2

def crepBody397_9 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64]) crepBody397_8

def crepBody397_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.const 0#64)) crepBody397_9 crepBody397_2

def crepBody397_11 : CrepProg (BitVec 64) :=
.seq crepBody397_6 crepBody397_10

def crepBody397_12 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody397_11

def crepBody397_13 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.const 0#64)) crepBody397_12 crepBody397_2

def crepBody397_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11 (Flapjack.CrepExp.var 15)

def crepBody397_15 : CrepProg (BitVec 64) :=
.seq crepBody397_14 crepBody397_2

def crepBody397_16 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 1#64]) crepBody397_15

def crepBody397_17 : CrepProg (BitVec 64) :=
.seq crepBody397_13 crepBody397_16

def crepBody397_18 : CrepProg (BitVec 64) :=
.seq crepBody397_5 crepBody397_17

def crepBody397_19 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody397_18

def crepBody397_20 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody397_19

def crepBody397_21 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody397_20

def crepBody397_22 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.var 10)) crepBody397_21

def crepBody397_23 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody397_22

def crepBody397_24 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 24#64])) crepBody397_23

def crepBody397_25 : CrepProg (BitVec 64) :=
.seq crepBody397_4 crepBody397_24

def crepBody397_26 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64])) crepBody397_25

def crepBody397_27 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 0#64])) crepBody397_26

def crepBody397_28 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 6) crepBody397_27

def crepBody397_29 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)) crepBody397_28 crepBody397_2

def crepBody397_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 7)

def crepBody397_31 : CrepProg (BitVec 64) :=
.seq crepBody397_30 crepBody397_2

def crepBody397_32 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64]) crepBody397_31

def crepBody397_33 : CrepProg (BitVec 64) :=
.seq crepBody397_29 crepBody397_32

def crepBody397_34 : CrepProg (BitVec 64) :=
.seq crepBody397_0 crepBody397_33

def crepBody397_35 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody397_34

def crepBody397_36 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody397_35

def crepBody397_37 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody397_36

def crepBody397_38 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 2)) crepBody397_37

def crepBody397_39 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "udiv" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 2000#64]

def crepBody397_40 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 5)

def crepBody397_41 : CrepProg (BitVec 64) :=
.seq crepBody397_40 crepBody397_2

def crepBody397_42 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 40#64) crepBody397_41

def crepBody397_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 4#64

def crepBody397_44 : CrepProg (BitVec 64) :=
.seq crepBody397_42 crepBody397_43

def crepBody397_45 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 1)) crepBody397_44 crepBody397_2

def crepBody397_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody397_47 : CrepProg (BitVec 64) :=
.seq crepBody397_45 crepBody397_46

def crepBody397_48 : CrepProg (BitVec 64) :=
.seq crepBody397_39 crepBody397_47

def crepBody397_49 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody397_48

def crepBody397_50 : CrepProg (BitVec 64) :=
.seq crepBody397_38 crepBody397_49

def crepBody397_51 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody397_50

def crepBody397_52 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 216#64]),
      Flapjack.CrepExp.const 24#64])) crepBody397_51

def crepBody397_53 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody397_52

def data397 : CrepProg (BitVec 64) := crepBody397_53
def output397 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [118#8, 97#8, 108#8, 105#8, 100#8, 97#8, 116#8, 101#8, 95#8, 98#8, 108#8, 111#8, 99#8, 107#8, 95#8, 97#8, 99#8, 99#8,
    101#8, 115#8, 115#8, 95#8, 108#8, 105#8, 115#8, 116#8, 95#8, 103#8, 97#8, 115#8, 95#8, 108#8, 105#8, 109#8, 105#8,
    116#8], [0], crepProgToHOL data397)
end InitECandidate.Proofs.FrontendStages.Crep
