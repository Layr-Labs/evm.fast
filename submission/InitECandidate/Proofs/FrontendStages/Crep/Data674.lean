import InitECandidate.Proofs.FrontendStages.Crep.Translate658
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody674_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14, 15, 16, 17, 18, 19], none)) "bls_fp_neg"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody674_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.var 21)

def crepBody674_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 20, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 22)

def crepBody674_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 20, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 23)

def crepBody674_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 20, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 24)

def crepBody674_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 20, Flapjack.CrepExp.const 32#64])
  (Flapjack.CrepExp.var 25)

def crepBody674_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 20, Flapjack.CrepExp.const 40#64])
  (Flapjack.CrepExp.var 26)

def crepBody674_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody674_8 : CrepProg (BitVec 64) :=
.seq crepBody674_6 crepBody674_7

def crepBody674_9 : CrepProg (BitVec 64) :=
.seq crepBody674_5 crepBody674_8

def crepBody674_10 : CrepProg (BitVec 64) :=
.seq crepBody674_4 crepBody674_9

def crepBody674_11 : CrepProg (BitVec 64) :=
.seq crepBody674_3 crepBody674_10

def crepBody674_12 : CrepProg (BitVec 64) :=
.seq crepBody674_2 crepBody674_11

def crepBody674_13 : CrepProg (BitVec 64) :=
.seq crepBody674_1 crepBody674_12

def crepBody674_14 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.var 7) crepBody674_13

def crepBody674_15 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.var 6) crepBody674_14

def crepBody674_16 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.var 5) crepBody674_15

def crepBody674_17 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.var 4) crepBody674_16

def crepBody674_18 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.var 3) crepBody674_17

def crepBody674_19 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.var 2) crepBody674_18

def crepBody674_20 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 0) crepBody674_19

def crepBody674_21 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.var 19) crepBody674_13

def crepBody674_22 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.var 18) crepBody674_21

def crepBody674_23 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.var 17) crepBody674_22

def crepBody674_24 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.var 16) crepBody674_23

def crepBody674_25 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.var 15) crepBody674_24

def crepBody674_26 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.var 14) crepBody674_25

def crepBody674_27 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64]) crepBody674_26

def crepBody674_28 : CrepProg (BitVec 64) :=
.seq crepBody674_20 crepBody674_27

def crepBody674_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody674_30 : CrepProg (BitVec 64) :=
.seq crepBody674_28 crepBody674_29

def crepBody674_31 : CrepProg (BitVec 64) :=
.seq crepBody674_0 crepBody674_30

def crepBody674_32 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody674_31

def crepBody674_33 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody674_32

def crepBody674_34 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody674_33

def crepBody674_35 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody674_34

def crepBody674_36 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody674_35

def crepBody674_37 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody674_36

def crepBody674_38 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 40#64])) crepBody674_37

def crepBody674_39 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 32#64])) crepBody674_38

def crepBody674_40 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 24#64])) crepBody674_39

def crepBody674_41 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 16#64])) crepBody674_40

def crepBody674_42 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 8#64])) crepBody674_41

def crepBody674_43 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64])) crepBody674_42

def crepBody674_44 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 40#64])) crepBody674_43

def crepBody674_45 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64])) crepBody674_44

def crepBody674_46 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 24#64])) crepBody674_45

def crepBody674_47 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64])) crepBody674_46

def crepBody674_48 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64])) crepBody674_47

def crepBody674_49 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 1)) crepBody674_48

def data674 : CrepProg (BitVec 64) := crepBody674_49
def output674 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 50#8, 95#8, 99#8, 111#8, 110#8, 106#8], [0, 1], crepProgToHOL data674)
end InitECandidate.Proofs.FrontendStages.Crep
