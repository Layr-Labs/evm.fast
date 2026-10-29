import InitECandidate.Proofs.FrontendStages.Crep.Translate654
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody670_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27, 28, 29, 30, 31, 32], none)) "bls_fp_add"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16,
    Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]

def crepBody670_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([33, 34, 35, 36, 37, 38], none)) "bls_fp_add"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12,
    Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22,
    Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26]

def crepBody670_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 39) (Flapjack.CrepExp.var 40)

def crepBody670_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 39, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 41)

def crepBody670_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 39, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 42)

def crepBody670_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 39, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 43)

def crepBody670_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 39, Flapjack.CrepExp.const 32#64])
  (Flapjack.CrepExp.var 44)

def crepBody670_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 39, Flapjack.CrepExp.const 40#64])
  (Flapjack.CrepExp.var 45)

def crepBody670_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody670_9 : CrepProg (BitVec 64) :=
.seq crepBody670_7 crepBody670_8

def crepBody670_10 : CrepProg (BitVec 64) :=
.seq crepBody670_6 crepBody670_9

def crepBody670_11 : CrepProg (BitVec 64) :=
.seq crepBody670_5 crepBody670_10

def crepBody670_12 : CrepProg (BitVec 64) :=
.seq crepBody670_4 crepBody670_11

def crepBody670_13 : CrepProg (BitVec 64) :=
.seq crepBody670_3 crepBody670_12

def crepBody670_14 : CrepProg (BitVec 64) :=
.seq crepBody670_2 crepBody670_13

def crepBody670_15 : CrepProg (BitVec 64) :=
.dec 45 (Flapjack.CrepExp.var 32) crepBody670_14

def crepBody670_16 : CrepProg (BitVec 64) :=
.dec 44 (Flapjack.CrepExp.var 31) crepBody670_15

def crepBody670_17 : CrepProg (BitVec 64) :=
.dec 43 (Flapjack.CrepExp.var 30) crepBody670_16

def crepBody670_18 : CrepProg (BitVec 64) :=
.dec 42 (Flapjack.CrepExp.var 29) crepBody670_17

def crepBody670_19 : CrepProg (BitVec 64) :=
.dec 41 (Flapjack.CrepExp.var 28) crepBody670_18

def crepBody670_20 : CrepProg (BitVec 64) :=
.dec 40 (Flapjack.CrepExp.var 27) crepBody670_19

def crepBody670_21 : CrepProg (BitVec 64) :=
.dec 39 (Flapjack.CrepExp.var 0) crepBody670_20

def crepBody670_22 : CrepProg (BitVec 64) :=
.dec 45 (Flapjack.CrepExp.var 38) crepBody670_14

def crepBody670_23 : CrepProg (BitVec 64) :=
.dec 44 (Flapjack.CrepExp.var 37) crepBody670_22

def crepBody670_24 : CrepProg (BitVec 64) :=
.dec 43 (Flapjack.CrepExp.var 36) crepBody670_23

def crepBody670_25 : CrepProg (BitVec 64) :=
.dec 42 (Flapjack.CrepExp.var 35) crepBody670_24

def crepBody670_26 : CrepProg (BitVec 64) :=
.dec 41 (Flapjack.CrepExp.var 34) crepBody670_25

def crepBody670_27 : CrepProg (BitVec 64) :=
.dec 40 (Flapjack.CrepExp.var 33) crepBody670_26

def crepBody670_28 : CrepProg (BitVec 64) :=
.dec 39 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64]) crepBody670_27

def crepBody670_29 : CrepProg (BitVec 64) :=
.seq crepBody670_21 crepBody670_28

def crepBody670_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody670_31 : CrepProg (BitVec 64) :=
.seq crepBody670_29 crepBody670_30

def crepBody670_32 : CrepProg (BitVec 64) :=
.seq crepBody670_1 crepBody670_31

def crepBody670_33 : CrepProg (BitVec 64) :=
.dec 38 (Flapjack.CrepExp.const 0#64) crepBody670_32

def crepBody670_34 : CrepProg (BitVec 64) :=
.dec 37 (Flapjack.CrepExp.const 0#64) crepBody670_33

def crepBody670_35 : CrepProg (BitVec 64) :=
.dec 36 (Flapjack.CrepExp.const 0#64) crepBody670_34

def crepBody670_36 : CrepProg (BitVec 64) :=
.dec 35 (Flapjack.CrepExp.const 0#64) crepBody670_35

def crepBody670_37 : CrepProg (BitVec 64) :=
.dec 34 (Flapjack.CrepExp.const 0#64) crepBody670_36

def crepBody670_38 : CrepProg (BitVec 64) :=
.dec 33 (Flapjack.CrepExp.const 0#64) crepBody670_37

def crepBody670_39 : CrepProg (BitVec 64) :=
.seq crepBody670_0 crepBody670_38

def crepBody670_40 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.const 0#64) crepBody670_39

def crepBody670_41 : CrepProg (BitVec 64) :=
.dec 31 (Flapjack.CrepExp.const 0#64) crepBody670_40

def crepBody670_42 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.const 0#64) crepBody670_41

def crepBody670_43 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.const 0#64) crepBody670_42

def crepBody670_44 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.const 0#64) crepBody670_43

def crepBody670_45 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody670_44

def crepBody670_46 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 40#64])) crepBody670_45

def crepBody670_47 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 32#64])) crepBody670_46

def crepBody670_48 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 24#64])) crepBody670_47

def crepBody670_49 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 16#64])) crepBody670_48

def crepBody670_50 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 8#64])) crepBody670_49

def crepBody670_51 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 48#64])) crepBody670_50

def crepBody670_52 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 40#64])) crepBody670_51

def crepBody670_53 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 32#64])) crepBody670_52

def crepBody670_54 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 24#64])) crepBody670_53

def crepBody670_55 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 16#64])) crepBody670_54

def crepBody670_56 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64])) crepBody670_55

def crepBody670_57 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 2)) crepBody670_56

def crepBody670_58 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 40#64])) crepBody670_57

def crepBody670_59 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 32#64])) crepBody670_58

def crepBody670_60 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 24#64])) crepBody670_59

def crepBody670_61 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 16#64])) crepBody670_60

def crepBody670_62 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 8#64])) crepBody670_61

def crepBody670_63 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64])) crepBody670_62

def crepBody670_64 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 40#64])) crepBody670_63

def crepBody670_65 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64])) crepBody670_64

def crepBody670_66 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 24#64])) crepBody670_65

def crepBody670_67 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64])) crepBody670_66

def crepBody670_68 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64])) crepBody670_67

def crepBody670_69 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 1)) crepBody670_68

def data670 : CrepProg (BitVec 64) := crepBody670_69
def output670 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 50#8, 95#8, 97#8, 100#8, 100#8], [0, 1, 2], crepProgToHOL data670)
end InitECandidate.Proofs.FrontendStages.Crep
