import InitECandidate.Proofs.FrontendStages.Crep.Translate662
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody678_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20, 21, 22, 23, 24, 25], none)) "bls_fp_mul"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody678_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([26, 27, 28, 29, 30, 31], none)) "bls_fp_mul"
  [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17,
    Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody678_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 32) (Flapjack.CrepExp.var 33)

def crepBody678_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 32, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 34)

def crepBody678_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 32, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 35)

def crepBody678_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 32, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 36)

def crepBody678_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 32, Flapjack.CrepExp.const 32#64])
  (Flapjack.CrepExp.var 37)

def crepBody678_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 32, Flapjack.CrepExp.const 40#64])
  (Flapjack.CrepExp.var 38)

def crepBody678_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody678_9 : CrepProg (BitVec 64) :=
.seq crepBody678_7 crepBody678_8

def crepBody678_10 : CrepProg (BitVec 64) :=
.seq crepBody678_6 crepBody678_9

def crepBody678_11 : CrepProg (BitVec 64) :=
.seq crepBody678_5 crepBody678_10

def crepBody678_12 : CrepProg (BitVec 64) :=
.seq crepBody678_4 crepBody678_11

def crepBody678_13 : CrepProg (BitVec 64) :=
.seq crepBody678_3 crepBody678_12

def crepBody678_14 : CrepProg (BitVec 64) :=
.seq crepBody678_2 crepBody678_13

def crepBody678_15 : CrepProg (BitVec 64) :=
.dec 38 (Flapjack.CrepExp.var 25) crepBody678_14

def crepBody678_16 : CrepProg (BitVec 64) :=
.dec 37 (Flapjack.CrepExp.var 24) crepBody678_15

def crepBody678_17 : CrepProg (BitVec 64) :=
.dec 36 (Flapjack.CrepExp.var 23) crepBody678_16

def crepBody678_18 : CrepProg (BitVec 64) :=
.dec 35 (Flapjack.CrepExp.var 22) crepBody678_17

def crepBody678_19 : CrepProg (BitVec 64) :=
.dec 34 (Flapjack.CrepExp.var 21) crepBody678_18

def crepBody678_20 : CrepProg (BitVec 64) :=
.dec 33 (Flapjack.CrepExp.var 20) crepBody678_19

def crepBody678_21 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.var 0) crepBody678_20

def crepBody678_22 : CrepProg (BitVec 64) :=
.dec 38 (Flapjack.CrepExp.var 31) crepBody678_14

def crepBody678_23 : CrepProg (BitVec 64) :=
.dec 37 (Flapjack.CrepExp.var 30) crepBody678_22

def crepBody678_24 : CrepProg (BitVec 64) :=
.dec 36 (Flapjack.CrepExp.var 29) crepBody678_23

def crepBody678_25 : CrepProg (BitVec 64) :=
.dec 35 (Flapjack.CrepExp.var 28) crepBody678_24

def crepBody678_26 : CrepProg (BitVec 64) :=
.dec 34 (Flapjack.CrepExp.var 27) crepBody678_25

def crepBody678_27 : CrepProg (BitVec 64) :=
.dec 33 (Flapjack.CrepExp.var 26) crepBody678_26

def crepBody678_28 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64]) crepBody678_27

def crepBody678_29 : CrepProg (BitVec 64) :=
.seq crepBody678_21 crepBody678_28

def crepBody678_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody678_31 : CrepProg (BitVec 64) :=
.seq crepBody678_29 crepBody678_30

def crepBody678_32 : CrepProg (BitVec 64) :=
.seq crepBody678_1 crepBody678_31

def crepBody678_33 : CrepProg (BitVec 64) :=
.dec 31 (Flapjack.CrepExp.const 0#64) crepBody678_32

def crepBody678_34 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.const 0#64) crepBody678_33

def crepBody678_35 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.const 0#64) crepBody678_34

def crepBody678_36 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.const 0#64) crepBody678_35

def crepBody678_37 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody678_36

def crepBody678_38 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody678_37

def crepBody678_39 : CrepProg (BitVec 64) :=
.seq crepBody678_0 crepBody678_38

def crepBody678_40 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody678_39

def crepBody678_41 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody678_40

def crepBody678_42 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody678_41

def crepBody678_43 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody678_42

def crepBody678_44 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody678_43

def crepBody678_45 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody678_44

def crepBody678_46 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 40#64])) crepBody678_45

def crepBody678_47 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 32#64])) crepBody678_46

def crepBody678_48 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 24#64])) crepBody678_47

def crepBody678_49 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 16#64])) crepBody678_48

def crepBody678_50 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 8#64])) crepBody678_49

def crepBody678_51 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64])) crepBody678_50

def crepBody678_52 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 40#64])) crepBody678_51

def crepBody678_53 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64])) crepBody678_52

def crepBody678_54 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 24#64])) crepBody678_53

def crepBody678_55 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64])) crepBody678_54

def crepBody678_56 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64])) crepBody678_55

def crepBody678_57 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 1)) crepBody678_56

def data678 : CrepProg (BitVec 64) := crepBody678_57
def output678 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 50#8, 95#8, 115#8, 99#8, 97#8, 108#8, 101#8], [0, 1, 2, 3, 4, 5, 6, 7], crepProgToHOL data678)
end InitECandidate.Proofs.FrontendStages.Crep
