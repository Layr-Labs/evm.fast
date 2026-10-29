import InitECandidate.Proofs.FrontendStages.Crep.Translate262
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody278_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2, 3], none)) "rlp_list_to_slices" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody278_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 24#64]]

def crepBody278_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6, 7, 8, 9], none)) "rlp_item"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 16#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 16#64],
          Flapjack.CrepExp.const 8#64])]

def crepBody278_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 10)

def crepBody278_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody278_5 : CrepProg (BitVec 64) :=
.seq crepBody278_3 crepBody278_4

def crepBody278_6 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 19#64) crepBody278_5

def crepBody278_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 6#64

def crepBody278_8 : CrepProg (BitVec 64) :=
.seq crepBody278_6 crepBody278_7

def crepBody278_9 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 1#64)) crepBody278_8 crepBody278_4

def crepBody278_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10, 11], none)) "rlp_list_to_slices" [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody278_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 12)

def crepBody278_12 : CrepProg (BitVec 64) :=
.seq crepBody278_11 crepBody278_4

def crepBody278_13 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 19#64) crepBody278_12

def crepBody278_14 : CrepProg (BitVec 64) :=
.seq crepBody278_13 crepBody278_7

def crepBody278_15 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 2#64)) crepBody278_14 crepBody278_4

def crepBody278_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "tx_fixed_bytes"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 20#64]

def crepBody278_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13, 14], none)) "tx_list_item" [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 1#64]

def crepBody278_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15, 16], none)) "rlp_list_to_slices" [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14]

def crepBody278_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 16, Flapjack.CrepExp.const 32#64]]

def crepBody278_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "tx_fixed_bytes"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 32#64]

def crepBody278_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 17,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 32#64]],
    Flapjack.CrepExp.var 19, Flapjack.CrepExp.const 32#64]

def crepBody278_22 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody278_21

def crepBody278_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 18 (Flapjack.CrepExp.var 20)

def crepBody278_24 : CrepProg (BitVec 64) :=
.seq crepBody278_23 crepBody278_4

def crepBody278_25 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 1#64]) crepBody278_24

def crepBody278_26 : CrepProg (BitVec 64) :=
.seq crepBody278_22 crepBody278_25

def crepBody278_27 : CrepProg (BitVec 64) :=
.seq crepBody278_20 crepBody278_26

def crepBody278_28 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody278_27

def crepBody278_29 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.var 16)) crepBody278_28

def crepBody278_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.var 21)

def crepBody278_31 : CrepProg (BitVec 64) :=
.seq crepBody278_30 crepBody278_4

def crepBody278_32 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.var 12) crepBody278_31

def crepBody278_33 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 19, Flapjack.CrepExp.const 0#64]) crepBody278_32

def crepBody278_34 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.var 17) crepBody278_31

def crepBody278_35 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 19, Flapjack.CrepExp.const 8#64]) crepBody278_34

def crepBody278_36 : CrepProg (BitVec 64) :=
.seq crepBody278_33 crepBody278_35

def crepBody278_37 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.var 16) crepBody278_31

def crepBody278_38 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 19, Flapjack.CrepExp.const 16#64]) crepBody278_37

def crepBody278_39 : CrepProg (BitVec 64) :=
.seq crepBody278_36 crepBody278_38

def crepBody278_40 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.var 20)

def crepBody278_41 : CrepProg (BitVec 64) :=
.seq crepBody278_40 crepBody278_4

def crepBody278_42 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64]) crepBody278_41

def crepBody278_43 : CrepProg (BitVec 64) :=
.seq crepBody278_39 crepBody278_42

def crepBody278_44 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 24#64]]) crepBody278_43

def crepBody278_45 : CrepProg (BitVec 64) :=
.seq crepBody278_29 crepBody278_44

def crepBody278_46 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody278_45

def crepBody278_47 : CrepProg (BitVec 64) :=
.seq crepBody278_19 crepBody278_46

def crepBody278_48 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody278_47

def crepBody278_49 : CrepProg (BitVec 64) :=
.seq crepBody278_18 crepBody278_48

def crepBody278_50 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody278_49

def crepBody278_51 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody278_50

def crepBody278_52 : CrepProg (BitVec 64) :=
.seq crepBody278_17 crepBody278_51

def crepBody278_53 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody278_52

def crepBody278_54 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody278_53

def crepBody278_55 : CrepProg (BitVec 64) :=
.seq crepBody278_16 crepBody278_54

def crepBody278_56 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody278_55

def crepBody278_57 : CrepProg (BitVec 64) :=
.seq crepBody278_15 crepBody278_56

def crepBody278_58 : CrepProg (BitVec 64) :=
.seq crepBody278_10 crepBody278_57

def crepBody278_59 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody278_58

def crepBody278_60 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody278_59

def crepBody278_61 : CrepProg (BitVec 64) :=
.seq crepBody278_9 crepBody278_60

def crepBody278_62 : CrepProg (BitVec 64) :=
.seq crepBody278_2 crepBody278_61

def crepBody278_63 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody278_62

def crepBody278_64 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody278_63

def crepBody278_65 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody278_64

def crepBody278_66 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody278_65

def crepBody278_67 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 3)) crepBody278_66

def crepBody278_68 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 3]

def crepBody278_69 : CrepProg (BitVec 64) :=
.seq crepBody278_67 crepBody278_68

def crepBody278_70 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody278_69

def crepBody278_71 : CrepProg (BitVec 64) :=
.seq crepBody278_1 crepBody278_70

def crepBody278_72 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody278_71

def crepBody278_73 : CrepProg (BitVec 64) :=
.seq crepBody278_0 crepBody278_72

def crepBody278_74 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody278_73

def crepBody278_75 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody278_74

def data278 : CrepProg (BitVec 64) := crepBody278_75
def output278 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 97#8, 99#8, 99#8, 101#8, 115#8, 115#8, 95#8, 108#8, 105#8, 115#8,
    116#8], [0, 1], crepProgToHOL data278)
end InitECandidate.Proofs.FrontendStages.Crep
