import InitECandidate.Proofs.FrontendStages.Crep.Translate576
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody592_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "charge_gas" [Flapjack.CrepExp.const 6900#64]

def crepBody592_1 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody592_0

def crepBody592_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "alloc" [Flapjack.CrepExp.const 8#64]

def crepBody592_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 4)

def crepBody592_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody592_5 : CrepProg (BitVec 64) :=
.seq crepBody592_3 crepBody592_4

def crepBody592_6 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.var 2) crepBody592_5

def crepBody592_7 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 120#64]) crepBody592_6

def crepBody592_8 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody592_5

def crepBody592_9 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 128#64]) crepBody592_8

def crepBody592_10 : CrepProg (BitVec 64) :=
.seq crepBody592_7 crepBody592_9

def crepBody592_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody592_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 160#64)) crepBody592_11 crepBody592_4

def crepBody592_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "u256_from_be"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 32#64]

def crepBody592_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9, 10, 11, 12], none)) "u256_from_be"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 64#64],
    Flapjack.CrepExp.const 32#64]

def crepBody592_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13, 14, 15, 16], none)) "u256_from_be"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.const 32#64]

def crepBody592_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17, 18, 19, 20], none)) "u256_from_be"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 128#64],
    Flapjack.CrepExp.const 32#64]

def crepBody592_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "p256_verify"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15,
    Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19,
    Flapjack.CrepExp.var 20]

def crepBody592_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody592_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23], none)) "memzero" [Flapjack.CrepExp.var 22, Flapjack.CrepExp.const 32#64]

def crepBody592_20 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody592_19

def crepBody592_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 22, Flapjack.CrepExp.const 31#64])
  (Flapjack.CrepExp.const 1#64)

def crepBody592_22 : CrepProg (BitVec 64) :=
.seq crepBody592_20 crepBody592_21

def crepBody592_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.var 24)

def crepBody592_24 : CrepProg (BitVec 64) :=
.seq crepBody592_23 crepBody592_4

def crepBody592_25 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.var 22) crepBody592_24

def crepBody592_26 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 120#64]) crepBody592_25

def crepBody592_27 : CrepProg (BitVec 64) :=
.seq crepBody592_22 crepBody592_26

def crepBody592_28 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 32#64) crepBody592_24

def crepBody592_29 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 128#64]) crepBody592_28

def crepBody592_30 : CrepProg (BitVec 64) :=
.seq crepBody592_27 crepBody592_29

def crepBody592_31 : CrepProg (BitVec 64) :=
.seq crepBody592_18 crepBody592_30

def crepBody592_32 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody592_31

def crepBody592_33 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 1#64)) crepBody592_32 crepBody592_4

def crepBody592_34 : CrepProg (BitVec 64) :=
.seq crepBody592_33 crepBody592_11

def crepBody592_35 : CrepProg (BitVec 64) :=
.seq crepBody592_17 crepBody592_34

def crepBody592_36 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody592_35

def crepBody592_37 : CrepProg (BitVec 64) :=
.seq crepBody592_16 crepBody592_36

def crepBody592_38 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody592_37

def crepBody592_39 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody592_38

def crepBody592_40 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody592_39

def crepBody592_41 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody592_40

def crepBody592_42 : CrepProg (BitVec 64) :=
.seq crepBody592_15 crepBody592_41

def crepBody592_43 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody592_42

def crepBody592_44 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody592_43

def crepBody592_45 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody592_44

def crepBody592_46 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody592_45

def crepBody592_47 : CrepProg (BitVec 64) :=
.seq crepBody592_14 crepBody592_46

def crepBody592_48 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody592_47

def crepBody592_49 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody592_48

def crepBody592_50 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody592_49

def crepBody592_51 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody592_50

def crepBody592_52 : CrepProg (BitVec 64) :=
.seq crepBody592_13 crepBody592_51

def crepBody592_53 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody592_52

def crepBody592_54 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody592_53

def crepBody592_55 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody592_54

def crepBody592_56 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody592_55

def crepBody592_57 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 88#64])) crepBody592_56

def crepBody592_58 : CrepProg (BitVec 64) :=
.seq crepBody592_12 crepBody592_57

def crepBody592_59 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64])) crepBody592_58

def crepBody592_60 : CrepProg (BitVec 64) :=
.seq crepBody592_10 crepBody592_59

def crepBody592_61 : CrepProg (BitVec 64) :=
.seq crepBody592_2 crepBody592_60

def crepBody592_62 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody592_61

def crepBody592_63 : CrepProg (BitVec 64) :=
.seq crepBody592_1 crepBody592_62

def crepBody592_64 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody592_63

def data592 : CrepProg (BitVec 64) := crepBody592_64
def output592 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [112#8, 114#8, 101#8, 95#8, 112#8, 50#8, 53#8, 54#8, 118#8, 101#8, 114#8, 105#8, 102#8, 121#8], [], crepProgToHOL data592)
end InitECandidate.Proofs.FrontendStages.Crep
