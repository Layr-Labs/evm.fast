import InitECandidate.Proofs.FrontendStages.Crep.Translate656
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody672_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14, 15, 16, 17, 18, 19], none)) "bls_fp_neg"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody672_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20, 21, 22, 23, 24, 25], none)) "bls_fp_neg"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody672_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.var 27)

def crepBody672_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 26, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 28)

def crepBody672_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 26, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 29)

def crepBody672_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 26, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 30)

def crepBody672_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 26, Flapjack.CrepExp.const 32#64])
  (Flapjack.CrepExp.var 31)

def crepBody672_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 26, Flapjack.CrepExp.const 40#64])
  (Flapjack.CrepExp.var 32)

def crepBody672_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody672_9 : CrepProg (BitVec 64) :=
.seq crepBody672_7 crepBody672_8

def crepBody672_10 : CrepProg (BitVec 64) :=
.seq crepBody672_6 crepBody672_9

def crepBody672_11 : CrepProg (BitVec 64) :=
.seq crepBody672_5 crepBody672_10

def crepBody672_12 : CrepProg (BitVec 64) :=
.seq crepBody672_4 crepBody672_11

def crepBody672_13 : CrepProg (BitVec 64) :=
.seq crepBody672_3 crepBody672_12

def crepBody672_14 : CrepProg (BitVec 64) :=
.seq crepBody672_2 crepBody672_13

def crepBody672_15 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.var 19) crepBody672_14

def crepBody672_16 : CrepProg (BitVec 64) :=
.dec 31 (Flapjack.CrepExp.var 18) crepBody672_15

def crepBody672_17 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.var 17) crepBody672_16

def crepBody672_18 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.var 16) crepBody672_17

def crepBody672_19 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.var 15) crepBody672_18

def crepBody672_20 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.var 14) crepBody672_19

def crepBody672_21 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.var 0) crepBody672_20

def crepBody672_22 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.var 25) crepBody672_14

def crepBody672_23 : CrepProg (BitVec 64) :=
.dec 31 (Flapjack.CrepExp.var 24) crepBody672_22

def crepBody672_24 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.var 23) crepBody672_23

def crepBody672_25 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.var 22) crepBody672_24

def crepBody672_26 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.var 21) crepBody672_25

def crepBody672_27 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.var 20) crepBody672_26

def crepBody672_28 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64]) crepBody672_27

def crepBody672_29 : CrepProg (BitVec 64) :=
.seq crepBody672_21 crepBody672_28

def crepBody672_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody672_31 : CrepProg (BitVec 64) :=
.seq crepBody672_29 crepBody672_30

def crepBody672_32 : CrepProg (BitVec 64) :=
.seq crepBody672_1 crepBody672_31

def crepBody672_33 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody672_32

def crepBody672_34 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody672_33

def crepBody672_35 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody672_34

def crepBody672_36 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody672_35

def crepBody672_37 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody672_36

def crepBody672_38 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody672_37

def crepBody672_39 : CrepProg (BitVec 64) :=
.seq crepBody672_0 crepBody672_38

def crepBody672_40 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody672_39

def crepBody672_41 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody672_40

def crepBody672_42 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody672_41

def crepBody672_43 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody672_42

def crepBody672_44 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody672_43

def crepBody672_45 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody672_44

def crepBody672_46 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 40#64])) crepBody672_45

def crepBody672_47 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 32#64])) crepBody672_46

def crepBody672_48 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 24#64])) crepBody672_47

def crepBody672_49 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 16#64])) crepBody672_48

def crepBody672_50 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 8#64])) crepBody672_49

def crepBody672_51 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64])) crepBody672_50

def crepBody672_52 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 40#64])) crepBody672_51

def crepBody672_53 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64])) crepBody672_52

def crepBody672_54 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 24#64])) crepBody672_53

def crepBody672_55 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64])) crepBody672_54

def crepBody672_56 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64])) crepBody672_55

def crepBody672_57 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 1)) crepBody672_56

def data672 : CrepProg (BitVec 64) := crepBody672_57
def output672 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 50#8, 95#8, 110#8, 101#8, 103#8], [0, 1], crepProgToHOL data672)
end InitECandidate.Proofs.FrontendStages.Crep
