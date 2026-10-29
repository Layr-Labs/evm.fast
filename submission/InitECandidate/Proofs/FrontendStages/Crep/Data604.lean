import InitECandidate.Proofs.FrontendStages.Crep.Translate588
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody604_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "heap_mark" []

def crepBody604_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 23#64, Flapjack.CrepExp.const 32#64]]

def crepBody604_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 10
  (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 11#64])

def crepBody604_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody604_4 : CrepProg (BitVec 64) :=
.seq crepBody604_2 crepBody604_3

def crepBody604_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 11#64) (Flapjack.CrepExp.var 5)) crepBody604_4 crepBody604_3

def crepBody604_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11 (Flapjack.CrepExp.const 11#64)

def crepBody604_7 : CrepProg (BitVec 64) :=
.seq crepBody604_6 crepBody604_3

def crepBody604_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 11#64) (Flapjack.CrepExp.var 11)) crepBody604_7 crepBody604_3

def crepBody604_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20, 21, 22, 23], none)) "fq_mul"
  [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15,
    Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19]

def crepBody604_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6, 7, 8, 9], none)) "fq_add"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23]

def crepBody604_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 10 (Flapjack.CrepExp.var 24)

def crepBody604_12 : CrepProg (BitVec 64) :=
.seq crepBody604_11 crepBody604_3

def crepBody604_13 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 1#64]) crepBody604_12

def crepBody604_14 : CrepProg (BitVec 64) :=
.seq crepBody604_10 crepBody604_13

def crepBody604_15 : CrepProg (BitVec 64) :=
.seq crepBody604_9 crepBody604_14

def crepBody604_16 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody604_15

def crepBody604_17 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody604_16

def crepBody604_18 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody604_17

def crepBody604_19 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody604_18

def crepBody604_20 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 10],
              Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 24#64])) crepBody604_19

def crepBody604_21 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 10],
              Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 16#64])) crepBody604_20

def crepBody604_22 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 10],
              Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 8#64])) crepBody604_21

def crepBody604_23 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 2,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
        [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 10],
          Flapjack.CrepExp.const 32#64]])) crepBody604_22

def crepBody604_24 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 24#64])) crepBody604_23

def crepBody604_25 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 16#64])) crepBody604_24

def crepBody604_26 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 8#64])) crepBody604_25

def crepBody604_27 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 1,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 32#64]])) crepBody604_26

def crepBody604_28 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.var 10)) crepBody604_27

def crepBody604_29 : CrepProg (BitVec 64) :=
.seq crepBody604_8 crepBody604_28

def crepBody604_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.var 13)

def crepBody604_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 14)

def crepBody604_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 15)

def crepBody604_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 16)

def crepBody604_34 : CrepProg (BitVec 64) :=
.seq crepBody604_33 crepBody604_3

def crepBody604_35 : CrepProg (BitVec 64) :=
.seq crepBody604_32 crepBody604_34

def crepBody604_36 : CrepProg (BitVec 64) :=
.seq crepBody604_31 crepBody604_35

def crepBody604_37 : CrepProg (BitVec 64) :=
.seq crepBody604_30 crepBody604_36

def crepBody604_38 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.var 9) crepBody604_37

def crepBody604_39 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 8) crepBody604_38

def crepBody604_40 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 7) crepBody604_39

def crepBody604_41 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 6) crepBody604_40

def crepBody604_42 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 32#64]]) crepBody604_41

def crepBody604_43 : CrepProg (BitVec 64) :=
.seq crepBody604_29 crepBody604_42

def crepBody604_44 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.var 12)

def crepBody604_45 : CrepProg (BitVec 64) :=
.seq crepBody604_44 crepBody604_3

def crepBody604_46 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64]) crepBody604_45

def crepBody604_47 : CrepProg (BitVec 64) :=
.seq crepBody604_43 crepBody604_46

def crepBody604_48 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 5) crepBody604_47

def crepBody604_49 : CrepProg (BitVec 64) :=
.seq crepBody604_5 crepBody604_48

def crepBody604_50 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody604_49

def crepBody604_51 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody604_50

def crepBody604_52 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody604_51

def crepBody604_53 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody604_52

def crepBody604_54 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody604_53

def crepBody604_55 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 23#64)) crepBody604_54

def crepBody604_56 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "fq12_reduce" [Flapjack.CrepExp.var 4]

def crepBody604_57 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody604_56

def crepBody604_58 : CrepProg (BitVec 64) :=
.seq crepBody604_55 crepBody604_57

def crepBody604_59 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "memcpy"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 384#64]

def crepBody604_60 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody604_59

def crepBody604_61 : CrepProg (BitVec 64) :=
.seq crepBody604_58 crepBody604_60

def crepBody604_62 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "heap_release" [Flapjack.CrepExp.var 3]

def crepBody604_63 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody604_62

def crepBody604_64 : CrepProg (BitVec 64) :=
.seq crepBody604_61 crepBody604_63

def crepBody604_65 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody604_66 : CrepProg (BitVec 64) :=
.seq crepBody604_64 crepBody604_65

def crepBody604_67 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody604_66

def crepBody604_68 : CrepProg (BitVec 64) :=
.seq crepBody604_1 crepBody604_67

def crepBody604_69 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody604_68

def crepBody604_70 : CrepProg (BitVec 64) :=
.seq crepBody604_0 crepBody604_69

def crepBody604_71 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody604_70

def data604 : CrepProg (BitVec 64) := crepBody604_71
def output604 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 113#8, 49#8, 50#8, 95#8, 109#8, 117#8, 108#8], [0, 1, 2], crepProgToHOL data604)
end InitECandidate.Proofs.FrontendStages.Crep
