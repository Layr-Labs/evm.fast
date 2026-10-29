import InitECandidate.Proofs.FrontendStages.Crep.Translate297
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody313_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.const 1#64,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64])]

def crepBody313_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody313_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody313_0 crepBody313_1

def crepBody313_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "u256_fits_word"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody313_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody313_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 27#64),
      Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 28#64)])) crepBody313_4 crepBody313_1

def crepBody313_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 6)

def crepBody313_7 : CrepProg (BitVec 64) :=
.seq crepBody313_6 crepBody313_1

def crepBody313_8 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 44#64) crepBody313_7

def crepBody313_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 6#64

def crepBody313_10 : CrepProg (BitVec 64) :=
.seq crepBody313_8 crepBody313_9

def crepBody313_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 35#64)) crepBody313_10 crepBody313_1

def crepBody313_12 : CrepProg (BitVec 64) :=
.seq crepBody313_5 crepBody313_11

def crepBody313_13 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64)) crepBody313_12 crepBody313_1

def crepBody313_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6, 7, 8, 9], none)) "u256_sub"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.const 35#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody313_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10, 11, 12, 13], none)) "u256_shr"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.const 1#64]

def crepBody313_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "u256_fits_word"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody313_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 14)

def crepBody313_18 : CrepProg (BitVec 64) :=
.seq crepBody313_17 crepBody313_1

def crepBody313_19 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 45#64) crepBody313_18

def crepBody313_20 : CrepProg (BitVec 64) :=
.seq crepBody313_19 crepBody313_9

def crepBody313_21 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64)) crepBody313_20 crepBody313_1

def crepBody313_22 : CrepProg (BitVec 64) :=
.seq crepBody313_16 crepBody313_21

def crepBody313_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 10]

def crepBody313_24 : CrepProg (BitVec 64) :=
.seq crepBody313_22 crepBody313_23

def crepBody313_25 : CrepProg (BitVec 64) :=
.seq crepBody313_15 crepBody313_24

def crepBody313_26 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody313_25

def crepBody313_27 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody313_26

def crepBody313_28 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody313_27

def crepBody313_29 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody313_28

def crepBody313_30 : CrepProg (BitVec 64) :=
.seq crepBody313_14 crepBody313_29

def crepBody313_31 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody313_30

def crepBody313_32 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody313_31

def crepBody313_33 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody313_32

def crepBody313_34 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody313_33

def crepBody313_35 : CrepProg (BitVec 64) :=
.seq crepBody313_13 crepBody313_34

def crepBody313_36 : CrepProg (BitVec 64) :=
.seq crepBody313_3 crepBody313_35

def crepBody313_37 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody313_36

def crepBody313_38 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 288#64],
      Flapjack.CrepExp.const 24#64])) crepBody313_37

def crepBody313_39 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 288#64],
      Flapjack.CrepExp.const 16#64])) crepBody313_38

def crepBody313_40 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 288#64],
      Flapjack.CrepExp.const 8#64])) crepBody313_39

def crepBody313_41 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 288#64])) crepBody313_40

def crepBody313_42 : CrepProg (BitVec 64) :=
.seq crepBody313_2 crepBody313_41

def data313 : CrepProg (BitVec 64) := crepBody313_42
def output313 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 120#8, 95#8, 99#8, 104#8, 97#8, 105#8, 110#8, 95#8, 105#8, 100#8], [0], crepProgToHOL data313)
end InitECandidate.Proofs.FrontendStages.Crep
