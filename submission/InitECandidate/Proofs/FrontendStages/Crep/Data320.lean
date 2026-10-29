import InitECandidate.Proofs.FrontendStages.Crep.Translate304
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody320_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "count_tokens_in_data" [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody320_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "u256_is_zero"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64],
          Flapjack.CrepExp.const 24#64])]

def crepBody320_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.const 12000#64)

def crepBody320_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody320_4 : CrepProg (BitVec 64) :=
.seq crepBody320_2 crepBody320_3

def crepBody320_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9
  (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
    [Flapjack.CrepExp.const 2#64,
      Flapjack.CrepExp.shift Flapjack.Shift.lsr
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 31#64])
        (Flapjack.CrepExp.const 5#64)])

def crepBody320_6 : CrepProg (BitVec 64) :=
.seq crepBody320_5 crepBody320_3

def crepBody320_7 : CrepProg (BitVec 64) :=
.seq crepBody320_4 crepBody320_6

def crepBody320_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "memeq"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 20#64]

def crepBody320_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.const 3000#64)

def crepBody320_10 : CrepProg (BitVec 64) :=
.seq crepBody320_9 crepBody320_3

def crepBody320_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 11)

def crepBody320_12 : CrepProg (BitVec 64) :=
.seq crepBody320_11 crepBody320_3

def crepBody320_13 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 6000#64]) crepBody320_12

def crepBody320_14 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 0#64)) crepBody320_13 crepBody320_3

def crepBody320_15 : CrepProg (BitVec 64) :=
.seq crepBody320_10 crepBody320_14

def crepBody320_16 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 0#64)) crepBody320_15 crepBody320_3

def crepBody320_17 : CrepProg (BitVec 64) :=
.seq crepBody320_8 crepBody320_16

def crepBody320_18 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody320_17

def crepBody320_19 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 0#64)) crepBody320_7 crepBody320_18

def crepBody320_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 10 (Flapjack.CrepExp.var 16)

def crepBody320_21 : CrepProg (BitVec 64) :=
.seq crepBody320_20 crepBody320_3

def crepBody320_22 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 10,
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 3000#64, Flapjack.CrepExp.const 100#64],
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.var 15,
        Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 2100#64, Flapjack.CrepExp.const 100#64]]]) crepBody320_21

def crepBody320_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11 (Flapjack.CrepExp.var 16)

def crepBody320_24 : CrepProg (BitVec 64) :=
.seq crepBody320_23 crepBody320_3

def crepBody320_25 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 80#64,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 128#64]]) crepBody320_24

def crepBody320_26 : CrepProg (BitVec 64) :=
.seq crepBody320_22 crepBody320_25

def crepBody320_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 14 (Flapjack.CrepExp.var 16)

def crepBody320_28 : CrepProg (BitVec 64) :=
.seq crepBody320_27 crepBody320_3

def crepBody320_29 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 14, Flapjack.CrepExp.const 1#64]) crepBody320_28

def crepBody320_30 : CrepProg (BitVec 64) :=
.seq crepBody320_26 crepBody320_29

def crepBody320_31 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 12,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 14, Flapjack.CrepExp.const 24#64],
      Flapjack.CrepExp.const 16#64])) crepBody320_30

def crepBody320_32 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.var 13)) crepBody320_31

def crepBody320_33 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody320_32

def crepBody320_34 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 216#64])) crepBody320_33

def crepBody320_35 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 208#64])) crepBody320_34

def crepBody320_36 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody320_35 crepBody320_3

def crepBody320_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 10 (Flapjack.CrepExp.var 12)

def crepBody320_38 : CrepProg (BitVec 64) :=
.seq crepBody320_37 crepBody320_3

def crepBody320_39 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 10,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 16#64]]) crepBody320_38

def crepBody320_40 : CrepProg (BitVec 64) :=
.seq crepBody320_36 crepBody320_39

def crepBody320_41 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 12
  (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
    [Flapjack.CrepExp.const 7816#64,
      Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 280#64])])

def crepBody320_42 : CrepProg (BitVec 64) :=
.seq crepBody320_41 crepBody320_3

def crepBody320_43 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64]))
  (Flapjack.CrepExp.const 4#64)) crepBody320_42 crepBody320_3

def crepBody320_44 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 16, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.var 17]

def crepBody320_45 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 14, Flapjack.CrepExp.const 16#64],
    Flapjack.CrepExp.var 15]) crepBody320_44

def crepBody320_46 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 10,
    Flapjack.CrepExp.var 12]) crepBody320_45

def crepBody320_47 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 12000#64, Flapjack.CrepExp.var 8]) crepBody320_46

def crepBody320_48 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 11]) crepBody320_47

def crepBody320_49 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 4#64]) crepBody320_48

def crepBody320_50 : CrepProg (BitVec 64) :=
.seq crepBody320_43 crepBody320_49

def crepBody320_51 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody320_50

def crepBody320_52 : CrepProg (BitVec 64) :=
.seq crepBody320_40 crepBody320_51

def crepBody320_53 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody320_52

def crepBody320_54 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody320_53

def crepBody320_55 : CrepProg (BitVec 64) :=
.seq crepBody320_19 crepBody320_54

def crepBody320_56 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody320_55

def crepBody320_57 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody320_56

def crepBody320_58 : CrepProg (BitVec 64) :=
.seq crepBody320_1 crepBody320_57

def crepBody320_59 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody320_58

def crepBody320_60 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 152#64])) crepBody320_59

def crepBody320_61 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 4#64]) crepBody320_60

def crepBody320_62 : CrepProg (BitVec 64) :=
.seq crepBody320_0 crepBody320_61

def crepBody320_63 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody320_62

def crepBody320_64 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 200#64])) crepBody320_63

def crepBody320_65 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 192#64])) crepBody320_64

def data320 : CrepProg (BitVec 64) := crepBody320_65
def output320 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [99#8, 97#8, 108#8, 99#8, 117#8, 108#8, 97#8, 116#8, 101#8, 95#8, 105#8, 110#8, 116#8, 114#8, 105#8, 110#8, 115#8,
    105#8, 99#8, 95#8, 99#8, 111#8, 115#8, 116#8], [0, 1], crepProgToHOL data320)
end InitECandidate.Proofs.FrontendStages.Crep
