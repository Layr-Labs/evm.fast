import InitECandidate.Proofs.FrontendStages.Crep.Translate176
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody192_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "ssz_fail" [Flapjack.CrepExp.const 1#64]

def crepBody192_1 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody192_0

def crepBody192_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody192_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 2#64)) crepBody192_1 crepBody192_2

def crepBody192_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "ssz_fail" [Flapjack.CrepExp.const 2#64]

def crepBody192_5 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody192_4

def crepBody192_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.var 0))
        (Flapjack.CrepExp.const 21#64),
      Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
        (Flapjack.CrepExp.loadByte
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64]))
        (Flapjack.CrepExp.const 1#64)])) crepBody192_5 crepBody192_2

def crepBody192_7 : CrepProg (BitVec 64) :=
.seq crepBody192_3 crepBody192_6

def crepBody192_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 0 (Flapjack.CrepExp.var 2)

def crepBody192_9 : CrepProg (BitVec 64) :=
.seq crepBody192_8 crepBody192_2

def crepBody192_10 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 2#64]) crepBody192_9

def crepBody192_11 : CrepProg (BitVec 64) :=
.seq crepBody192_7 crepBody192_10

def crepBody192_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 1 (Flapjack.CrepExp.var 2)

def crepBody192_13 : CrepProg (BitVec 64) :=
.seq crepBody192_12 crepBody192_2

def crepBody192_14 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 2#64]) crepBody192_13

def crepBody192_15 : CrepProg (BitVec 64) :=
.seq crepBody192_11 crepBody192_14

def crepBody192_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "ssz_fail" [Flapjack.CrepExp.const 80#64]

def crepBody192_17 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody192_16

def crepBody192_18 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 16#64)) crepBody192_17 crepBody192_2

def crepBody192_19 : CrepProg (BitVec 64) :=
.seq crepBody192_15 crepBody192_18

def crepBody192_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 3)

def crepBody192_21 : CrepProg (BitVec 64) :=
.seq crepBody192_20 crepBody192_2

def crepBody192_22 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.loadByte (Flapjack.CrepExp.var 0),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 3#64]))
      (Flapjack.CrepExp.const 24#64)]) crepBody192_21

def crepBody192_23 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64])) crepBody192_22

def crepBody192_24 : CrepProg (BitVec 64) :=
.seq crepBody192_19 crepBody192_23

def crepBody192_25 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 4#64]),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 3#64]))
      (Flapjack.CrepExp.const 24#64)]) crepBody192_21

def crepBody192_26 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64]),
    Flapjack.CrepExp.const 8#64]) crepBody192_25

def crepBody192_27 : CrepProg (BitVec 64) :=
.seq crepBody192_24 crepBody192_26

def crepBody192_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "ssz_check_offsets"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64]),
    Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.const 16#64, Flapjack.CrepExp.var 1]

def crepBody192_29 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody192_28

def crepBody192_30 : CrepProg (BitVec 64) :=
.seq crepBody192_27 crepBody192_29

def crepBody192_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc" [Flapjack.CrepExp.const 96#64]

def crepBody192_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 6)

def crepBody192_33 : CrepProg (BitVec 64) :=
.seq crepBody192_32 crepBody192_2

def crepBody192_34 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 3#64]))
      (Flapjack.CrepExp.const 24#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.or
        [Flapjack.CrepExp.loadByte
            (Flapjack.CrepExp.op Flapjack.BinOp.add
              [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 4#64]),
          Flapjack.CrepExp.shift Flapjack.Shift.lsl
            (Flapjack.CrepExp.loadByte
              (Flapjack.CrepExp.op Flapjack.BinOp.add
                [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 4#64,
                  Flapjack.CrepExp.const 1#64]))
            (Flapjack.CrepExp.const 8#64),
          Flapjack.CrepExp.shift Flapjack.Shift.lsl
            (Flapjack.CrepExp.loadByte
              (Flapjack.CrepExp.op Flapjack.BinOp.add
                [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 4#64,
                  Flapjack.CrepExp.const 2#64]))
            (Flapjack.CrepExp.const 16#64),
          Flapjack.CrepExp.shift Flapjack.Shift.lsl
            (Flapjack.CrepExp.loadByte
              (Flapjack.CrepExp.op Flapjack.BinOp.add
                [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 4#64,
                  Flapjack.CrepExp.const 3#64]))
            (Flapjack.CrepExp.const 24#64)])
      (Flapjack.CrepExp.const 32#64)]) crepBody192_33

def crepBody192_35 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 88#64]) crepBody192_34

def crepBody192_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "ssz_fail" [Flapjack.CrepExp.const 81#64]

def crepBody192_37 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody192_36

def crepBody192_38 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 44#64)) crepBody192_37 crepBody192_2

def crepBody192_39 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.var 11)

def crepBody192_40 : CrepProg (BitVec 64) :=
.seq crepBody192_39 crepBody192_2

def crepBody192_41 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 7) crepBody192_40

def crepBody192_42 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64])) crepBody192_41

def crepBody192_43 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 8) crepBody192_40

def crepBody192_44 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64]),
    Flapjack.CrepExp.const 8#64]) crepBody192_43

def crepBody192_45 : CrepProg (BitVec 64) :=
.seq crepBody192_42 crepBody192_44

def crepBody192_46 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 9) crepBody192_40

def crepBody192_47 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64]),
    Flapjack.CrepExp.const 16#64]) crepBody192_46

def crepBody192_48 : CrepProg (BitVec 64) :=
.seq crepBody192_45 crepBody192_47

def crepBody192_49 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "ssz_check_offsets"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64]),
    Flapjack.CrepExp.const 3#64, Flapjack.CrepExp.const 44#64, Flapjack.CrepExp.var 6]

def crepBody192_50 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody192_49

def crepBody192_51 : CrepProg (BitVec 64) :=
.seq crepBody192_48 crepBody192_50

def crepBody192_52 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "decode_payload"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 7],
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 7]]

def crepBody192_53 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.var 12)

def crepBody192_54 : CrepProg (BitVec 64) :=
.seq crepBody192_53 crepBody192_2

def crepBody192_55 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.var 10) crepBody192_54

def crepBody192_56 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 0#64]) crepBody192_55

def crepBody192_57 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "ssz_fixed_list_count"
  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 8],
    Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.const 9223372036854775807#64]

def crepBody192_58 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.var 13)

def crepBody192_59 : CrepProg (BitVec 64) :=
.seq crepBody192_58 crepBody192_2

def crepBody192_60 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 8]) crepBody192_59

def crepBody192_61 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 8#64]) crepBody192_60

def crepBody192_62 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 11) crepBody192_59

def crepBody192_63 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 16#64]) crepBody192_62

def crepBody192_64 : CrepProg (BitVec 64) :=
.seq crepBody192_61 crepBody192_63

def crepBody192_65 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 8#64]) crepBody192_59

def crepBody192_66 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 24#64]) crepBody192_65

def crepBody192_67 : CrepProg (BitVec 64) :=
.seq crepBody192_64 crepBody192_66

def crepBody192_68 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "decode_requests"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 9],
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 9]]

def crepBody192_69 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.var 14)

def crepBody192_70 : CrepProg (BitVec 64) :=
.seq crepBody192_69 crepBody192_2

def crepBody192_71 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 12) crepBody192_70

def crepBody192_72 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64]) crepBody192_71

def crepBody192_73 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "ssz_fail" [Flapjack.CrepExp.const 82#64]

def crepBody192_74 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody192_73

def crepBody192_75 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 12#64)) crepBody192_74 crepBody192_2

def crepBody192_76 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 16) (Flapjack.CrepExp.var 17)

def crepBody192_77 : CrepProg (BitVec 64) :=
.seq crepBody192_76 crepBody192_2

def crepBody192_78 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 13,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 4#64]]),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 13,
            Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 4#64],
            Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 13,
            Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 4#64],
            Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 13,
            Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 4#64],
            Flapjack.CrepExp.const 3#64]))
      (Flapjack.CrepExp.const 24#64)]) crepBody192_77

def crepBody192_79 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64]),
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 8#64]]) crepBody192_78

def crepBody192_80 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 15 (Flapjack.CrepExp.var 16)

def crepBody192_81 : CrepProg (BitVec 64) :=
.seq crepBody192_80 crepBody192_2

def crepBody192_82 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 1#64]) crepBody192_81

def crepBody192_83 : CrepProg (BitVec 64) :=
.seq crepBody192_79 crepBody192_82

def crepBody192_84 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.const 3#64)) crepBody192_83

def crepBody192_85 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "ssz_check_offsets"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64]),
    Flapjack.CrepExp.const 3#64, Flapjack.CrepExp.const 12#64, Flapjack.CrepExp.var 14]

def crepBody192_86 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody192_85

def crepBody192_87 : CrepProg (BitVec 64) :=
.seq crepBody192_84 crepBody192_86

def crepBody192_88 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19, 20], none)) "decode_bytes_list"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 16],
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 16],
    Flapjack.CrepExp.const 9223372036854775807#64, Flapjack.CrepExp.const 1024#64]

def crepBody192_89 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.var 22)

def crepBody192_90 : CrepProg (BitVec 64) :=
.seq crepBody192_89 crepBody192_2

def crepBody192_91 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.var 19) crepBody192_90

def crepBody192_92 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 40#64]) crepBody192_91

def crepBody192_93 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.var 20) crepBody192_90

def crepBody192_94 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 48#64]) crepBody192_93

def crepBody192_95 : CrepProg (BitVec 64) :=
.seq crepBody192_92 crepBody192_94

def crepBody192_96 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21, 22], none)) "decode_bytes_list"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 17],
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 17],
    Flapjack.CrepExp.const 9223372036854775807#64, Flapjack.CrepExp.const 65536#64]

def crepBody192_97 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.var 24)

def crepBody192_98 : CrepProg (BitVec 64) :=
.seq crepBody192_97 crepBody192_2

def crepBody192_99 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.var 21) crepBody192_98

def crepBody192_100 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 56#64]) crepBody192_99

def crepBody192_101 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.var 22) crepBody192_98

def crepBody192_102 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 64#64]) crepBody192_101

def crepBody192_103 : CrepProg (BitVec 64) :=
.seq crepBody192_100 crepBody192_102

def crepBody192_104 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23, 24], none)) "decode_bytes_list"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 18],
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 18],
    Flapjack.CrepExp.const 256#64, Flapjack.CrepExp.const 1024#64]

def crepBody192_105 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.var 26)

def crepBody192_106 : CrepProg (BitVec 64) :=
.seq crepBody192_105 crepBody192_2

def crepBody192_107 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.var 23) crepBody192_106

def crepBody192_108 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 72#64]) crepBody192_107

def crepBody192_109 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.var 24) crepBody192_106

def crepBody192_110 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 80#64]) crepBody192_109

def crepBody192_111 : CrepProg (BitVec 64) :=
.seq crepBody192_108 crepBody192_110

def crepBody192_112 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 4]

def crepBody192_113 : CrepProg (BitVec 64) :=
.seq crepBody192_111 crepBody192_112

def crepBody192_114 : CrepProg (BitVec 64) :=
.seq crepBody192_104 crepBody192_113

def crepBody192_115 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody192_114

def crepBody192_116 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody192_115

def crepBody192_117 : CrepProg (BitVec 64) :=
.seq crepBody192_103 crepBody192_116

def crepBody192_118 : CrepProg (BitVec 64) :=
.seq crepBody192_96 crepBody192_117

def crepBody192_119 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody192_118

def crepBody192_120 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody192_119

def crepBody192_121 : CrepProg (BitVec 64) :=
.seq crepBody192_95 crepBody192_120

def crepBody192_122 : CrepProg (BitVec 64) :=
.seq crepBody192_88 crepBody192_121

def crepBody192_123 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody192_122

def crepBody192_124 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody192_123

def crepBody192_125 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64]),
      Flapjack.CrepExp.const 16#64])) crepBody192_124

def crepBody192_126 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64]),
      Flapjack.CrepExp.const 8#64])) crepBody192_125

def crepBody192_127 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64]))) crepBody192_126

def crepBody192_128 : CrepProg (BitVec 64) :=
.seq crepBody192_87 crepBody192_127

def crepBody192_129 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody192_128

def crepBody192_130 : CrepProg (BitVec 64) :=
.seq crepBody192_75 crepBody192_129

def crepBody192_131 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3]) crepBody192_130

def crepBody192_132 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3]) crepBody192_131

def crepBody192_133 : CrepProg (BitVec 64) :=
.seq crepBody192_72 crepBody192_132

def crepBody192_134 : CrepProg (BitVec 64) :=
.seq crepBody192_68 crepBody192_133

def crepBody192_135 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody192_134

def crepBody192_136 : CrepProg (BitVec 64) :=
.seq crepBody192_67 crepBody192_135

def crepBody192_137 : CrepProg (BitVec 64) :=
.seq crepBody192_57 crepBody192_136

def crepBody192_138 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody192_137

def crepBody192_139 : CrepProg (BitVec 64) :=
.seq crepBody192_56 crepBody192_138

def crepBody192_140 : CrepProg (BitVec 64) :=
.seq crepBody192_52 crepBody192_139

def crepBody192_141 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody192_140

def crepBody192_142 : CrepProg (BitVec 64) :=
.seq crepBody192_51 crepBody192_141

def crepBody192_143 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 40#64]),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 40#64, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 40#64, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 40#64, Flapjack.CrepExp.const 3#64]))
      (Flapjack.CrepExp.const 24#64)]) crepBody192_142

def crepBody192_144 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 4#64]),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 3#64]))
      (Flapjack.CrepExp.const 24#64)]) crepBody192_143

def crepBody192_145 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.loadByte (Flapjack.CrepExp.var 5),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 3#64]))
      (Flapjack.CrepExp.const 24#64)]) crepBody192_144

def crepBody192_146 : CrepProg (BitVec 64) :=
.seq crepBody192_38 crepBody192_145

def crepBody192_147 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 2]) crepBody192_146

def crepBody192_148 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2]) crepBody192_147

def crepBody192_149 : CrepProg (BitVec 64) :=
.seq crepBody192_35 crepBody192_148

def crepBody192_150 : CrepProg (BitVec 64) :=
.seq crepBody192_31 crepBody192_149

def crepBody192_151 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody192_150

def crepBody192_152 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64]),
      Flapjack.CrepExp.const 8#64])) crepBody192_151

def crepBody192_153 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64]))) crepBody192_152

def crepBody192_154 : CrepProg (BitVec 64) :=
.seq crepBody192_30 crepBody192_153

def data192 : CrepProg (BitVec 64) := crepBody192_154
def output192 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 115#8, 116#8, 97#8, 116#8, 101#8, 108#8, 101#8, 115#8, 115#8, 95#8,
    105#8, 110#8, 112#8, 117#8, 116#8], [0, 1], crepProgToHOL data192)
end InitECandidate.Proofs.FrontendStages.Crep
