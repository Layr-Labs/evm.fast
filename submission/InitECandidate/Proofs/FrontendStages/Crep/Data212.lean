import InitECandidate.Proofs.FrontendStages.Crep.Translate196
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody212_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "alloc" [Flapjack.CrepExp.const 1024#64]

def crepBody212_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_encode_bytes"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody212_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2 (Flapjack.CrepExp.var 4)

def crepBody212_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody212_4 : CrepProg (BitVec 64) :=
.seq crepBody212_2 crepBody212_3

def crepBody212_5 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]) crepBody212_4

def crepBody212_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_encode_bytes"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody212_7 : CrepProg (BitVec 64) :=
.seq crepBody212_5 crepBody212_6

def crepBody212_8 : CrepProg (BitVec 64) :=
.seq crepBody212_7 crepBody212_5

def crepBody212_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_encode_bytes"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64]),
    Flapjack.CrepExp.const 20#64]

def crepBody212_10 : CrepProg (BitVec 64) :=
.seq crepBody212_8 crepBody212_9

def crepBody212_11 : CrepProg (BitVec 64) :=
.seq crepBody212_10 crepBody212_5

def crepBody212_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_encode_bytes"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody212_13 : CrepProg (BitVec 64) :=
.seq crepBody212_11 crepBody212_12

def crepBody212_14 : CrepProg (BitVec 64) :=
.seq crepBody212_13 crepBody212_5

def crepBody212_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_encode_bytes"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody212_16 : CrepProg (BitVec 64) :=
.seq crepBody212_14 crepBody212_15

def crepBody212_17 : CrepProg (BitVec 64) :=
.seq crepBody212_16 crepBody212_5

def crepBody212_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_encode_bytes"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody212_19 : CrepProg (BitVec 64) :=
.seq crepBody212_17 crepBody212_18

def crepBody212_20 : CrepProg (BitVec 64) :=
.seq crepBody212_19 crepBody212_5

def crepBody212_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_encode_bytes"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 56#64]),
    Flapjack.CrepExp.const 256#64]

def crepBody212_22 : CrepProg (BitVec 64) :=
.seq crepBody212_20 crepBody212_21

def crepBody212_23 : CrepProg (BitVec 64) :=
.seq crepBody212_22 crepBody212_5

def crepBody212_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_put_u256"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64],
          Flapjack.CrepExp.const 24#64])]

def crepBody212_25 : CrepProg (BitVec 64) :=
.seq crepBody212_23 crepBody212_24

def crepBody212_26 : CrepProg (BitVec 64) :=
.seq crepBody212_25 crepBody212_5

def crepBody212_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_encode_word"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 96#64])]

def crepBody212_28 : CrepProg (BitVec 64) :=
.seq crepBody212_26 crepBody212_27

def crepBody212_29 : CrepProg (BitVec 64) :=
.seq crepBody212_28 crepBody212_5

def crepBody212_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_encode_word"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 104#64])]

def crepBody212_31 : CrepProg (BitVec 64) :=
.seq crepBody212_29 crepBody212_30

def crepBody212_32 : CrepProg (BitVec 64) :=
.seq crepBody212_31 crepBody212_5

def crepBody212_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_encode_word"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 112#64])]

def crepBody212_34 : CrepProg (BitVec 64) :=
.seq crepBody212_32 crepBody212_33

def crepBody212_35 : CrepProg (BitVec 64) :=
.seq crepBody212_34 crepBody212_5

def crepBody212_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_encode_word"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 120#64])]

def crepBody212_37 : CrepProg (BitVec 64) :=
.seq crepBody212_35 crepBody212_36

def crepBody212_38 : CrepProg (BitVec 64) :=
.seq crepBody212_37 crepBody212_5

def crepBody212_39 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_encode_bytes"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 128#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 136#64])]

def crepBody212_40 : CrepProg (BitVec 64) :=
.seq crepBody212_38 crepBody212_39

def crepBody212_41 : CrepProg (BitVec 64) :=
.seq crepBody212_40 crepBody212_5

def crepBody212_42 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_encode_bytes"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 144#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody212_43 : CrepProg (BitVec 64) :=
.seq crepBody212_41 crepBody212_42

def crepBody212_44 : CrepProg (BitVec 64) :=
.seq crepBody212_43 crepBody212_5

def crepBody212_45 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_encode_bytes"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 152#64]),
    Flapjack.CrepExp.const 8#64]

def crepBody212_46 : CrepProg (BitVec 64) :=
.seq crepBody212_44 crepBody212_45

def crepBody212_47 : CrepProg (BitVec 64) :=
.seq crepBody212_46 crepBody212_5

def crepBody212_48 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_put_u256"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64],
          Flapjack.CrepExp.const 24#64])]

def crepBody212_49 : CrepProg (BitVec 64) :=
.seq crepBody212_47 crepBody212_48

def crepBody212_50 : CrepProg (BitVec 64) :=
.seq crepBody212_49 crepBody212_5

def crepBody212_51 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_encode_bytes"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 192#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody212_52 : CrepProg (BitVec 64) :=
.seq crepBody212_50 crepBody212_51

def crepBody212_53 : CrepProg (BitVec 64) :=
.seq crepBody212_52 crepBody212_5

def crepBody212_54 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_encode_word"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 200#64])]

def crepBody212_55 : CrepProg (BitVec 64) :=
.seq crepBody212_53 crepBody212_54

def crepBody212_56 : CrepProg (BitVec 64) :=
.seq crepBody212_55 crepBody212_5

def crepBody212_57 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_encode_word"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 208#64])]

def crepBody212_58 : CrepProg (BitVec 64) :=
.seq crepBody212_56 crepBody212_57

def crepBody212_59 : CrepProg (BitVec 64) :=
.seq crepBody212_58 crepBody212_5

def crepBody212_60 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_encode_bytes"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 216#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody212_61 : CrepProg (BitVec 64) :=
.seq crepBody212_59 crepBody212_60

def crepBody212_62 : CrepProg (BitVec 64) :=
.seq crepBody212_61 crepBody212_5

def crepBody212_63 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_encode_bytes"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 224#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody212_64 : CrepProg (BitVec 64) :=
.seq crepBody212_62 crepBody212_63

def crepBody212_65 : CrepProg (BitVec 64) :=
.seq crepBody212_64 crepBody212_5

def crepBody212_66 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_encode_bytes"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 232#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody212_67 : CrepProg (BitVec 64) :=
.seq crepBody212_66 crepBody212_5

def crepBody212_68 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "rlp_encode_word"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 240#64])]

def crepBody212_69 : CrepProg (BitVec 64) :=
.seq crepBody212_67 crepBody212_68

def crepBody212_70 : CrepProg (BitVec 64) :=
.seq crepBody212_69 crepBody212_5

def crepBody212_71 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody212_70 crepBody212_3

def crepBody212_72 : CrepProg (BitVec 64) :=
.seq crepBody212_65 crepBody212_71

def crepBody212_73 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "rlp_list_header_len" [Flapjack.CrepExp.var 4]

def crepBody212_74 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "rlp_encode_list_header" [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 4]

def crepBody212_75 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody212_74

def crepBody212_76 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]]

def crepBody212_77 : CrepProg (BitVec 64) :=
.seq crepBody212_75 crepBody212_76

def crepBody212_78 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.sub
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 9#64], Flapjack.CrepExp.var 5]) crepBody212_77

def crepBody212_79 : CrepProg (BitVec 64) :=
.seq crepBody212_73 crepBody212_78

def crepBody212_80 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody212_79

def crepBody212_81 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.sub
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 9#64]]) crepBody212_80

def crepBody212_82 : CrepProg (BitVec 64) :=
.seq crepBody212_72 crepBody212_81

def crepBody212_83 : CrepProg (BitVec 64) :=
.seq crepBody212_1 crepBody212_82

def crepBody212_84 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody212_83

def crepBody212_85 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 9#64]) crepBody212_84

def crepBody212_86 : CrepProg (BitVec 64) :=
.seq crepBody212_0 crepBody212_85

def crepBody212_87 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody212_86

def data212 : CrepProg (BitVec 64) := crepBody212_87
def output212 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [101#8, 110#8, 99#8, 111#8, 100#8, 101#8, 95#8, 104#8, 101#8, 97#8, 100#8, 101#8, 114#8], [0], crepProgToHOL data212)
end InitECandidate.Proofs.FrontendStages.Crep
