import InitECandidate.Proofs.FrontendStages.Crep.Translate305
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody321_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2, 3, 4], none)) "calculate_intrinsic_cost"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody321_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 6)

def crepBody321_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody321_3 : CrepProg (BitVec 64) :=
.seq crepBody321_1 crepBody321_2

def crepBody321_4 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 66#64) crepBody321_3

def crepBody321_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 6#64

def crepBody321_6 : CrepProg (BitVec 64) :=
.seq crepBody321_4 crepBody321_5

def crepBody321_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 4294967295#64) (Flapjack.CrepExp.var 5)) crepBody321_6 crepBody321_2

def crepBody321_8 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 60#64) crepBody321_3

def crepBody321_9 : CrepProg (BitVec 64) :=
.seq crepBody321_8 crepBody321_5

def crepBody321_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 5)
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3])) crepBody321_9 crepBody321_2

def crepBody321_11 : CrepProg (BitVec 64) :=
.seq crepBody321_7 crepBody321_10

def crepBody321_12 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 61#64) crepBody321_3

def crepBody321_13 : CrepProg (BitVec 64) :=
.seq crepBody321_12 crepBody321_5

def crepBody321_14 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 4)) crepBody321_13 crepBody321_2

def crepBody321_15 : CrepProg (BitVec 64) :=
.seq crepBody321_11 crepBody321_14

def crepBody321_16 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 62#64) crepBody321_3

def crepBody321_17 : CrepProg (BitVec 64) :=
.seq crepBody321_16 crepBody321_5

def crepBody321_18 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 131072#64)
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 200#64]))) crepBody321_17 crepBody321_2

def crepBody321_19 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 152#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody321_18 crepBody321_2

def crepBody321_20 : CrepProg (BitVec 64) :=
.seq crepBody321_15 crepBody321_19

def crepBody321_21 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 63#64) crepBody321_3

def crepBody321_22 : CrepProg (BitVec 64) :=
.seq crepBody321_21 crepBody321_5

def crepBody321_23 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 16777216#64) (Flapjack.CrepExp.var 2)) crepBody321_22 crepBody321_2

def crepBody321_24 : CrepProg (BitVec 64) :=
.seq crepBody321_20 crepBody321_23

def crepBody321_25 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 64#64) crepBody321_3

def crepBody321_26 : CrepProg (BitVec 64) :=
.seq crepBody321_25 crepBody321_5

def crepBody321_27 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 16777216#64) (Flapjack.CrepExp.var 4)) crepBody321_26 crepBody321_2

def crepBody321_28 : CrepProg (BitVec 64) :=
.seq crepBody321_24 crepBody321_27

def crepBody321_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "u256_fits_word"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9]

def crepBody321_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 11)

def crepBody321_31 : CrepProg (BitVec 64) :=
.seq crepBody321_30 crepBody321_2

def crepBody321_32 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 65#64) crepBody321_31

def crepBody321_33 : CrepProg (BitVec 64) :=
.seq crepBody321_32 crepBody321_5

def crepBody321_34 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 0#64)) crepBody321_33 crepBody321_2

def crepBody321_35 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 6)
  (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 1#64])) crepBody321_33 crepBody321_2

def crepBody321_36 : CrepProg (BitVec 64) :=
.seq crepBody321_34 crepBody321_35

def crepBody321_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody321_38 : CrepProg (BitVec 64) :=
.seq crepBody321_36 crepBody321_37

def crepBody321_39 : CrepProg (BitVec 64) :=
.seq crepBody321_29 crepBody321_38

def crepBody321_40 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody321_39

def crepBody321_41 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64],
      Flapjack.CrepExp.const 24#64])) crepBody321_40

def crepBody321_42 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64],
      Flapjack.CrepExp.const 16#64])) crepBody321_41

def crepBody321_43 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64],
      Flapjack.CrepExp.const 8#64])) crepBody321_42

def crepBody321_44 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64])) crepBody321_43

def crepBody321_45 : CrepProg (BitVec 64) :=
.seq crepBody321_28 crepBody321_44

def crepBody321_46 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 144#64])) crepBody321_45

def crepBody321_47 : CrepProg (BitVec 64) :=
.seq crepBody321_0 crepBody321_46

def crepBody321_48 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody321_47

def crepBody321_49 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody321_48

def crepBody321_50 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody321_49

def data321 : CrepProg (BitVec 64) := crepBody321_50
def output321 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [118#8, 97#8, 108#8, 105#8, 100#8, 97#8, 116#8, 101#8, 95#8, 116#8, 114#8, 97#8, 110#8, 115#8, 97#8, 99#8, 116#8,
    105#8, 111#8, 110#8], [0, 1], crepProgToHOL data321)
end InitECandidate.Proofs.FrontendStages.Crep
