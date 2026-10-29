import InitECandidate.Proofs.FrontendStages.Crep.Translate586
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody602_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19, 20, 21, 22], none)) "fq_mul"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14]

def crepBody602_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23, 24, 25, 26], none)) "fq_mul"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10,
    Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18]

def crepBody602_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27, 28, 29, 30], none)) "fq_mul"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18]

def crepBody602_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([31, 32, 33, 34], none)) "fq_mul"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10,
    Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14]

def crepBody602_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([35, 36, 37, 38], none)) "fq_sub"
  [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22,
    Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26]

def crepBody602_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([39, 40, 41, 42], none)) "fq_add"
  [Flapjack.CrepExp.var 27, Flapjack.CrepExp.var 28, Flapjack.CrepExp.var 29, Flapjack.CrepExp.var 30,
    Flapjack.CrepExp.var 31, Flapjack.CrepExp.var 32, Flapjack.CrepExp.var 33, Flapjack.CrepExp.var 34]

def crepBody602_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 43) (Flapjack.CrepExp.var 44)

def crepBody602_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 43, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 45)

def crepBody602_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 43, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 46)

def crepBody602_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 43, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 47)

def crepBody602_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody602_11 : CrepProg (BitVec 64) :=
.seq crepBody602_9 crepBody602_10

def crepBody602_12 : CrepProg (BitVec 64) :=
.seq crepBody602_8 crepBody602_11

def crepBody602_13 : CrepProg (BitVec 64) :=
.seq crepBody602_7 crepBody602_12

def crepBody602_14 : CrepProg (BitVec 64) :=
.seq crepBody602_6 crepBody602_13

def crepBody602_15 : CrepProg (BitVec 64) :=
.dec 47 (Flapjack.CrepExp.var 38) crepBody602_14

def crepBody602_16 : CrepProg (BitVec 64) :=
.dec 46 (Flapjack.CrepExp.var 37) crepBody602_15

def crepBody602_17 : CrepProg (BitVec 64) :=
.dec 45 (Flapjack.CrepExp.var 36) crepBody602_16

def crepBody602_18 : CrepProg (BitVec 64) :=
.dec 44 (Flapjack.CrepExp.var 35) crepBody602_17

def crepBody602_19 : CrepProg (BitVec 64) :=
.dec 43 (Flapjack.CrepExp.var 0) crepBody602_18

def crepBody602_20 : CrepProg (BitVec 64) :=
.dec 47 (Flapjack.CrepExp.var 42) crepBody602_14

def crepBody602_21 : CrepProg (BitVec 64) :=
.dec 46 (Flapjack.CrepExp.var 41) crepBody602_20

def crepBody602_22 : CrepProg (BitVec 64) :=
.dec 45 (Flapjack.CrepExp.var 40) crepBody602_21

def crepBody602_23 : CrepProg (BitVec 64) :=
.dec 44 (Flapjack.CrepExp.var 39) crepBody602_22

def crepBody602_24 : CrepProg (BitVec 64) :=
.dec 43 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]) crepBody602_23

def crepBody602_25 : CrepProg (BitVec 64) :=
.seq crepBody602_19 crepBody602_24

def crepBody602_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody602_27 : CrepProg (BitVec 64) :=
.seq crepBody602_25 crepBody602_26

def crepBody602_28 : CrepProg (BitVec 64) :=
.seq crepBody602_5 crepBody602_27

def crepBody602_29 : CrepProg (BitVec 64) :=
.dec 42 (Flapjack.CrepExp.const 0#64) crepBody602_28

def crepBody602_30 : CrepProg (BitVec 64) :=
.dec 41 (Flapjack.CrepExp.const 0#64) crepBody602_29

def crepBody602_31 : CrepProg (BitVec 64) :=
.dec 40 (Flapjack.CrepExp.const 0#64) crepBody602_30

def crepBody602_32 : CrepProg (BitVec 64) :=
.dec 39 (Flapjack.CrepExp.const 0#64) crepBody602_31

def crepBody602_33 : CrepProg (BitVec 64) :=
.seq crepBody602_4 crepBody602_32

def crepBody602_34 : CrepProg (BitVec 64) :=
.dec 38 (Flapjack.CrepExp.const 0#64) crepBody602_33

def crepBody602_35 : CrepProg (BitVec 64) :=
.dec 37 (Flapjack.CrepExp.const 0#64) crepBody602_34

def crepBody602_36 : CrepProg (BitVec 64) :=
.dec 36 (Flapjack.CrepExp.const 0#64) crepBody602_35

def crepBody602_37 : CrepProg (BitVec 64) :=
.dec 35 (Flapjack.CrepExp.const 0#64) crepBody602_36

def crepBody602_38 : CrepProg (BitVec 64) :=
.seq crepBody602_3 crepBody602_37

def crepBody602_39 : CrepProg (BitVec 64) :=
.dec 34 (Flapjack.CrepExp.const 0#64) crepBody602_38

def crepBody602_40 : CrepProg (BitVec 64) :=
.dec 33 (Flapjack.CrepExp.const 0#64) crepBody602_39

def crepBody602_41 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.const 0#64) crepBody602_40

def crepBody602_42 : CrepProg (BitVec 64) :=
.dec 31 (Flapjack.CrepExp.const 0#64) crepBody602_41

def crepBody602_43 : CrepProg (BitVec 64) :=
.seq crepBody602_2 crepBody602_42

def crepBody602_44 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.const 0#64) crepBody602_43

def crepBody602_45 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.const 0#64) crepBody602_44

def crepBody602_46 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.const 0#64) crepBody602_45

def crepBody602_47 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody602_46

def crepBody602_48 : CrepProg (BitVec 64) :=
.seq crepBody602_1 crepBody602_47

def crepBody602_49 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody602_48

def crepBody602_50 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody602_49

def crepBody602_51 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody602_50

def crepBody602_52 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody602_51

def crepBody602_53 : CrepProg (BitVec 64) :=
.seq crepBody602_0 crepBody602_52

def crepBody602_54 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody602_53

def crepBody602_55 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody602_54

def crepBody602_56 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody602_55

def crepBody602_57 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody602_56

def crepBody602_58 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 24#64])) crepBody602_57

def crepBody602_59 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 16#64])) crepBody602_58

def crepBody602_60 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 8#64])) crepBody602_59

def crepBody602_61 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 32#64])) crepBody602_60

def crepBody602_62 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 24#64])) crepBody602_61

def crepBody602_63 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 16#64])) crepBody602_62

def crepBody602_64 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64])) crepBody602_63

def crepBody602_65 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 2)) crepBody602_64

def crepBody602_66 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 24#64])) crepBody602_65

def crepBody602_67 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 16#64])) crepBody602_66

def crepBody602_68 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 8#64])) crepBody602_67

def crepBody602_69 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64])) crepBody602_68

def crepBody602_70 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 24#64])) crepBody602_69

def crepBody602_71 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64])) crepBody602_70

def crepBody602_72 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64])) crepBody602_71

def crepBody602_73 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 1)) crepBody602_72

def data602 : CrepProg (BitVec 64) := crepBody602_73
def output602 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 113#8, 50#8, 95#8, 109#8, 117#8, 108#8], [0, 1, 2], crepProgToHOL data602)
end InitECandidate.Proofs.FrontendStages.Crep
