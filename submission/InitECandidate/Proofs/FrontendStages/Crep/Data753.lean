import InitECandidate.Proofs.FrontendStages.Crep.Translate737
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody753_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "heap_mark" []

def crepBody753_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody753_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.const 144#64]

def crepBody753_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "alloc" [Flapjack.CrepExp.const 144#64]

def crepBody753_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "sha256"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.const 48#64, Flapjack.CrepExp.var 3]

def crepBody753_5 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody753_4

def crepBody753_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 1#64)

def crepBody753_7 : CrepProg (BitVec 64) :=
.seq crepBody753_5 crepBody753_6

def crepBody753_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "memeq"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]

def crepBody753_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody753_10 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody753_9

def crepBody753_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody753_12 : CrepProg (BitVec 64) :=
.seq crepBody753_10 crepBody753_11

def crepBody753_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody753_14 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 0#64)) crepBody753_12 crepBody753_13

def crepBody753_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "kzg_load_g1"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.var 4]

def crepBody753_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody753_17 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody753_16

def crepBody753_18 : CrepProg (BitVec 64) :=
.seq crepBody753_17 crepBody753_11

def crepBody753_19 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 0#64)) crepBody753_18 crepBody753_13

def crepBody753_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "kzg_load_g1"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 144#64],
    Flapjack.CrepExp.var 5]

def crepBody753_21 : CrepProg (BitVec 64) :=
.seq crepBody753_19 crepBody753_20

def crepBody753_22 : CrepProg (BitVec 64) :=
.seq crepBody753_21 crepBody753_19

def crepBody753_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8, 9, 10, 11], none)) "u256_from_be"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 32#64]

def crepBody753_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12, 13, 14, 15], none)) "u256_from_be"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64],
    Flapjack.CrepExp.const 32#64]

def crepBody753_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "u256_lt"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19]

def crepBody753_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "u256_lt"
  [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15,
    Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19]

def crepBody753_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody753_28 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody753_27

def crepBody753_29 : CrepProg (BitVec 64) :=
.seq crepBody753_28 crepBody753_11

def crepBody753_30 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 0#64),
      Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 0#64)])) crepBody753_29 crepBody753_13

def crepBody753_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "kzg_verify"
  [Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64],
    Flapjack.CrepExp.var 5]

def crepBody753_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody753_33 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody753_32

def crepBody753_34 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 0#64)) crepBody753_11 crepBody753_13

def crepBody753_35 : CrepProg (BitVec 64) :=
.seq crepBody753_33 crepBody753_34

def crepBody753_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23], none)) "memzero" [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 64#64]

def crepBody753_37 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody753_36

def crepBody753_38 : CrepProg (BitVec 64) :=
.seq crepBody753_35 crepBody753_37

def crepBody753_39 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 30#64])
  (Flapjack.CrepExp.const 16#64)

def crepBody753_40 : CrepProg (BitVec 64) :=
.seq crepBody753_38 crepBody753_39

def crepBody753_41 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23], none)) "u256_to_be32"
  [Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]]

def crepBody753_42 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody753_41

def crepBody753_43 : CrepProg (BitVec 64) :=
.seq crepBody753_40 crepBody753_42

def crepBody753_44 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody753_45 : CrepProg (BitVec 64) :=
.seq crepBody753_43 crepBody753_44

def crepBody753_46 : CrepProg (BitVec 64) :=
.seq crepBody753_31 crepBody753_45

def crepBody753_47 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody753_46

def crepBody753_48 : CrepProg (BitVec 64) :=
.seq crepBody753_30 crepBody753_47

def crepBody753_49 : CrepProg (BitVec 64) :=
.seq crepBody753_26 crepBody753_48

def crepBody753_50 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody753_49

def crepBody753_51 : CrepProg (BitVec 64) :=
.seq crepBody753_25 crepBody753_50

def crepBody753_52 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody753_51

def crepBody753_53 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
          Flapjack.CrepExp.const 1344#64],
      Flapjack.CrepExp.const 24#64])) crepBody753_52

def crepBody753_54 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
          Flapjack.CrepExp.const 1344#64],
      Flapjack.CrepExp.const 16#64])) crepBody753_53

def crepBody753_55 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
          Flapjack.CrepExp.const 1344#64],
      Flapjack.CrepExp.const 8#64])) crepBody753_54

def crepBody753_56 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
      Flapjack.CrepExp.const 1344#64])) crepBody753_55

def crepBody753_57 : CrepProg (BitVec 64) :=
.seq crepBody753_24 crepBody753_56

def crepBody753_58 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody753_57

def crepBody753_59 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody753_58

def crepBody753_60 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody753_59

def crepBody753_61 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody753_60

def crepBody753_62 : CrepProg (BitVec 64) :=
.seq crepBody753_23 crepBody753_61

def crepBody753_63 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody753_62

def crepBody753_64 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody753_63

def crepBody753_65 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody753_64

def crepBody753_66 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody753_65

def crepBody753_67 : CrepProg (BitVec 64) :=
.seq crepBody753_22 crepBody753_66

def crepBody753_68 : CrepProg (BitVec 64) :=
.seq crepBody753_15 crepBody753_67

def crepBody753_69 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody753_68

def crepBody753_70 : CrepProg (BitVec 64) :=
.seq crepBody753_14 crepBody753_69

def crepBody753_71 : CrepProg (BitVec 64) :=
.seq crepBody753_8 crepBody753_70

def crepBody753_72 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody753_71

def crepBody753_73 : CrepProg (BitVec 64) :=
.seq crepBody753_7 crepBody753_72

def crepBody753_74 : CrepProg (BitVec 64) :=
.seq crepBody753_3 crepBody753_73

def crepBody753_75 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody753_74

def crepBody753_76 : CrepProg (BitVec 64) :=
.seq crepBody753_2 crepBody753_75

def crepBody753_77 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody753_76

def crepBody753_78 : CrepProg (BitVec 64) :=
.seq crepBody753_1 crepBody753_77

def crepBody753_79 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody753_78

def crepBody753_80 : CrepProg (BitVec 64) :=
.seq crepBody753_0 crepBody753_79

def crepBody753_81 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody753_80

def data753 : CrepProg (BitVec 64) := crepBody753_81
def output753 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [107#8, 122#8, 103#8, 95#8, 112#8, 111#8, 105#8, 110#8, 116#8, 95#8, 101#8, 118#8, 97#8, 108#8, 117#8, 97#8, 116#8,
    105#8, 111#8, 110#8, 95#8, 101#8, 120#8, 101#8, 99#8], [0, 1], crepProgToHOL data753)
end InitECandidate.Proofs.FrontendStages.Crep
