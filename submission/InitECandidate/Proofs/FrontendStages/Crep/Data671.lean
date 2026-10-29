import InitECandidate.Proofs.FrontendStages.Crep.Translate655
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody671_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27, 28, 29, 30, 31, 32], none)) "bls_fp_sub"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16,
    Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]

def crepBody671_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([33, 34, 35, 36, 37, 38], none)) "bls_fp_sub"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12,
    Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22,
    Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26]

def crepBody671_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 39) (Flapjack.CrepExp.var 40)

def crepBody671_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 39, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 41)

def crepBody671_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 39, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 42)

def crepBody671_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 39, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 43)

def crepBody671_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 39, Flapjack.CrepExp.const 32#64])
  (Flapjack.CrepExp.var 44)

def crepBody671_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 39, Flapjack.CrepExp.const 40#64])
  (Flapjack.CrepExp.var 45)

def crepBody671_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody671_9 : CrepProg (BitVec 64) :=
.seq crepBody671_7 crepBody671_8

def crepBody671_10 : CrepProg (BitVec 64) :=
.seq crepBody671_6 crepBody671_9

def crepBody671_11 : CrepProg (BitVec 64) :=
.seq crepBody671_5 crepBody671_10

def crepBody671_12 : CrepProg (BitVec 64) :=
.seq crepBody671_4 crepBody671_11

def crepBody671_13 : CrepProg (BitVec 64) :=
.seq crepBody671_3 crepBody671_12

def crepBody671_14 : CrepProg (BitVec 64) :=
.seq crepBody671_2 crepBody671_13

def crepBody671_15 : CrepProg (BitVec 64) :=
.dec 45 (Flapjack.CrepExp.var 32) crepBody671_14

def crepBody671_16 : CrepProg (BitVec 64) :=
.dec 44 (Flapjack.CrepExp.var 31) crepBody671_15

def crepBody671_17 : CrepProg (BitVec 64) :=
.dec 43 (Flapjack.CrepExp.var 30) crepBody671_16

def crepBody671_18 : CrepProg (BitVec 64) :=
.dec 42 (Flapjack.CrepExp.var 29) crepBody671_17

def crepBody671_19 : CrepProg (BitVec 64) :=
.dec 41 (Flapjack.CrepExp.var 28) crepBody671_18

def crepBody671_20 : CrepProg (BitVec 64) :=
.dec 40 (Flapjack.CrepExp.var 27) crepBody671_19

def crepBody671_21 : CrepProg (BitVec 64) :=
.dec 39 (Flapjack.CrepExp.var 0) crepBody671_20

def crepBody671_22 : CrepProg (BitVec 64) :=
.dec 45 (Flapjack.CrepExp.var 38) crepBody671_14

def crepBody671_23 : CrepProg (BitVec 64) :=
.dec 44 (Flapjack.CrepExp.var 37) crepBody671_22

def crepBody671_24 : CrepProg (BitVec 64) :=
.dec 43 (Flapjack.CrepExp.var 36) crepBody671_23

def crepBody671_25 : CrepProg (BitVec 64) :=
.dec 42 (Flapjack.CrepExp.var 35) crepBody671_24

def crepBody671_26 : CrepProg (BitVec 64) :=
.dec 41 (Flapjack.CrepExp.var 34) crepBody671_25

def crepBody671_27 : CrepProg (BitVec 64) :=
.dec 40 (Flapjack.CrepExp.var 33) crepBody671_26

def crepBody671_28 : CrepProg (BitVec 64) :=
.dec 39 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64]) crepBody671_27

def crepBody671_29 : CrepProg (BitVec 64) :=
.seq crepBody671_21 crepBody671_28

def crepBody671_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody671_31 : CrepProg (BitVec 64) :=
.seq crepBody671_29 crepBody671_30

def crepBody671_32 : CrepProg (BitVec 64) :=
.seq crepBody671_1 crepBody671_31

def crepBody671_33 : CrepProg (BitVec 64) :=
.dec 38 (Flapjack.CrepExp.const 0#64) crepBody671_32

def crepBody671_34 : CrepProg (BitVec 64) :=
.dec 37 (Flapjack.CrepExp.const 0#64) crepBody671_33

def crepBody671_35 : CrepProg (BitVec 64) :=
.dec 36 (Flapjack.CrepExp.const 0#64) crepBody671_34

def crepBody671_36 : CrepProg (BitVec 64) :=
.dec 35 (Flapjack.CrepExp.const 0#64) crepBody671_35

def crepBody671_37 : CrepProg (BitVec 64) :=
.dec 34 (Flapjack.CrepExp.const 0#64) crepBody671_36

def crepBody671_38 : CrepProg (BitVec 64) :=
.dec 33 (Flapjack.CrepExp.const 0#64) crepBody671_37

def crepBody671_39 : CrepProg (BitVec 64) :=
.seq crepBody671_0 crepBody671_38

def crepBody671_40 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.const 0#64) crepBody671_39

def crepBody671_41 : CrepProg (BitVec 64) :=
.dec 31 (Flapjack.CrepExp.const 0#64) crepBody671_40

def crepBody671_42 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.const 0#64) crepBody671_41

def crepBody671_43 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.const 0#64) crepBody671_42

def crepBody671_44 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.const 0#64) crepBody671_43

def crepBody671_45 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody671_44

def crepBody671_46 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 40#64])) crepBody671_45

def crepBody671_47 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 32#64])) crepBody671_46

def crepBody671_48 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 24#64])) crepBody671_47

def crepBody671_49 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 16#64])) crepBody671_48

def crepBody671_50 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 8#64])) crepBody671_49

def crepBody671_51 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 48#64])) crepBody671_50

def crepBody671_52 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 40#64])) crepBody671_51

def crepBody671_53 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 32#64])) crepBody671_52

def crepBody671_54 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 24#64])) crepBody671_53

def crepBody671_55 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 16#64])) crepBody671_54

def crepBody671_56 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64])) crepBody671_55

def crepBody671_57 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 2)) crepBody671_56

def crepBody671_58 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 40#64])) crepBody671_57

def crepBody671_59 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 32#64])) crepBody671_58

def crepBody671_60 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 24#64])) crepBody671_59

def crepBody671_61 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 16#64])) crepBody671_60

def crepBody671_62 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 8#64])) crepBody671_61

def crepBody671_63 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64])) crepBody671_62

def crepBody671_64 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 40#64])) crepBody671_63

def crepBody671_65 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64])) crepBody671_64

def crepBody671_66 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 24#64])) crepBody671_65

def crepBody671_67 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64])) crepBody671_66

def crepBody671_68 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64])) crepBody671_67

def crepBody671_69 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 1)) crepBody671_68

def data671 : CrepProg (BitVec 64) := crepBody671_69
def output671 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 50#8, 95#8, 115#8, 117#8, 98#8], [0, 1, 2], crepProgToHOL data671)
end InitECandidate.Proofs.FrontendStages.Crep
