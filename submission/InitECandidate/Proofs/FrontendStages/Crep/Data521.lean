import InitECandidate.Proofs.FrontendStages.Crep.Translate505
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody521_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "u256_is_zero"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody521_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody521_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody521_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 0#64)) crepBody521_1 crepBody521_2

def crepBody521_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "alloc" [Flapjack.CrepExp.const 40#64]

def crepBody521_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.var 9)

def crepBody521_6 : CrepProg (BitVec 64) :=
.seq crepBody521_5 crepBody521_2

def crepBody521_7 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 304#64])) crepBody521_6

def crepBody521_8 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 0#64]) crepBody521_7

def crepBody521_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "alloc" [Flapjack.CrepExp.const 96#64]

def crepBody521_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "memcpy"
  [Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 296#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody521_11 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody521_10

def crepBody521_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "memzero"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 12#64]

def crepBody521_13 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody521_12

def crepBody521_14 : CrepProg (BitVec 64) :=
.seq crepBody521_11 crepBody521_13

def crepBody521_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 44#64],
    Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 20#64]

def crepBody521_16 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody521_15

def crepBody521_17 : CrepProg (BitVec 64) :=
.seq crepBody521_14 crepBody521_16

def crepBody521_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "memzero"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 64#64],
    Flapjack.CrepExp.const 12#64]

def crepBody521_19 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody521_18

def crepBody521_20 : CrepProg (BitVec 64) :=
.seq crepBody521_17 crepBody521_19

def crepBody521_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 76#64],
    Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 20#64]

def crepBody521_22 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody521_21

def crepBody521_23 : CrepProg (BitVec 64) :=
.seq crepBody521_20 crepBody521_22

def crepBody521_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.var 10)

def crepBody521_25 : CrepProg (BitVec 64) :=
.seq crepBody521_24 crepBody521_2

def crepBody521_26 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 8) crepBody521_25

def crepBody521_27 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64]) crepBody521_26

def crepBody521_28 : CrepProg (BitVec 64) :=
.seq crepBody521_23 crepBody521_27

def crepBody521_29 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 3#64) crepBody521_25

def crepBody521_30 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 16#64]) crepBody521_29

def crepBody521_31 : CrepProg (BitVec 64) :=
.seq crepBody521_28 crepBody521_30

def crepBody521_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody521_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "u256_to_be32"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.var 9]

def crepBody521_34 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody521_33

def crepBody521_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.var 11)

def crepBody521_36 : CrepProg (BitVec 64) :=
.seq crepBody521_35 crepBody521_2

def crepBody521_37 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 9) crepBody521_36

def crepBody521_38 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 24#64]) crepBody521_37

def crepBody521_39 : CrepProg (BitVec 64) :=
.seq crepBody521_34 crepBody521_38

def crepBody521_40 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 32#64) crepBody521_36

def crepBody521_41 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 32#64]) crepBody521_40

def crepBody521_42 : CrepProg (BitVec 64) :=
.seq crepBody521_39 crepBody521_41

def crepBody521_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "log_append"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.var 7]

def crepBody521_44 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody521_43

def crepBody521_45 : CrepProg (BitVec 64) :=
.seq crepBody521_42 crepBody521_44

def crepBody521_46 : CrepProg (BitVec 64) :=
.seq crepBody521_45 crepBody521_1

def crepBody521_47 : CrepProg (BitVec 64) :=
.seq crepBody521_32 crepBody521_46

def crepBody521_48 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody521_47

def crepBody521_49 : CrepProg (BitVec 64) :=
.seq crepBody521_31 crepBody521_48

def crepBody521_50 : CrepProg (BitVec 64) :=
.seq crepBody521_9 crepBody521_49

def crepBody521_51 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody521_50

def crepBody521_52 : CrepProg (BitVec 64) :=
.seq crepBody521_8 crepBody521_51

def crepBody521_53 : CrepProg (BitVec 64) :=
.seq crepBody521_4 crepBody521_52

def crepBody521_54 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody521_53

def crepBody521_55 : CrepProg (BitVec 64) :=
.seq crepBody521_3 crepBody521_54

def crepBody521_56 : CrepProg (BitVec 64) :=
.seq crepBody521_0 crepBody521_55

def crepBody521_57 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody521_56

def data521 : CrepProg (BitVec 64) := crepBody521_57
def output521 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [101#8, 109#8, 105#8, 116#8, 95#8, 116#8, 114#8, 97#8, 110#8, 115#8, 102#8, 101#8, 114#8, 95#8, 108#8, 111#8, 103#8], [0, 1, 2, 3, 4, 5], crepProgToHOL data521)
end InitECandidate.Proofs.FrontendStages.Crep
