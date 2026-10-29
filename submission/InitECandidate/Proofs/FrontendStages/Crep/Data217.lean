import InitECandidate.Proofs.FrontendStages.Crep.Translate201
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody217_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody217_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody217_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 1835008#64)) crepBody217_0 crepBody217_1

def crepBody217_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8, 9, 10, 11], none)) "calculate_blob_gas_price" [Flapjack.CrepExp.var 1]

def crepBody217_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12, 13, 14, 15], none)) "u256_from_word" [Flapjack.CrepExp.const 131072#64]

def crepBody217_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16, 17, 18, 19], none)) "u256_mul"
  [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15,
    Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11]

def crepBody217_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20, 21, 22, 23], none)) "u256_from_word" [Flapjack.CrepExp.const 8192#64]

def crepBody217_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([24, 25, 26, 27], none)) "u256_mul"
  [Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23,
    Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]

def crepBody217_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([28], none)) "u256_gt"
  [Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 27,
    Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19]

def crepBody217_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([29], none)) "udiv"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.var 2,
        Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 21#64, Flapjack.CrepExp.const 14#64]],
    Flapjack.CrepExp.const 21#64]

def crepBody217_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 29]]

def crepBody217_11 : CrepProg (BitVec 64) :=
.seq crepBody217_9 crepBody217_10

def crepBody217_12 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.const 0#64) crepBody217_11

def crepBody217_13 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 28) (Flapjack.CrepExp.const 0#64)) crepBody217_12 crepBody217_1

def crepBody217_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 1835008#64]]

def crepBody217_15 : CrepProg (BitVec 64) :=
.seq crepBody217_13 crepBody217_14

def crepBody217_16 : CrepProg (BitVec 64) :=
.seq crepBody217_8 crepBody217_15

def crepBody217_17 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.const 0#64) crepBody217_16

def crepBody217_18 : CrepProg (BitVec 64) :=
.seq crepBody217_7 crepBody217_17

def crepBody217_19 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody217_18

def crepBody217_20 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody217_19

def crepBody217_21 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody217_20

def crepBody217_22 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody217_21

def crepBody217_23 : CrepProg (BitVec 64) :=
.seq crepBody217_6 crepBody217_22

def crepBody217_24 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody217_23

def crepBody217_25 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody217_24

def crepBody217_26 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody217_25

def crepBody217_27 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody217_26

def crepBody217_28 : CrepProg (BitVec 64) :=
.seq crepBody217_5 crepBody217_27

def crepBody217_29 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody217_28

def crepBody217_30 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody217_29

def crepBody217_31 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody217_30

def crepBody217_32 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody217_31

def crepBody217_33 : CrepProg (BitVec 64) :=
.seq crepBody217_4 crepBody217_32

def crepBody217_34 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody217_33

def crepBody217_35 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody217_34

def crepBody217_36 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody217_35

def crepBody217_37 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody217_36

def crepBody217_38 : CrepProg (BitVec 64) :=
.seq crepBody217_3 crepBody217_37

def crepBody217_39 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody217_38

def crepBody217_40 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody217_39

def crepBody217_41 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody217_40

def crepBody217_42 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody217_41

def crepBody217_43 : CrepProg (BitVec 64) :=
.seq crepBody217_2 crepBody217_42

def crepBody217_44 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2]) crepBody217_43

def crepBody217_45 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64],
      Flapjack.CrepExp.const 24#64])) crepBody217_44

def crepBody217_46 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64],
      Flapjack.CrepExp.const 16#64])) crepBody217_45

def crepBody217_47 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64],
      Flapjack.CrepExp.const 8#64])) crepBody217_46

def crepBody217_48 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64])) crepBody217_47

def crepBody217_49 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 200#64])) crepBody217_48

def crepBody217_50 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 208#64])) crepBody217_49

def data217 : CrepProg (BitVec 64) := crepBody217_50
def output217 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [99#8, 97#8, 108#8, 99#8, 117#8, 108#8, 97#8, 116#8, 101#8, 95#8, 101#8, 120#8, 99#8, 101#8, 115#8, 115#8, 95#8, 98#8,
    108#8, 111#8, 98#8, 95#8, 103#8, 97#8, 115#8], [0], crepProgToHOL data217)
end InitECandidate.Proofs.FrontendStages.Crep
