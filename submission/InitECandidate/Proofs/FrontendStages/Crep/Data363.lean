import InitECandidate.Proofs.FrontendStages.Crep.Translate347
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody363_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "get_account" [Flapjack.CrepExp.var 0]

def crepBody363_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "u256_lt"
  [Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 24#64]),
    Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody363_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 8)

def crepBody363_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody363_4 : CrepProg (BitVec 64) :=
.seq crepBody363_2 crepBody363_3

def crepBody363_5 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 4#64) crepBody363_4

def crepBody363_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 7#64

def crepBody363_7 : CrepProg (BitVec 64) :=
.seq crepBody363_5 crepBody363_6

def crepBody363_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 0#64)) crepBody363_7 crepBody363_3

def crepBody363_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "acct_copy" [Flapjack.CrepExp.var 6]

def crepBody363_10 : CrepProg (BitVec 64) :=
.seq crepBody363_8 crepBody363_9

def crepBody363_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8, 9, 10, 11], none)) "u256_sub"
  [Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 24#64]),
    Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody363_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.var 13)

def crepBody363_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 14)

def crepBody363_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 15)

def crepBody363_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 16)

def crepBody363_16 : CrepProg (BitVec 64) :=
.seq crepBody363_15 crepBody363_3

def crepBody363_17 : CrepProg (BitVec 64) :=
.seq crepBody363_14 crepBody363_16

def crepBody363_18 : CrepProg (BitVec 64) :=
.seq crepBody363_13 crepBody363_17

def crepBody363_19 : CrepProg (BitVec 64) :=
.seq crepBody363_12 crepBody363_18

def crepBody363_20 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.var 11) crepBody363_19

def crepBody363_21 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 10) crepBody363_20

def crepBody363_22 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 9) crepBody363_21

def crepBody363_23 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 8) crepBody363_22

def crepBody363_24 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 8#64]) crepBody363_23

def crepBody363_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "modify_state_commit" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 6]

def crepBody363_26 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody363_25

def crepBody363_27 : CrepProg (BitVec 64) :=
.seq crepBody363_24 crepBody363_26

def crepBody363_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "get_account" [Flapjack.CrepExp.var 1]

def crepBody363_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "acct_copy" [Flapjack.CrepExp.var 12]

def crepBody363_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8, 9, 10, 11], none)) "u256_add"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 24#64]),
    Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody363_31 : CrepProg (BitVec 64) :=
.seq crepBody363_29 crepBody363_30

def crepBody363_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.var 14)

def crepBody363_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 15)

def crepBody363_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 16)

def crepBody363_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 17)

def crepBody363_36 : CrepProg (BitVec 64) :=
.seq crepBody363_35 crepBody363_3

def crepBody363_37 : CrepProg (BitVec 64) :=
.seq crepBody363_34 crepBody363_36

def crepBody363_38 : CrepProg (BitVec 64) :=
.seq crepBody363_33 crepBody363_37

def crepBody363_39 : CrepProg (BitVec 64) :=
.seq crepBody363_32 crepBody363_38

def crepBody363_40 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.var 11) crepBody363_39

def crepBody363_41 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.var 10) crepBody363_40

def crepBody363_42 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 9) crepBody363_41

def crepBody363_43 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 8) crepBody363_42

def crepBody363_44 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 8#64]) crepBody363_43

def crepBody363_45 : CrepProg (BitVec 64) :=
.seq crepBody363_31 crepBody363_44

def crepBody363_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "modify_state_commit" [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 12]

def crepBody363_47 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody363_46

def crepBody363_48 : CrepProg (BitVec 64) :=
.seq crepBody363_45 crepBody363_47

def crepBody363_49 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody363_50 : CrepProg (BitVec 64) :=
.seq crepBody363_48 crepBody363_49

def crepBody363_51 : CrepProg (BitVec 64) :=
.seq crepBody363_28 crepBody363_50

def crepBody363_52 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody363_51

def crepBody363_53 : CrepProg (BitVec 64) :=
.seq crepBody363_27 crepBody363_52

def crepBody363_54 : CrepProg (BitVec 64) :=
.seq crepBody363_11 crepBody363_53

def crepBody363_55 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody363_54

def crepBody363_56 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody363_55

def crepBody363_57 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody363_56

def crepBody363_58 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody363_57

def crepBody363_59 : CrepProg (BitVec 64) :=
.seq crepBody363_10 crepBody363_58

def crepBody363_60 : CrepProg (BitVec 64) :=
.seq crepBody363_1 crepBody363_59

def crepBody363_61 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody363_60

def crepBody363_62 : CrepProg (BitVec 64) :=
.seq crepBody363_0 crepBody363_61

def crepBody363_63 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody363_62

def data363 : CrepProg (BitVec 64) := crepBody363_63
def output363 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 111#8, 118#8, 101#8, 95#8, 101#8, 116#8, 104#8, 101#8, 114#8], [0, 1, 2, 3, 4, 5], crepProgToHOL data363)
end InitECandidate.Proofs.FrontendStages.Crep
