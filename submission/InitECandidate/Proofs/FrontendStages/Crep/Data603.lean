import InitECandidate.Proofs.FrontendStages.Crep.Translate587
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody603_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 1 (Flapjack.CrepExp.var 2)

def crepBody603_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody603_2 : CrepProg (BitVec 64) :=
.seq crepBody603_0 crepBody603_1

def crepBody603_3 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64]) crepBody603_2

def crepBody603_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6, 7, 8, 9], none)) "fq_mul_small"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.const 82#64]

def crepBody603_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10, 11, 12, 13], none)) "fq_mul_small"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.const 18#64]

def crepBody603_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14, 15, 16, 17], none)) "fq_sub"
  [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17,
    Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9]

def crepBody603_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.var 19)

def crepBody603_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 20)

def crepBody603_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 21)

def crepBody603_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 22)

def crepBody603_11 : CrepProg (BitVec 64) :=
.seq crepBody603_10 crepBody603_1

def crepBody603_12 : CrepProg (BitVec 64) :=
.seq crepBody603_9 crepBody603_11

def crepBody603_13 : CrepProg (BitVec 64) :=
.seq crepBody603_8 crepBody603_12

def crepBody603_14 : CrepProg (BitVec 64) :=
.seq crepBody603_7 crepBody603_13

def crepBody603_15 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.var 17) crepBody603_14

def crepBody603_16 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.var 16) crepBody603_15

def crepBody603_17 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 15) crepBody603_16

def crepBody603_18 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.var 14) crepBody603_17

def crepBody603_19 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]]) crepBody603_18

def crepBody603_20 : CrepProg (BitVec 64) :=
.seq crepBody603_6 crepBody603_19

def crepBody603_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18, 19, 20, 21], none)) "fq_add"
  [Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21,
    Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody603_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.var 23)

def crepBody603_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 22, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 24)

def crepBody603_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 22, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 25)

def crepBody603_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 22, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 26)

def crepBody603_26 : CrepProg (BitVec 64) :=
.seq crepBody603_25 crepBody603_1

def crepBody603_27 : CrepProg (BitVec 64) :=
.seq crepBody603_24 crepBody603_26

def crepBody603_28 : CrepProg (BitVec 64) :=
.seq crepBody603_23 crepBody603_27

def crepBody603_29 : CrepProg (BitVec 64) :=
.seq crepBody603_22 crepBody603_28

def crepBody603_30 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.var 21) crepBody603_29

def crepBody603_31 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.var 20) crepBody603_30

def crepBody603_32 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.var 19) crepBody603_31

def crepBody603_33 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.var 18) crepBody603_32

def crepBody603_34 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 6#64],
        Flapjack.CrepExp.const 32#64]]) crepBody603_33

def crepBody603_35 : CrepProg (BitVec 64) :=
.seq crepBody603_21 crepBody603_34

def crepBody603_36 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 6#64],
              Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 24#64])) crepBody603_35

def crepBody603_37 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 6#64],
              Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 16#64])) crepBody603_36

def crepBody603_38 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 6#64],
              Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 8#64])) crepBody603_37

def crepBody603_39 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 0,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 6#64],
          Flapjack.CrepExp.const 32#64]])) crepBody603_38

def crepBody603_40 : CrepProg (BitVec 64) :=
.seq crepBody603_20 crepBody603_39

def crepBody603_41 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 24#64])) crepBody603_40

def crepBody603_42 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 16#64])) crepBody603_41

def crepBody603_43 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 8#64])) crepBody603_42

def crepBody603_44 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 0,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]])) crepBody603_43

def crepBody603_45 : CrepProg (BitVec 64) :=
.seq crepBody603_5 crepBody603_44

def crepBody603_46 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody603_45

def crepBody603_47 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody603_46

def crepBody603_48 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody603_47

def crepBody603_49 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody603_48

def crepBody603_50 : CrepProg (BitVec 64) :=
.seq crepBody603_4 crepBody603_49

def crepBody603_51 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody603_50

def crepBody603_52 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody603_51

def crepBody603_53 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody603_52

def crepBody603_54 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody603_53

def crepBody603_55 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 12#64],
              Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 24#64])) crepBody603_54

def crepBody603_56 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 12#64],
              Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 16#64])) crepBody603_55

def crepBody603_57 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 12#64],
              Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 8#64])) crepBody603_56

def crepBody603_58 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 0,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 12#64],
          Flapjack.CrepExp.const 32#64]])) crepBody603_57

def crepBody603_59 : CrepProg (BitVec 64) :=
.seq crepBody603_3 crepBody603_58

def crepBody603_60 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 1)) crepBody603_59

def crepBody603_61 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody603_62 : CrepProg (BitVec 64) :=
.seq crepBody603_60 crepBody603_61

def crepBody603_63 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 11#64) crepBody603_62

def data603 : CrepProg (BitVec 64) := crepBody603_63
def output603 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 113#8, 49#8, 50#8, 95#8, 114#8, 101#8, 100#8, 117#8, 99#8, 101#8], [0], crepProgToHOL data603)
end InitECandidate.Proofs.FrontendStages.Crep
