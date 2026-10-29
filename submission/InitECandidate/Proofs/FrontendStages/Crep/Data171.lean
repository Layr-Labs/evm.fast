import InitECandidate.Proofs.FrontendStages.Crep.Translate155
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody171_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "ceil_log2" [Flapjack.CrepExp.var 2]

def crepBody171_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "ceil_log2" [Flapjack.CrepExp.var 1]

def crepBody171_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "max" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody171_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "memcpy"
  [Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 96#64]),
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 32#64]],
    Flapjack.CrepExp.const 32#64]

def crepBody171_4 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody171_3

def crepBody171_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody171_6 : CrepProg (BitVec 64) :=
.seq crepBody171_4 crepBody171_5

def crepBody171_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody171_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 0#64)) crepBody171_6 crepBody171_7

def crepBody171_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "heap_mark" []

def crepBody171_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 32#64]]

def crepBody171_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "memcpy"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]]

def crepBody171_12 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody171_11

def crepBody171_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "memzero"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 9,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]],
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 1],
        Flapjack.CrepExp.const 32#64]]

def crepBody171_14 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody171_13

def crepBody171_15 : CrepProg (BitVec 64) :=
.seq crepBody171_12 crepBody171_14

def crepBody171_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "sha256_pair"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 9,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 64#64]],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 9,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 64#64],
        Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 9,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 32#64]]]

def crepBody171_17 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody171_16

def crepBody171_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 12 (Flapjack.CrepExp.var 13)

def crepBody171_19 : CrepProg (BitVec 64) :=
.seq crepBody171_18 crepBody171_7

def crepBody171_20 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 1#64]) crepBody171_19

def crepBody171_21 : CrepProg (BitVec 64) :=
.seq crepBody171_17 crepBody171_20

def crepBody171_22 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.var 11)) crepBody171_21

def crepBody171_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 10 (Flapjack.CrepExp.var 11)

def crepBody171_24 : CrepProg (BitVec 64) :=
.seq crepBody171_23 crepBody171_7

def crepBody171_25 : CrepProg (BitVec 64) :=
.seq crepBody171_22 crepBody171_24

def crepBody171_26 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody171_25

def crepBody171_27 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 1#64)) crepBody171_26

def crepBody171_28 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.const 1#64) (Flapjack.CrepExp.var 10)) crepBody171_27

def crepBody171_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "sha256_pair"
  [Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 96#64]),
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 32#64]],
    Flapjack.CrepExp.var 9]

def crepBody171_30 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody171_29

def crepBody171_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11 (Flapjack.CrepExp.var 12)

def crepBody171_32 : CrepProg (BitVec 64) :=
.seq crepBody171_31 crepBody171_7

def crepBody171_33 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 1#64]) crepBody171_32

def crepBody171_34 : CrepProg (BitVec 64) :=
.seq crepBody171_30 crepBody171_33

def crepBody171_35 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.var 6)) crepBody171_34

def crepBody171_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "memcpy"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 32#64]

def crepBody171_37 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody171_36

def crepBody171_38 : CrepProg (BitVec 64) :=
.seq crepBody171_35 crepBody171_37

def crepBody171_39 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "heap_release" [Flapjack.CrepExp.var 7]

def crepBody171_40 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody171_39

def crepBody171_41 : CrepProg (BitVec 64) :=
.seq crepBody171_38 crepBody171_40

def crepBody171_42 : CrepProg (BitVec 64) :=
.seq crepBody171_41 crepBody171_5

def crepBody171_43 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 5) crepBody171_42

def crepBody171_44 : CrepProg (BitVec 64) :=
.seq crepBody171_28 crepBody171_43

def crepBody171_45 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 8) crepBody171_44

def crepBody171_46 : CrepProg (BitVec 64) :=
.seq crepBody171_15 crepBody171_45

def crepBody171_47 : CrepProg (BitVec 64) :=
.seq crepBody171_10 crepBody171_46

def crepBody171_48 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody171_47

def crepBody171_49 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.const 1#64) (Flapjack.CrepExp.var 5)) crepBody171_48

def crepBody171_50 : CrepProg (BitVec 64) :=
.seq crepBody171_9 crepBody171_49

def crepBody171_51 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody171_50

def crepBody171_52 : CrepProg (BitVec 64) :=
.seq crepBody171_8 crepBody171_51

def crepBody171_53 : CrepProg (BitVec 64) :=
.seq crepBody171_2 crepBody171_52

def crepBody171_54 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody171_53

def crepBody171_55 : CrepProg (BitVec 64) :=
.seq crepBody171_1 crepBody171_54

def crepBody171_56 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody171_55

def crepBody171_57 : CrepProg (BitVec 64) :=
.seq crepBody171_0 crepBody171_56

def crepBody171_58 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody171_57

def data171 : CrepProg (BitVec 64) := crepBody171_58
def output171 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 101#8, 114#8, 107#8, 108#8, 101#8, 105#8, 122#8, 101#8], [0, 1, 2, 3], crepProgToHOL data171)
end InitECandidate.Proofs.FrontendStages.Crep
