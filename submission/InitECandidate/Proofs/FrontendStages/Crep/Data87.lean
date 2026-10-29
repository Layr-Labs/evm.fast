import InitECandidate.Proofs.FrontendStages.Crep.Translate71
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody87_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 25,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 24,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 22,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24]]],
      Flapjack.CrepExp.const 1116352408#64, Flapjack.CrepExp.var 2])

def crepBody87_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody87_2 : CrepProg (BitVec 64) :=
.seq crepBody87_0 crepBody87_1

def crepBody87_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 21 (Flapjack.CrepExp.var 27)

def crepBody87_4 : CrepProg (BitVec 64) :=
.seq crepBody87_3 crepBody87_1

def crepBody87_5 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 26])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_4

def crepBody87_6 : CrepProg (BitVec 64) :=
.seq crepBody87_2 crepBody87_5

def crepBody87_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 25
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr
    (Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 26,
          Flapjack.CrepExp.op Flapjack.BinOp.xor
            [Flapjack.CrepExp.op Flapjack.BinOp.or
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 2#64),
                  Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 30#64)],
              Flapjack.CrepExp.op Flapjack.BinOp.or
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 13#64),
                  Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 19#64)],
              Flapjack.CrepExp.op Flapjack.BinOp.or
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 22#64),
                  Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 10#64)]],
          Flapjack.CrepExp.op Flapjack.BinOp.xor
            [Flapjack.CrepExp.var 19,
              Flapjack.CrepExp.op Flapjack.BinOp.and
                [Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19],
                  Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]]]])
      (Flapjack.CrepExp.const 32#64))
    (Flapjack.CrepExp.const 32#64))

def crepBody87_8 : CrepProg (BitVec 64) :=
.seq crepBody87_7 crepBody87_1

def crepBody87_9 : CrepProg (BitVec 64) :=
.seq crepBody87_6 crepBody87_8

def crepBody87_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 24,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 23,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 21,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23]]],
      Flapjack.CrepExp.const 1899447441#64, Flapjack.CrepExp.var 3])

def crepBody87_11 : CrepProg (BitVec 64) :=
.seq crepBody87_10 crepBody87_1

def crepBody87_12 : CrepProg (BitVec 64) :=
.seq crepBody87_9 crepBody87_11

def crepBody87_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 20 (Flapjack.CrepExp.var 27)

def crepBody87_14 : CrepProg (BitVec 64) :=
.seq crepBody87_13 crepBody87_1

def crepBody87_15 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 26])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_14

def crepBody87_16 : CrepProg (BitVec 64) :=
.seq crepBody87_12 crepBody87_15

def crepBody87_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 24
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr
    (Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 26,
          Flapjack.CrepExp.op Flapjack.BinOp.xor
            [Flapjack.CrepExp.op Flapjack.BinOp.or
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 2#64),
                  Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 30#64)],
              Flapjack.CrepExp.op Flapjack.BinOp.or
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 13#64),
                  Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 19#64)],
              Flapjack.CrepExp.op Flapjack.BinOp.or
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 22#64),
                  Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 10#64)]],
          Flapjack.CrepExp.op Flapjack.BinOp.xor
            [Flapjack.CrepExp.var 18,
              Flapjack.CrepExp.op Flapjack.BinOp.and
                [Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 18],
                  Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19]]]])
      (Flapjack.CrepExp.const 32#64))
    (Flapjack.CrepExp.const 32#64))

def crepBody87_18 : CrepProg (BitVec 64) :=
.seq crepBody87_17 crepBody87_1

def crepBody87_19 : CrepProg (BitVec 64) :=
.seq crepBody87_16 crepBody87_18

def crepBody87_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 23,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 22,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 20,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22]]],
      Flapjack.CrepExp.const 18446744072463907791#64, Flapjack.CrepExp.var 4])

def crepBody87_21 : CrepProg (BitVec 64) :=
.seq crepBody87_20 crepBody87_1

def crepBody87_22 : CrepProg (BitVec 64) :=
.seq crepBody87_19 crepBody87_21

def crepBody87_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 19 (Flapjack.CrepExp.var 27)

def crepBody87_24 : CrepProg (BitVec 64) :=
.seq crepBody87_23 crepBody87_1

def crepBody87_25 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 26])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_24

def crepBody87_26 : CrepProg (BitVec 64) :=
.seq crepBody87_22 crepBody87_25

def crepBody87_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 23
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr
    (Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 26,
          Flapjack.CrepExp.op Flapjack.BinOp.xor
            [Flapjack.CrepExp.op Flapjack.BinOp.or
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 2#64),
                  Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 30#64)],
              Flapjack.CrepExp.op Flapjack.BinOp.or
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 13#64),
                  Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 19#64)],
              Flapjack.CrepExp.op Flapjack.BinOp.or
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 22#64),
                  Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 10#64)]],
          Flapjack.CrepExp.op Flapjack.BinOp.xor
            [Flapjack.CrepExp.var 25,
              Flapjack.CrepExp.op Flapjack.BinOp.and
                [Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25],
                  Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 18]]]])
      (Flapjack.CrepExp.const 32#64))
    (Flapjack.CrepExp.const 32#64))

def crepBody87_28 : CrepProg (BitVec 64) :=
.seq crepBody87_27 crepBody87_1

def crepBody87_29 : CrepProg (BitVec 64) :=
.seq crepBody87_26 crepBody87_28

def crepBody87_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 22,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 21,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 19,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21]]],
      Flapjack.CrepExp.const 18446744073335593893#64, Flapjack.CrepExp.var 5])

def crepBody87_31 : CrepProg (BitVec 64) :=
.seq crepBody87_30 crepBody87_1

def crepBody87_32 : CrepProg (BitVec 64) :=
.seq crepBody87_29 crepBody87_31

def crepBody87_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 18 (Flapjack.CrepExp.var 27)

def crepBody87_34 : CrepProg (BitVec 64) :=
.seq crepBody87_33 crepBody87_1

def crepBody87_35 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 26])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_34

def crepBody87_36 : CrepProg (BitVec 64) :=
.seq crepBody87_32 crepBody87_35

def crepBody87_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 22
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr
    (Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 26,
          Flapjack.CrepExp.op Flapjack.BinOp.xor
            [Flapjack.CrepExp.op Flapjack.BinOp.or
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 2#64),
                  Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 30#64)],
              Flapjack.CrepExp.op Flapjack.BinOp.or
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 13#64),
                  Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 19#64)],
              Flapjack.CrepExp.op Flapjack.BinOp.or
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 22#64),
                  Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 10#64)]],
          Flapjack.CrepExp.op Flapjack.BinOp.xor
            [Flapjack.CrepExp.var 24,
              Flapjack.CrepExp.op Flapjack.BinOp.and
                [Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24],
                  Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25]]]])
      (Flapjack.CrepExp.const 32#64))
    (Flapjack.CrepExp.const 32#64))

def crepBody87_38 : CrepProg (BitVec 64) :=
.seq crepBody87_37 crepBody87_1

def crepBody87_39 : CrepProg (BitVec 64) :=
.seq crepBody87_36 crepBody87_38

def crepBody87_40 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 21,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 20,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 18,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]]],
      Flapjack.CrepExp.const 961987163#64, Flapjack.CrepExp.var 6])

def crepBody87_41 : CrepProg (BitVec 64) :=
.seq crepBody87_40 crepBody87_1

def crepBody87_42 : CrepProg (BitVec 64) :=
.seq crepBody87_39 crepBody87_41

def crepBody87_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 25 (Flapjack.CrepExp.var 27)

def crepBody87_44 : CrepProg (BitVec 64) :=
.seq crepBody87_43 crepBody87_1

def crepBody87_45 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_44

def crepBody87_46 : CrepProg (BitVec 64) :=
.seq crepBody87_42 crepBody87_45

def crepBody87_47 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 21
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr
    (Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 26,
          Flapjack.CrepExp.op Flapjack.BinOp.xor
            [Flapjack.CrepExp.op Flapjack.BinOp.or
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 2#64),
                  Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 30#64)],
              Flapjack.CrepExp.op Flapjack.BinOp.or
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 13#64),
                  Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 19#64)],
              Flapjack.CrepExp.op Flapjack.BinOp.or
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 22#64),
                  Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 10#64)]],
          Flapjack.CrepExp.op Flapjack.BinOp.xor
            [Flapjack.CrepExp.var 23,
              Flapjack.CrepExp.op Flapjack.BinOp.and
                [Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23],
                  Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24]]]])
      (Flapjack.CrepExp.const 32#64))
    (Flapjack.CrepExp.const 32#64))

def crepBody87_48 : CrepProg (BitVec 64) :=
.seq crepBody87_47 crepBody87_1

def crepBody87_49 : CrepProg (BitVec 64) :=
.seq crepBody87_46 crepBody87_48

def crepBody87_50 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 20,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 19,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 25,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19]]],
      Flapjack.CrepExp.const 1508970993#64, Flapjack.CrepExp.var 7])

def crepBody87_51 : CrepProg (BitVec 64) :=
.seq crepBody87_50 crepBody87_1

def crepBody87_52 : CrepProg (BitVec 64) :=
.seq crepBody87_49 crepBody87_51

def crepBody87_53 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 24 (Flapjack.CrepExp.var 27)

def crepBody87_54 : CrepProg (BitVec 64) :=
.seq crepBody87_53 crepBody87_1

def crepBody87_55 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 26])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_54

def crepBody87_56 : CrepProg (BitVec 64) :=
.seq crepBody87_52 crepBody87_55

def crepBody87_57 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 20
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr
    (Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 26,
          Flapjack.CrepExp.op Flapjack.BinOp.xor
            [Flapjack.CrepExp.op Flapjack.BinOp.or
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 2#64),
                  Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 30#64)],
              Flapjack.CrepExp.op Flapjack.BinOp.or
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 13#64),
                  Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 19#64)],
              Flapjack.CrepExp.op Flapjack.BinOp.or
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 22#64),
                  Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 10#64)]],
          Flapjack.CrepExp.op Flapjack.BinOp.xor
            [Flapjack.CrepExp.var 22,
              Flapjack.CrepExp.op Flapjack.BinOp.and
                [Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22],
                  Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23]]]])
      (Flapjack.CrepExp.const 32#64))
    (Flapjack.CrepExp.const 32#64))

def crepBody87_58 : CrepProg (BitVec 64) :=
.seq crepBody87_57 crepBody87_1

def crepBody87_59 : CrepProg (BitVec 64) :=
.seq crepBody87_56 crepBody87_58

def crepBody87_60 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 19,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 18,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 24,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 18]]],
      Flapjack.CrepExp.const 18446744071868220068#64, Flapjack.CrepExp.var 8])

def crepBody87_61 : CrepProg (BitVec 64) :=
.seq crepBody87_60 crepBody87_1

def crepBody87_62 : CrepProg (BitVec 64) :=
.seq crepBody87_59 crepBody87_61

def crepBody87_63 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 23 (Flapjack.CrepExp.var 27)

def crepBody87_64 : CrepProg (BitVec 64) :=
.seq crepBody87_63 crepBody87_1

def crepBody87_65 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 26])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_64

def crepBody87_66 : CrepProg (BitVec 64) :=
.seq crepBody87_62 crepBody87_65

def crepBody87_67 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 19
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr
    (Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 26,
          Flapjack.CrepExp.op Flapjack.BinOp.xor
            [Flapjack.CrepExp.op Flapjack.BinOp.or
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 2#64),
                  Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 30#64)],
              Flapjack.CrepExp.op Flapjack.BinOp.or
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 13#64),
                  Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 19#64)],
              Flapjack.CrepExp.op Flapjack.BinOp.or
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 22#64),
                  Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 10#64)]],
          Flapjack.CrepExp.op Flapjack.BinOp.xor
            [Flapjack.CrepExp.var 21,
              Flapjack.CrepExp.op Flapjack.BinOp.and
                [Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21],
                  Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22]]]])
      (Flapjack.CrepExp.const 32#64))
    (Flapjack.CrepExp.const 32#64))

def crepBody87_68 : CrepProg (BitVec 64) :=
.seq crepBody87_67 crepBody87_1

def crepBody87_69 : CrepProg (BitVec 64) :=
.seq crepBody87_66 crepBody87_68

def crepBody87_70 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 18,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 25,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 23,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25]]],
      Flapjack.CrepExp.const 18446744072285347541#64, Flapjack.CrepExp.var 9])

def crepBody87_71 : CrepProg (BitVec 64) :=
.seq crepBody87_70 crepBody87_1

def crepBody87_72 : CrepProg (BitVec 64) :=
.seq crepBody87_69 crepBody87_71

def crepBody87_73 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 22 (Flapjack.CrepExp.var 27)

def crepBody87_74 : CrepProg (BitVec 64) :=
.seq crepBody87_73 crepBody87_1

def crepBody87_75 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 26])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_74

def crepBody87_76 : CrepProg (BitVec 64) :=
.seq crepBody87_72 crepBody87_75

def crepBody87_77 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 18
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr
    (Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 26,
          Flapjack.CrepExp.op Flapjack.BinOp.xor
            [Flapjack.CrepExp.op Flapjack.BinOp.or
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 2#64),
                  Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 30#64)],
              Flapjack.CrepExp.op Flapjack.BinOp.or
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 13#64),
                  Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 19#64)],
              Flapjack.CrepExp.op Flapjack.BinOp.or
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 22#64),
                  Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 10#64)]],
          Flapjack.CrepExp.op Flapjack.BinOp.xor
            [Flapjack.CrepExp.var 20,
              Flapjack.CrepExp.op Flapjack.BinOp.and
                [Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20],
                  Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21]]]])
      (Flapjack.CrepExp.const 32#64))
    (Flapjack.CrepExp.const 32#64))

def crepBody87_78 : CrepProg (BitVec 64) :=
.seq crepBody87_77 crepBody87_1

def crepBody87_79 : CrepProg (BitVec 64) :=
.seq crepBody87_76 crepBody87_78

def crepBody87_80 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 25,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 24,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 22,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24]]],
      Flapjack.CrepExp.const 18446744073038965400#64, Flapjack.CrepExp.var 10])

def crepBody87_81 : CrepProg (BitVec 64) :=
.seq crepBody87_80 crepBody87_1

def crepBody87_82 : CrepProg (BitVec 64) :=
.seq crepBody87_79 crepBody87_81

def crepBody87_83 : CrepProg (BitVec 64) :=
.seq crepBody87_82 crepBody87_5

def crepBody87_84 : CrepProg (BitVec 64) :=
.seq crepBody87_83 crepBody87_8

def crepBody87_85 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 24,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 23,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 21,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23]]],
      Flapjack.CrepExp.const 310598401#64, Flapjack.CrepExp.var 11])

def crepBody87_86 : CrepProg (BitVec 64) :=
.seq crepBody87_85 crepBody87_1

def crepBody87_87 : CrepProg (BitVec 64) :=
.seq crepBody87_84 crepBody87_86

def crepBody87_88 : CrepProg (BitVec 64) :=
.seq crepBody87_87 crepBody87_15

def crepBody87_89 : CrepProg (BitVec 64) :=
.seq crepBody87_88 crepBody87_18

def crepBody87_90 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 23,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 22,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 20,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22]]],
      Flapjack.CrepExp.const 607225278#64, Flapjack.CrepExp.var 12])

def crepBody87_91 : CrepProg (BitVec 64) :=
.seq crepBody87_90 crepBody87_1

def crepBody87_92 : CrepProg (BitVec 64) :=
.seq crepBody87_89 crepBody87_91

def crepBody87_93 : CrepProg (BitVec 64) :=
.seq crepBody87_92 crepBody87_25

def crepBody87_94 : CrepProg (BitVec 64) :=
.seq crepBody87_93 crepBody87_28

def crepBody87_95 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 22,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 21,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 19,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21]]],
      Flapjack.CrepExp.const 1426881987#64, Flapjack.CrepExp.var 13])

def crepBody87_96 : CrepProg (BitVec 64) :=
.seq crepBody87_95 crepBody87_1

def crepBody87_97 : CrepProg (BitVec 64) :=
.seq crepBody87_94 crepBody87_96

def crepBody87_98 : CrepProg (BitVec 64) :=
.seq crepBody87_97 crepBody87_35

def crepBody87_99 : CrepProg (BitVec 64) :=
.seq crepBody87_98 crepBody87_38

def crepBody87_100 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 21,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 20,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 18,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]]],
      Flapjack.CrepExp.const 1925078388#64, Flapjack.CrepExp.var 14])

def crepBody87_101 : CrepProg (BitVec 64) :=
.seq crepBody87_100 crepBody87_1

def crepBody87_102 : CrepProg (BitVec 64) :=
.seq crepBody87_99 crepBody87_101

def crepBody87_103 : CrepProg (BitVec 64) :=
.seq crepBody87_102 crepBody87_45

def crepBody87_104 : CrepProg (BitVec 64) :=
.seq crepBody87_103 crepBody87_48

def crepBody87_105 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 20,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 19,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 25,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19]]],
      Flapjack.CrepExp.const 18446744071576662526#64, Flapjack.CrepExp.var 15])

def crepBody87_106 : CrepProg (BitVec 64) :=
.seq crepBody87_105 crepBody87_1

def crepBody87_107 : CrepProg (BitVec 64) :=
.seq crepBody87_104 crepBody87_106

def crepBody87_108 : CrepProg (BitVec 64) :=
.seq crepBody87_107 crepBody87_55

def crepBody87_109 : CrepProg (BitVec 64) :=
.seq crepBody87_108 crepBody87_58

def crepBody87_110 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 19,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 18,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 24,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 18]]],
      Flapjack.CrepExp.const 18446744072029472423#64, Flapjack.CrepExp.var 16])

def crepBody87_111 : CrepProg (BitVec 64) :=
.seq crepBody87_110 crepBody87_1

def crepBody87_112 : CrepProg (BitVec 64) :=
.seq crepBody87_109 crepBody87_111

def crepBody87_113 : CrepProg (BitVec 64) :=
.seq crepBody87_112 crepBody87_65

def crepBody87_114 : CrepProg (BitVec 64) :=
.seq crepBody87_113 crepBody87_68

def crepBody87_115 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 18,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 25,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 23,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25]]],
      Flapjack.CrepExp.const 18446744072662806900#64, Flapjack.CrepExp.var 17])

def crepBody87_116 : CrepProg (BitVec 64) :=
.seq crepBody87_115 crepBody87_1

def crepBody87_117 : CrepProg (BitVec 64) :=
.seq crepBody87_114 crepBody87_116

def crepBody87_118 : CrepProg (BitVec 64) :=
.seq crepBody87_117 crepBody87_75

def crepBody87_119 : CrepProg (BitVec 64) :=
.seq crepBody87_118 crepBody87_78

def crepBody87_120 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2 (Flapjack.CrepExp.var 27)

def crepBody87_121 : CrepProg (BitVec 64) :=
.seq crepBody87_120 crepBody87_1

def crepBody87_122 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 2,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 7#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 25#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 18#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 14#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 3#64)],
        Flapjack.CrepExp.var 11,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 16) (Flapjack.CrepExp.const 17#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 16) (Flapjack.CrepExp.const 15#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 16) (Flapjack.CrepExp.const 19#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 16) (Flapjack.CrepExp.const 13#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 16) (Flapjack.CrepExp.const 10#64)]])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_121

def crepBody87_123 : CrepProg (BitVec 64) :=
.seq crepBody87_119 crepBody87_122

def crepBody87_124 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 25,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 24,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 22,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24]]],
      Flapjack.CrepExp.const 18446744073249974721#64, Flapjack.CrepExp.var 2])

def crepBody87_125 : CrepProg (BitVec 64) :=
.seq crepBody87_124 crepBody87_1

def crepBody87_126 : CrepProg (BitVec 64) :=
.seq crepBody87_123 crepBody87_125

def crepBody87_127 : CrepProg (BitVec 64) :=
.seq crepBody87_126 crepBody87_5

def crepBody87_128 : CrepProg (BitVec 64) :=
.seq crepBody87_127 crepBody87_8

def crepBody87_129 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 27)

def crepBody87_130 : CrepProg (BitVec 64) :=
.seq crepBody87_129 crepBody87_1

def crepBody87_131 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 3,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 7#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 25#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 18#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 14#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 3#64)],
        Flapjack.CrepExp.var 12,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.const 17#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.const 15#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.const 19#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.const 13#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.const 10#64)]])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_130

def crepBody87_132 : CrepProg (BitVec 64) :=
.seq crepBody87_128 crepBody87_131

def crepBody87_133 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 24,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 23,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 21,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23]]],
      Flapjack.CrepExp.const 18446744073436809094#64, Flapjack.CrepExp.var 3])

def crepBody87_134 : CrepProg (BitVec 64) :=
.seq crepBody87_133 crepBody87_1

def crepBody87_135 : CrepProg (BitVec 64) :=
.seq crepBody87_132 crepBody87_134

def crepBody87_136 : CrepProg (BitVec 64) :=
.seq crepBody87_135 crepBody87_15

def crepBody87_137 : CrepProg (BitVec 64) :=
.seq crepBody87_136 crepBody87_18

def crepBody87_138 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.var 27)

def crepBody87_139 : CrepProg (BitVec 64) :=
.seq crepBody87_138 crepBody87_1

def crepBody87_140 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 4,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 7#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 25#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 18#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 14#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 3#64)],
        Flapjack.CrepExp.var 13,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 17#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 15#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 19#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 13#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 10#64)]])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_139

def crepBody87_141 : CrepProg (BitVec 64) :=
.seq crepBody87_137 crepBody87_140

def crepBody87_142 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 23,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 22,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 20,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22]]],
      Flapjack.CrepExp.const 264347078#64, Flapjack.CrepExp.var 4])

def crepBody87_143 : CrepProg (BitVec 64) :=
.seq crepBody87_142 crepBody87_1

def crepBody87_144 : CrepProg (BitVec 64) :=
.seq crepBody87_141 crepBody87_143

def crepBody87_145 : CrepProg (BitVec 64) :=
.seq crepBody87_144 crepBody87_25

def crepBody87_146 : CrepProg (BitVec 64) :=
.seq crepBody87_145 crepBody87_28

def crepBody87_147 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.var 27)

def crepBody87_148 : CrepProg (BitVec 64) :=
.seq crepBody87_147 crepBody87_1

def crepBody87_149 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 5,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 7#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 25#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 18#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 14#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 3#64)],
        Flapjack.CrepExp.var 14,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 17#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 15#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 19#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 13#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 10#64)]])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_148

def crepBody87_150 : CrepProg (BitVec 64) :=
.seq crepBody87_146 crepBody87_149

def crepBody87_151 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 22,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 21,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 19,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21]]],
      Flapjack.CrepExp.const 604807628#64, Flapjack.CrepExp.var 5])

def crepBody87_152 : CrepProg (BitVec 64) :=
.seq crepBody87_151 crepBody87_1

def crepBody87_153 : CrepProg (BitVec 64) :=
.seq crepBody87_150 crepBody87_152

def crepBody87_154 : CrepProg (BitVec 64) :=
.seq crepBody87_153 crepBody87_35

def crepBody87_155 : CrepProg (BitVec 64) :=
.seq crepBody87_154 crepBody87_38

def crepBody87_156 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.var 27)

def crepBody87_157 : CrepProg (BitVec 64) :=
.seq crepBody87_156 crepBody87_1

def crepBody87_158 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 6,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 7#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 25#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 18#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 14#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 3#64)],
        Flapjack.CrepExp.var 15,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 17#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 15#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 19#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 13#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 10#64)]])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_157

def crepBody87_159 : CrepProg (BitVec 64) :=
.seq crepBody87_155 crepBody87_158

def crepBody87_160 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 21,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 20,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 18,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]]],
      Flapjack.CrepExp.const 770255983#64, Flapjack.CrepExp.var 6])

def crepBody87_161 : CrepProg (BitVec 64) :=
.seq crepBody87_160 crepBody87_1

def crepBody87_162 : CrepProg (BitVec 64) :=
.seq crepBody87_159 crepBody87_161

def crepBody87_163 : CrepProg (BitVec 64) :=
.seq crepBody87_162 crepBody87_45

def crepBody87_164 : CrepProg (BitVec 64) :=
.seq crepBody87_163 crepBody87_48

def crepBody87_165 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 27)

def crepBody87_166 : CrepProg (BitVec 64) :=
.seq crepBody87_165 crepBody87_1

def crepBody87_167 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 7,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 7#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 25#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 18#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 14#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 3#64)],
        Flapjack.CrepExp.var 16,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 17#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 15#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 19#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 13#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 10#64)]])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_166

def crepBody87_168 : CrepProg (BitVec 64) :=
.seq crepBody87_164 crepBody87_167

def crepBody87_169 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 20,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 19,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 25,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19]]],
      Flapjack.CrepExp.const 1249150122#64, Flapjack.CrepExp.var 7])

def crepBody87_170 : CrepProg (BitVec 64) :=
.seq crepBody87_169 crepBody87_1

def crepBody87_171 : CrepProg (BitVec 64) :=
.seq crepBody87_168 crepBody87_170

def crepBody87_172 : CrepProg (BitVec 64) :=
.seq crepBody87_171 crepBody87_55

def crepBody87_173 : CrepProg (BitVec 64) :=
.seq crepBody87_172 crepBody87_58

def crepBody87_174 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 27)

def crepBody87_175 : CrepProg (BitVec 64) :=
.seq crepBody87_174 crepBody87_1

def crepBody87_176 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 8,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 7#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 25#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 18#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 14#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 3#64)],
        Flapjack.CrepExp.var 17,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 17#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 15#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 19#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 13#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 10#64)]])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_175

def crepBody87_177 : CrepProg (BitVec 64) :=
.seq crepBody87_173 crepBody87_176

def crepBody87_178 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 19,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 18,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 24,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 18]]],
      Flapjack.CrepExp.const 1555081692#64, Flapjack.CrepExp.var 8])

def crepBody87_179 : CrepProg (BitVec 64) :=
.seq crepBody87_178 crepBody87_1

def crepBody87_180 : CrepProg (BitVec 64) :=
.seq crepBody87_177 crepBody87_179

def crepBody87_181 : CrepProg (BitVec 64) :=
.seq crepBody87_180 crepBody87_65

def crepBody87_182 : CrepProg (BitVec 64) :=
.seq crepBody87_181 crepBody87_68

def crepBody87_183 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.var 27)

def crepBody87_184 : CrepProg (BitVec 64) :=
.seq crepBody87_183 crepBody87_1

def crepBody87_185 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 9,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 7#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 25#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 18#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 14#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 3#64)],
        Flapjack.CrepExp.var 2,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 17#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 15#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 19#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 13#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 10#64)]])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_184

def crepBody87_186 : CrepProg (BitVec 64) :=
.seq crepBody87_182 crepBody87_185

def crepBody87_187 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 18,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 25,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 23,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25]]],
      Flapjack.CrepExp.const 1996064986#64, Flapjack.CrepExp.var 9])

def crepBody87_188 : CrepProg (BitVec 64) :=
.seq crepBody87_187 crepBody87_1

def crepBody87_189 : CrepProg (BitVec 64) :=
.seq crepBody87_186 crepBody87_188

def crepBody87_190 : CrepProg (BitVec 64) :=
.seq crepBody87_189 crepBody87_75

def crepBody87_191 : CrepProg (BitVec 64) :=
.seq crepBody87_190 crepBody87_78

def crepBody87_192 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 10 (Flapjack.CrepExp.var 27)

def crepBody87_193 : CrepProg (BitVec 64) :=
.seq crepBody87_192 crepBody87_1

def crepBody87_194 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 10,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 7#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 25#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 18#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 14#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 3#64)],
        Flapjack.CrepExp.var 3,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 17#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 15#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 19#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 13#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 10#64)]])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_193

def crepBody87_195 : CrepProg (BitVec 64) :=
.seq crepBody87_191 crepBody87_194

def crepBody87_196 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 25,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 24,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 22,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24]]],
      Flapjack.CrepExp.const 18446744071968805202#64, Flapjack.CrepExp.var 10])

def crepBody87_197 : CrepProg (BitVec 64) :=
.seq crepBody87_196 crepBody87_1

def crepBody87_198 : CrepProg (BitVec 64) :=
.seq crepBody87_195 crepBody87_197

def crepBody87_199 : CrepProg (BitVec 64) :=
.seq crepBody87_198 crepBody87_5

def crepBody87_200 : CrepProg (BitVec 64) :=
.seq crepBody87_199 crepBody87_8

def crepBody87_201 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11 (Flapjack.CrepExp.var 27)

def crepBody87_202 : CrepProg (BitVec 64) :=
.seq crepBody87_201 crepBody87_1

def crepBody87_203 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 11,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.const 7#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.const 25#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.const 18#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.const 14#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.const 3#64)],
        Flapjack.CrepExp.var 4,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 17#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 15#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 19#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 13#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 10#64)]])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_202

def crepBody87_204 : CrepProg (BitVec 64) :=
.seq crepBody87_200 crepBody87_203

def crepBody87_205 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 24,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 23,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 21,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23]]],
      Flapjack.CrepExp.const 18446744072236418669#64, Flapjack.CrepExp.var 11])

def crepBody87_206 : CrepProg (BitVec 64) :=
.seq crepBody87_205 crepBody87_1

def crepBody87_207 : CrepProg (BitVec 64) :=
.seq crepBody87_204 crepBody87_206

def crepBody87_208 : CrepProg (BitVec 64) :=
.seq crepBody87_207 crepBody87_15

def crepBody87_209 : CrepProg (BitVec 64) :=
.seq crepBody87_208 crepBody87_18

def crepBody87_210 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 12 (Flapjack.CrepExp.var 27)

def crepBody87_211 : CrepProg (BitVec 64) :=
.seq crepBody87_210 crepBody87_1

def crepBody87_212 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 12,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 7#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 25#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 18#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 14#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 3#64)],
        Flapjack.CrepExp.var 5,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 17#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 15#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 19#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 13#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 10#64)]])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_211

def crepBody87_213 : CrepProg (BitVec 64) :=
.seq crepBody87_209 crepBody87_212

def crepBody87_214 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 23,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 22,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 20,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22]]],
      Flapjack.CrepExp.const 18446744072367581128#64, Flapjack.CrepExp.var 12])

def crepBody87_215 : CrepProg (BitVec 64) :=
.seq crepBody87_214 crepBody87_1

def crepBody87_216 : CrepProg (BitVec 64) :=
.seq crepBody87_213 crepBody87_215

def crepBody87_217 : CrepProg (BitVec 64) :=
.seq crepBody87_216 crepBody87_25

def crepBody87_218 : CrepProg (BitVec 64) :=
.seq crepBody87_217 crepBody87_28

def crepBody87_219 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 13 (Flapjack.CrepExp.var 27)

def crepBody87_220 : CrepProg (BitVec 64) :=
.seq crepBody87_219 crepBody87_1

def crepBody87_221 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 13,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 7#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 25#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 18#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 14#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 3#64)],
        Flapjack.CrepExp.var 6,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 17#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 15#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 19#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 13#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 10#64)]])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_220

def crepBody87_222 : CrepProg (BitVec 64) :=
.seq crepBody87_218 crepBody87_221

def crepBody87_223 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 22,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 21,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 19,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21]]],
      Flapjack.CrepExp.const 18446744072624897991#64, Flapjack.CrepExp.var 13])

def crepBody87_224 : CrepProg (BitVec 64) :=
.seq crepBody87_223 crepBody87_1

def crepBody87_225 : CrepProg (BitVec 64) :=
.seq crepBody87_222 crepBody87_224

def crepBody87_226 : CrepProg (BitVec 64) :=
.seq crepBody87_225 crepBody87_35

def crepBody87_227 : CrepProg (BitVec 64) :=
.seq crepBody87_226 crepBody87_38

def crepBody87_228 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 14 (Flapjack.CrepExp.var 27)

def crepBody87_229 : CrepProg (BitVec 64) :=
.seq crepBody87_228 crepBody87_1

def crepBody87_230 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 14,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.const 7#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.const 25#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.const 18#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.const 14#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.const 3#64)],
        Flapjack.CrepExp.var 7,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.const 17#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.const 15#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.const 19#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.const 13#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.const 10#64)]])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_229

def crepBody87_231 : CrepProg (BitVec 64) :=
.seq crepBody87_227 crepBody87_230

def crepBody87_232 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 21,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 20,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 18,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]]],
      Flapjack.CrepExp.const 18446744072751156211#64, Flapjack.CrepExp.var 14])

def crepBody87_233 : CrepProg (BitVec 64) :=
.seq crepBody87_232 crepBody87_1

def crepBody87_234 : CrepProg (BitVec 64) :=
.seq crepBody87_231 crepBody87_233

def crepBody87_235 : CrepProg (BitVec 64) :=
.seq crepBody87_234 crepBody87_45

def crepBody87_236 : CrepProg (BitVec 64) :=
.seq crepBody87_235 crepBody87_48

def crepBody87_237 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 15 (Flapjack.CrepExp.var 27)

def crepBody87_238 : CrepProg (BitVec 64) :=
.seq crepBody87_237 crepBody87_1

def crepBody87_239 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 15,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 16) (Flapjack.CrepExp.const 7#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 16) (Flapjack.CrepExp.const 25#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 16) (Flapjack.CrepExp.const 18#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 16) (Flapjack.CrepExp.const 14#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 16) (Flapjack.CrepExp.const 3#64)],
        Flapjack.CrepExp.var 8,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 17#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 15#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 19#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 13#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 10#64)]])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_238

def crepBody87_240 : CrepProg (BitVec 64) :=
.seq crepBody87_236 crepBody87_239

def crepBody87_241 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 20,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 19,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 25,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19]]],
      Flapjack.CrepExp.const 18446744072999113031#64, Flapjack.CrepExp.var 15])

def crepBody87_242 : CrepProg (BitVec 64) :=
.seq crepBody87_241 crepBody87_1

def crepBody87_243 : CrepProg (BitVec 64) :=
.seq crepBody87_240 crepBody87_242

def crepBody87_244 : CrepProg (BitVec 64) :=
.seq crepBody87_243 crepBody87_55

def crepBody87_245 : CrepProg (BitVec 64) :=
.seq crepBody87_244 crepBody87_58

def crepBody87_246 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 16 (Flapjack.CrepExp.var 27)

def crepBody87_247 : CrepProg (BitVec 64) :=
.seq crepBody87_246 crepBody87_1

def crepBody87_248 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 16,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.const 7#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.const 25#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.const 18#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.const 14#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.const 3#64)],
        Flapjack.CrepExp.var 9,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 17#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 15#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 19#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 13#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 10#64)]])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_247

def crepBody87_249 : CrepProg (BitVec 64) :=
.seq crepBody87_245 crepBody87_248

def crepBody87_250 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 19,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 18,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 24,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 18]]],
      Flapjack.CrepExp.const 113926993#64, Flapjack.CrepExp.var 16])

def crepBody87_251 : CrepProg (BitVec 64) :=
.seq crepBody87_250 crepBody87_1

def crepBody87_252 : CrepProg (BitVec 64) :=
.seq crepBody87_249 crepBody87_251

def crepBody87_253 : CrepProg (BitVec 64) :=
.seq crepBody87_252 crepBody87_65

def crepBody87_254 : CrepProg (BitVec 64) :=
.seq crepBody87_253 crepBody87_68

def crepBody87_255 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 17 (Flapjack.CrepExp.var 27)

def crepBody87_256 : CrepProg (BitVec 64) :=
.seq crepBody87_255 crepBody87_1

def crepBody87_257 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 17,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 7#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 25#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 18#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 14#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 3#64)],
        Flapjack.CrepExp.var 10,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.const 17#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.const 15#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.const 19#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.const 13#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.const 10#64)]])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_256

def crepBody87_258 : CrepProg (BitVec 64) :=
.seq crepBody87_254 crepBody87_257

def crepBody87_259 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 18,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 25,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 23,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25]]],
      Flapjack.CrepExp.const 338241895#64, Flapjack.CrepExp.var 17])

def crepBody87_260 : CrepProg (BitVec 64) :=
.seq crepBody87_259 crepBody87_1

def crepBody87_261 : CrepProg (BitVec 64) :=
.seq crepBody87_258 crepBody87_260

def crepBody87_262 : CrepProg (BitVec 64) :=
.seq crepBody87_261 crepBody87_75

def crepBody87_263 : CrepProg (BitVec 64) :=
.seq crepBody87_262 crepBody87_78

def crepBody87_264 : CrepProg (BitVec 64) :=
.seq crepBody87_263 crepBody87_122

def crepBody87_265 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 25,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 24,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 22,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24]]],
      Flapjack.CrepExp.const 666307205#64, Flapjack.CrepExp.var 2])

def crepBody87_266 : CrepProg (BitVec 64) :=
.seq crepBody87_265 crepBody87_1

def crepBody87_267 : CrepProg (BitVec 64) :=
.seq crepBody87_264 crepBody87_266

def crepBody87_268 : CrepProg (BitVec 64) :=
.seq crepBody87_267 crepBody87_5

def crepBody87_269 : CrepProg (BitVec 64) :=
.seq crepBody87_268 crepBody87_8

def crepBody87_270 : CrepProg (BitVec 64) :=
.seq crepBody87_269 crepBody87_131

def crepBody87_271 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 24,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 23,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 21,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23]]],
      Flapjack.CrepExp.const 773529912#64, Flapjack.CrepExp.var 3])

def crepBody87_272 : CrepProg (BitVec 64) :=
.seq crepBody87_271 crepBody87_1

def crepBody87_273 : CrepProg (BitVec 64) :=
.seq crepBody87_270 crepBody87_272

def crepBody87_274 : CrepProg (BitVec 64) :=
.seq crepBody87_273 crepBody87_15

def crepBody87_275 : CrepProg (BitVec 64) :=
.seq crepBody87_274 crepBody87_18

def crepBody87_276 : CrepProg (BitVec 64) :=
.seq crepBody87_275 crepBody87_140

def crepBody87_277 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 23,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 22,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 20,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22]]],
      Flapjack.CrepExp.const 1294757372#64, Flapjack.CrepExp.var 4])

def crepBody87_278 : CrepProg (BitVec 64) :=
.seq crepBody87_277 crepBody87_1

def crepBody87_279 : CrepProg (BitVec 64) :=
.seq crepBody87_276 crepBody87_278

def crepBody87_280 : CrepProg (BitVec 64) :=
.seq crepBody87_279 crepBody87_25

def crepBody87_281 : CrepProg (BitVec 64) :=
.seq crepBody87_280 crepBody87_28

def crepBody87_282 : CrepProg (BitVec 64) :=
.seq crepBody87_281 crepBody87_149

def crepBody87_283 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 22,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 21,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 19,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21]]],
      Flapjack.CrepExp.const 1396182291#64, Flapjack.CrepExp.var 5])

def crepBody87_284 : CrepProg (BitVec 64) :=
.seq crepBody87_283 crepBody87_1

def crepBody87_285 : CrepProg (BitVec 64) :=
.seq crepBody87_282 crepBody87_284

def crepBody87_286 : CrepProg (BitVec 64) :=
.seq crepBody87_285 crepBody87_35

def crepBody87_287 : CrepProg (BitVec 64) :=
.seq crepBody87_286 crepBody87_38

def crepBody87_288 : CrepProg (BitVec 64) :=
.seq crepBody87_287 crepBody87_158

def crepBody87_289 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 21,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 20,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 18,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]]],
      Flapjack.CrepExp.const 1695183700#64, Flapjack.CrepExp.var 6])

def crepBody87_290 : CrepProg (BitVec 64) :=
.seq crepBody87_289 crepBody87_1

def crepBody87_291 : CrepProg (BitVec 64) :=
.seq crepBody87_288 crepBody87_290

def crepBody87_292 : CrepProg (BitVec 64) :=
.seq crepBody87_291 crepBody87_45

def crepBody87_293 : CrepProg (BitVec 64) :=
.seq crepBody87_292 crepBody87_48

def crepBody87_294 : CrepProg (BitVec 64) :=
.seq crepBody87_293 crepBody87_167

def crepBody87_295 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 20,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 19,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 25,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19]]],
      Flapjack.CrepExp.const 1986661051#64, Flapjack.CrepExp.var 7])

def crepBody87_296 : CrepProg (BitVec 64) :=
.seq crepBody87_295 crepBody87_1

def crepBody87_297 : CrepProg (BitVec 64) :=
.seq crepBody87_294 crepBody87_296

def crepBody87_298 : CrepProg (BitVec 64) :=
.seq crepBody87_297 crepBody87_55

def crepBody87_299 : CrepProg (BitVec 64) :=
.seq crepBody87_298 crepBody87_58

def crepBody87_300 : CrepProg (BitVec 64) :=
.seq crepBody87_299 crepBody87_176

def crepBody87_301 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 19,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 18,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 24,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 18]]],
      Flapjack.CrepExp.const 18446744071591610670#64, Flapjack.CrepExp.var 8])

def crepBody87_302 : CrepProg (BitVec 64) :=
.seq crepBody87_301 crepBody87_1

def crepBody87_303 : CrepProg (BitVec 64) :=
.seq crepBody87_300 crepBody87_302

def crepBody87_304 : CrepProg (BitVec 64) :=
.seq crepBody87_303 crepBody87_65

def crepBody87_305 : CrepProg (BitVec 64) :=
.seq crepBody87_304 crepBody87_68

def crepBody87_306 : CrepProg (BitVec 64) :=
.seq crepBody87_305 crepBody87_185

def crepBody87_307 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 18,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 25,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 23,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25]]],
      Flapjack.CrepExp.const 18446744071871540357#64, Flapjack.CrepExp.var 9])

def crepBody87_308 : CrepProg (BitVec 64) :=
.seq crepBody87_307 crepBody87_1

def crepBody87_309 : CrepProg (BitVec 64) :=
.seq crepBody87_306 crepBody87_308

def crepBody87_310 : CrepProg (BitVec 64) :=
.seq crepBody87_309 crepBody87_75

def crepBody87_311 : CrepProg (BitVec 64) :=
.seq crepBody87_310 crepBody87_78

def crepBody87_312 : CrepProg (BitVec 64) :=
.seq crepBody87_311 crepBody87_194

def crepBody87_313 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 25,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 24,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 22,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24]]],
      Flapjack.CrepExp.const 18446744072145070241#64, Flapjack.CrepExp.var 10])

def crepBody87_314 : CrepProg (BitVec 64) :=
.seq crepBody87_313 crepBody87_1

def crepBody87_315 : CrepProg (BitVec 64) :=
.seq crepBody87_312 crepBody87_314

def crepBody87_316 : CrepProg (BitVec 64) :=
.seq crepBody87_315 crepBody87_5

def crepBody87_317 : CrepProg (BitVec 64) :=
.seq crepBody87_316 crepBody87_8

def crepBody87_318 : CrepProg (BitVec 64) :=
.seq crepBody87_317 crepBody87_203

def crepBody87_319 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 24,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 23,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 21,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23]]],
      Flapjack.CrepExp.const 18446744072234886731#64, Flapjack.CrepExp.var 11])

def crepBody87_320 : CrepProg (BitVec 64) :=
.seq crepBody87_319 crepBody87_1

def crepBody87_321 : CrepProg (BitVec 64) :=
.seq crepBody87_318 crepBody87_320

def crepBody87_322 : CrepProg (BitVec 64) :=
.seq crepBody87_321 crepBody87_15

def crepBody87_323 : CrepProg (BitVec 64) :=
.seq crepBody87_322 crepBody87_18

def crepBody87_324 : CrepProg (BitVec 64) :=
.seq crepBody87_323 crepBody87_212

def crepBody87_325 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 23,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 22,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 20,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22]]],
      Flapjack.CrepExp.const 18446744072674315120#64, Flapjack.CrepExp.var 12])

def crepBody87_326 : CrepProg (BitVec 64) :=
.seq crepBody87_325 crepBody87_1

def crepBody87_327 : CrepProg (BitVec 64) :=
.seq crepBody87_324 crepBody87_326

def crepBody87_328 : CrepProg (BitVec 64) :=
.seq crepBody87_327 crepBody87_25

def crepBody87_329 : CrepProg (BitVec 64) :=
.seq crepBody87_328 crepBody87_28

def crepBody87_330 : CrepProg (BitVec 64) :=
.seq crepBody87_329 crepBody87_221

def crepBody87_331 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 22,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 21,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 19,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21]]],
      Flapjack.CrepExp.const 18446744072760349091#64, Flapjack.CrepExp.var 13])

def crepBody87_332 : CrepProg (BitVec 64) :=
.seq crepBody87_331 crepBody87_1

def crepBody87_333 : CrepProg (BitVec 64) :=
.seq crepBody87_330 crepBody87_332

def crepBody87_334 : CrepProg (BitVec 64) :=
.seq crepBody87_333 crepBody87_35

def crepBody87_335 : CrepProg (BitVec 64) :=
.seq crepBody87_334 crepBody87_38

def crepBody87_336 : CrepProg (BitVec 64) :=
.seq crepBody87_335 crepBody87_230

def crepBody87_337 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 21,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 20,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 18,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]]],
      Flapjack.CrepExp.const 18446744072930650137#64, Flapjack.CrepExp.var 14])

def crepBody87_338 : CrepProg (BitVec 64) :=
.seq crepBody87_337 crepBody87_1

def crepBody87_339 : CrepProg (BitVec 64) :=
.seq crepBody87_336 crepBody87_338

def crepBody87_340 : CrepProg (BitVec 64) :=
.seq crepBody87_339 crepBody87_45

def crepBody87_341 : CrepProg (BitVec 64) :=
.seq crepBody87_340 crepBody87_48

def crepBody87_342 : CrepProg (BitVec 64) :=
.seq crepBody87_341 crepBody87_239

def crepBody87_343 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 20,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 19,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 25,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19]]],
      Flapjack.CrepExp.const 18446744073014937124#64, Flapjack.CrepExp.var 15])

def crepBody87_344 : CrepProg (BitVec 64) :=
.seq crepBody87_343 crepBody87_1

def crepBody87_345 : CrepProg (BitVec 64) :=
.seq crepBody87_342 crepBody87_344

def crepBody87_346 : CrepProg (BitVec 64) :=
.seq crepBody87_345 crepBody87_55

def crepBody87_347 : CrepProg (BitVec 64) :=
.seq crepBody87_346 crepBody87_58

def crepBody87_348 : CrepProg (BitVec 64) :=
.seq crepBody87_347 crepBody87_248

def crepBody87_349 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 19,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 18,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 24,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 18]]],
      Flapjack.CrepExp.const 18446744073509156229#64, Flapjack.CrepExp.var 16])

def crepBody87_350 : CrepProg (BitVec 64) :=
.seq crepBody87_349 crepBody87_1

def crepBody87_351 : CrepProg (BitVec 64) :=
.seq crepBody87_348 crepBody87_350

def crepBody87_352 : CrepProg (BitVec 64) :=
.seq crepBody87_351 crepBody87_65

def crepBody87_353 : CrepProg (BitVec 64) :=
.seq crepBody87_352 crepBody87_68

def crepBody87_354 : CrepProg (BitVec 64) :=
.seq crepBody87_353 crepBody87_257

def crepBody87_355 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 18,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 25,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 23,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25]]],
      Flapjack.CrepExp.const 275423344#64, Flapjack.CrepExp.var 17])

def crepBody87_356 : CrepProg (BitVec 64) :=
.seq crepBody87_355 crepBody87_1

def crepBody87_357 : CrepProg (BitVec 64) :=
.seq crepBody87_354 crepBody87_356

def crepBody87_358 : CrepProg (BitVec 64) :=
.seq crepBody87_357 crepBody87_75

def crepBody87_359 : CrepProg (BitVec 64) :=
.seq crepBody87_358 crepBody87_78

def crepBody87_360 : CrepProg (BitVec 64) :=
.seq crepBody87_359 crepBody87_122

def crepBody87_361 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 25,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 24,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 22,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24]]],
      Flapjack.CrepExp.const 430227734#64, Flapjack.CrepExp.var 2])

def crepBody87_362 : CrepProg (BitVec 64) :=
.seq crepBody87_361 crepBody87_1

def crepBody87_363 : CrepProg (BitVec 64) :=
.seq crepBody87_360 crepBody87_362

def crepBody87_364 : CrepProg (BitVec 64) :=
.seq crepBody87_363 crepBody87_5

def crepBody87_365 : CrepProg (BitVec 64) :=
.seq crepBody87_364 crepBody87_8

def crepBody87_366 : CrepProg (BitVec 64) :=
.seq crepBody87_365 crepBody87_131

def crepBody87_367 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 24,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 23,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 21,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23]]],
      Flapjack.CrepExp.const 506948616#64, Flapjack.CrepExp.var 3])

def crepBody87_368 : CrepProg (BitVec 64) :=
.seq crepBody87_367 crepBody87_1

def crepBody87_369 : CrepProg (BitVec 64) :=
.seq crepBody87_366 crepBody87_368

def crepBody87_370 : CrepProg (BitVec 64) :=
.seq crepBody87_369 crepBody87_15

def crepBody87_371 : CrepProg (BitVec 64) :=
.seq crepBody87_370 crepBody87_18

def crepBody87_372 : CrepProg (BitVec 64) :=
.seq crepBody87_371 crepBody87_140

def crepBody87_373 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 23,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 22,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 20,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22]]],
      Flapjack.CrepExp.const 659060556#64, Flapjack.CrepExp.var 4])

def crepBody87_374 : CrepProg (BitVec 64) :=
.seq crepBody87_373 crepBody87_1

def crepBody87_375 : CrepProg (BitVec 64) :=
.seq crepBody87_372 crepBody87_374

def crepBody87_376 : CrepProg (BitVec 64) :=
.seq crepBody87_375 crepBody87_25

def crepBody87_377 : CrepProg (BitVec 64) :=
.seq crepBody87_376 crepBody87_28

def crepBody87_378 : CrepProg (BitVec 64) :=
.seq crepBody87_377 crepBody87_149

def crepBody87_379 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 22,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 21,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 19,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21]]],
      Flapjack.CrepExp.const 883997877#64, Flapjack.CrepExp.var 5])

def crepBody87_380 : CrepProg (BitVec 64) :=
.seq crepBody87_379 crepBody87_1

def crepBody87_381 : CrepProg (BitVec 64) :=
.seq crepBody87_378 crepBody87_380

def crepBody87_382 : CrepProg (BitVec 64) :=
.seq crepBody87_381 crepBody87_35

def crepBody87_383 : CrepProg (BitVec 64) :=
.seq crepBody87_382 crepBody87_38

def crepBody87_384 : CrepProg (BitVec 64) :=
.seq crepBody87_383 crepBody87_158

def crepBody87_385 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 21,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 20,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 18,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]]],
      Flapjack.CrepExp.const 958139571#64, Flapjack.CrepExp.var 6])

def crepBody87_386 : CrepProg (BitVec 64) :=
.seq crepBody87_385 crepBody87_1

def crepBody87_387 : CrepProg (BitVec 64) :=
.seq crepBody87_384 crepBody87_386

def crepBody87_388 : CrepProg (BitVec 64) :=
.seq crepBody87_387 crepBody87_45

def crepBody87_389 : CrepProg (BitVec 64) :=
.seq crepBody87_388 crepBody87_48

def crepBody87_390 : CrepProg (BitVec 64) :=
.seq crepBody87_389 crepBody87_167

def crepBody87_391 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 20,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 19,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 25,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19]]],
      Flapjack.CrepExp.const 1322822218#64, Flapjack.CrepExp.var 7])

def crepBody87_392 : CrepProg (BitVec 64) :=
.seq crepBody87_391 crepBody87_1

def crepBody87_393 : CrepProg (BitVec 64) :=
.seq crepBody87_390 crepBody87_392

def crepBody87_394 : CrepProg (BitVec 64) :=
.seq crepBody87_393 crepBody87_55

def crepBody87_395 : CrepProg (BitVec 64) :=
.seq crepBody87_394 crepBody87_58

def crepBody87_396 : CrepProg (BitVec 64) :=
.seq crepBody87_395 crepBody87_176

def crepBody87_397 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 19,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 18,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 24,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 18]]],
      Flapjack.CrepExp.const 1537002063#64, Flapjack.CrepExp.var 8])

def crepBody87_398 : CrepProg (BitVec 64) :=
.seq crepBody87_397 crepBody87_1

def crepBody87_399 : CrepProg (BitVec 64) :=
.seq crepBody87_396 crepBody87_398

def crepBody87_400 : CrepProg (BitVec 64) :=
.seq crepBody87_399 crepBody87_65

def crepBody87_401 : CrepProg (BitVec 64) :=
.seq crepBody87_400 crepBody87_68

def crepBody87_402 : CrepProg (BitVec 64) :=
.seq crepBody87_401 crepBody87_185

def crepBody87_403 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 18,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 25,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 23,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25]]],
      Flapjack.CrepExp.const 1747873779#64, Flapjack.CrepExp.var 9])

def crepBody87_404 : CrepProg (BitVec 64) :=
.seq crepBody87_403 crepBody87_1

def crepBody87_405 : CrepProg (BitVec 64) :=
.seq crepBody87_402 crepBody87_404

def crepBody87_406 : CrepProg (BitVec 64) :=
.seq crepBody87_405 crepBody87_75

def crepBody87_407 : CrepProg (BitVec 64) :=
.seq crepBody87_406 crepBody87_78

def crepBody87_408 : CrepProg (BitVec 64) :=
.seq crepBody87_407 crepBody87_194

def crepBody87_409 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 25,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 24,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 22,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24]]],
      Flapjack.CrepExp.const 1955562222#64, Flapjack.CrepExp.var 10])

def crepBody87_410 : CrepProg (BitVec 64) :=
.seq crepBody87_409 crepBody87_1

def crepBody87_411 : CrepProg (BitVec 64) :=
.seq crepBody87_408 crepBody87_410

def crepBody87_412 : CrepProg (BitVec 64) :=
.seq crepBody87_411 crepBody87_5

def crepBody87_413 : CrepProg (BitVec 64) :=
.seq crepBody87_412 crepBody87_8

def crepBody87_414 : CrepProg (BitVec 64) :=
.seq crepBody87_413 crepBody87_203

def crepBody87_415 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 24,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 23,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 21,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23]]],
      Flapjack.CrepExp.const 2024104815#64, Flapjack.CrepExp.var 11])

def crepBody87_416 : CrepProg (BitVec 64) :=
.seq crepBody87_415 crepBody87_1

def crepBody87_417 : CrepProg (BitVec 64) :=
.seq crepBody87_414 crepBody87_416

def crepBody87_418 : CrepProg (BitVec 64) :=
.seq crepBody87_417 crepBody87_15

def crepBody87_419 : CrepProg (BitVec 64) :=
.seq crepBody87_418 crepBody87_18

def crepBody87_420 : CrepProg (BitVec 64) :=
.seq crepBody87_419 crepBody87_212

def crepBody87_421 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 23,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 22,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 20,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22]]],
      Flapjack.CrepExp.const 18446744071642314772#64, Flapjack.CrepExp.var 12])

def crepBody87_422 : CrepProg (BitVec 64) :=
.seq crepBody87_421 crepBody87_1

def crepBody87_423 : CrepProg (BitVec 64) :=
.seq crepBody87_420 crepBody87_422

def crepBody87_424 : CrepProg (BitVec 64) :=
.seq crepBody87_423 crepBody87_25

def crepBody87_425 : CrepProg (BitVec 64) :=
.seq crepBody87_424 crepBody87_28

def crepBody87_426 : CrepProg (BitVec 64) :=
.seq crepBody87_425 crepBody87_221

def crepBody87_427 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 22,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 21,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 19,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21]]],
      Flapjack.CrepExp.const 18446744071776436744#64, Flapjack.CrepExp.var 13])

def crepBody87_428 : CrepProg (BitVec 64) :=
.seq crepBody87_427 crepBody87_1

def crepBody87_429 : CrepProg (BitVec 64) :=
.seq crepBody87_426 crepBody87_428

def crepBody87_430 : CrepProg (BitVec 64) :=
.seq crepBody87_429 crepBody87_35

def crepBody87_431 : CrepProg (BitVec 64) :=
.seq crepBody87_430 crepBody87_38

def crepBody87_432 : CrepProg (BitVec 64) :=
.seq crepBody87_431 crepBody87_230

def crepBody87_433 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 21,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 20,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 18,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]]],
      Flapjack.CrepExp.const 18446744071843020794#64, Flapjack.CrepExp.var 14])

def crepBody87_434 : CrepProg (BitVec 64) :=
.seq crepBody87_433 crepBody87_1

def crepBody87_435 : CrepProg (BitVec 64) :=
.seq crepBody87_432 crepBody87_434

def crepBody87_436 : CrepProg (BitVec 64) :=
.seq crepBody87_435 crepBody87_45

def crepBody87_437 : CrepProg (BitVec 64) :=
.seq crepBody87_436 crepBody87_48

def crepBody87_438 : CrepProg (BitVec 64) :=
.seq crepBody87_437 crepBody87_239

def crepBody87_439 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 20,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 19,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 25,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19]]],
      Flapjack.CrepExp.const 18446744072171318507#64, Flapjack.CrepExp.var 15])

def crepBody87_440 : CrepProg (BitVec 64) :=
.seq crepBody87_439 crepBody87_1

def crepBody87_441 : CrepProg (BitVec 64) :=
.seq crepBody87_438 crepBody87_440

def crepBody87_442 : CrepProg (BitVec 64) :=
.seq crepBody87_441 crepBody87_55

def crepBody87_443 : CrepProg (BitVec 64) :=
.seq crepBody87_442 crepBody87_58

def crepBody87_444 : CrepProg (BitVec 64) :=
.seq crepBody87_443 crepBody87_248

def crepBody87_445 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 19,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 24) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 18,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 24,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 18]]],
      Flapjack.CrepExp.const 18446744072618615799#64, Flapjack.CrepExp.var 16])

def crepBody87_446 : CrepProg (BitVec 64) :=
.seq crepBody87_445 crepBody87_1

def crepBody87_447 : CrepProg (BitVec 64) :=
.seq crepBody87_444 crepBody87_446

def crepBody87_448 : CrepProg (BitVec 64) :=
.seq crepBody87_447 crepBody87_65

def crepBody87_449 : CrepProg (BitVec 64) :=
.seq crepBody87_448 crepBody87_68

def crepBody87_450 : CrepProg (BitVec 64) :=
.seq crepBody87_449 crepBody87_257

def crepBody87_451 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 18,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 25,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 23,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25]]],
      Flapjack.CrepExp.const 18446744072743909618#64, Flapjack.CrepExp.var 17])

def crepBody87_452 : CrepProg (BitVec 64) :=
.seq crepBody87_451 crepBody87_1

def crepBody87_453 : CrepProg (BitVec 64) :=
.seq crepBody87_450 crepBody87_452

def crepBody87_454 : CrepProg (BitVec 64) :=
.seq crepBody87_453 crepBody87_75

def crepBody87_455 : CrepProg (BitVec 64) :=
.seq crepBody87_454 crepBody87_78

def crepBody87_456 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 27) (Flapjack.CrepExp.var 28)

def crepBody87_457 : CrepProg (BitVec 64) :=
.seq crepBody87_456 crepBody87_1

def crepBody87_458 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64]),
        Flapjack.CrepExp.var 18])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_457

def crepBody87_459 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64]) crepBody87_458

def crepBody87_460 : CrepProg (BitVec 64) :=
.seq crepBody87_455 crepBody87_459

def crepBody87_461 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64]),
        Flapjack.CrepExp.var 19])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_457

def crepBody87_462 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64]) crepBody87_461

def crepBody87_463 : CrepProg (BitVec 64) :=
.seq crepBody87_460 crepBody87_462

def crepBody87_464 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64]),
        Flapjack.CrepExp.var 20])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_457

def crepBody87_465 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64]) crepBody87_464

def crepBody87_466 : CrepProg (BitVec 64) :=
.seq crepBody87_463 crepBody87_465

def crepBody87_467 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64]),
        Flapjack.CrepExp.var 21])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_457

def crepBody87_468 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64]) crepBody87_467

def crepBody87_469 : CrepProg (BitVec 64) :=
.seq crepBody87_466 crepBody87_468

def crepBody87_470 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]),
        Flapjack.CrepExp.var 22])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_457

def crepBody87_471 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]) crepBody87_470

def crepBody87_472 : CrepProg (BitVec 64) :=
.seq crepBody87_469 crepBody87_471

def crepBody87_473 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64]),
        Flapjack.CrepExp.var 23])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_457

def crepBody87_474 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64]) crepBody87_473

def crepBody87_475 : CrepProg (BitVec 64) :=
.seq crepBody87_472 crepBody87_474

def crepBody87_476 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64]),
        Flapjack.CrepExp.var 24])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_457

def crepBody87_477 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64]) crepBody87_476

def crepBody87_478 : CrepProg (BitVec 64) :=
.seq crepBody87_475 crepBody87_477

def crepBody87_479 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 56#64]),
        Flapjack.CrepExp.var 25])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody87_457

def crepBody87_480 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 56#64]) crepBody87_479

def crepBody87_481 : CrepProg (BitVec 64) :=
.seq crepBody87_478 crepBody87_480

def crepBody87_482 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody87_483 : CrepProg (BitVec 64) :=
.seq crepBody87_481 crepBody87_482

def crepBody87_484 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody87_483

def crepBody87_485 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 56#64])) crepBody87_484

def crepBody87_486 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64])) crepBody87_485

def crepBody87_487 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64])) crepBody87_486

def crepBody87_488 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64])) crepBody87_487

def crepBody87_489 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64])) crepBody87_488

def crepBody87_490 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64])) crepBody87_489

def crepBody87_491 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64])) crepBody87_490

def crepBody87_492 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64])) crepBody87_491

def crepBody87_493 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 60#64]))
      (Flapjack.CrepExp.const 24#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 60#64, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 60#64, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 60#64, Flapjack.CrepExp.const 3#64])]) crepBody87_492

def crepBody87_494 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 56#64]))
      (Flapjack.CrepExp.const 24#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 56#64, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 56#64, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 56#64, Flapjack.CrepExp.const 3#64])]) crepBody87_493

def crepBody87_495 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 52#64]))
      (Flapjack.CrepExp.const 24#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 52#64, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 52#64, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 52#64, Flapjack.CrepExp.const 3#64])]) crepBody87_494

def crepBody87_496 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64]))
      (Flapjack.CrepExp.const 24#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64, Flapjack.CrepExp.const 3#64])]) crepBody87_495

def crepBody87_497 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 44#64]))
      (Flapjack.CrepExp.const 24#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 44#64, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 44#64, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 44#64, Flapjack.CrepExp.const 3#64])]) crepBody87_496

def crepBody87_498 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 40#64]))
      (Flapjack.CrepExp.const 24#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 40#64, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 40#64, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 40#64, Flapjack.CrepExp.const 3#64])]) crepBody87_497

def crepBody87_499 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 36#64]))
      (Flapjack.CrepExp.const 24#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 36#64, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 36#64, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 36#64, Flapjack.CrepExp.const 3#64])]) crepBody87_498

def crepBody87_500 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]))
      (Flapjack.CrepExp.const 24#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.const 3#64])]) crepBody87_499

def crepBody87_501 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 28#64]))
      (Flapjack.CrepExp.const 24#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 28#64, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 28#64, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 28#64, Flapjack.CrepExp.const 3#64])]) crepBody87_500

def crepBody87_502 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 24#64]))
      (Flapjack.CrepExp.const 24#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 24#64, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 24#64, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 24#64, Flapjack.CrepExp.const 3#64])]) crepBody87_501

def crepBody87_503 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 20#64]))
      (Flapjack.CrepExp.const 24#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 20#64, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 20#64, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 20#64, Flapjack.CrepExp.const 3#64])]) crepBody87_502

def crepBody87_504 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64]))
      (Flapjack.CrepExp.const 24#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64, Flapjack.CrepExp.const 3#64])]) crepBody87_503

def crepBody87_505 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 12#64]))
      (Flapjack.CrepExp.const 24#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 12#64, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 12#64, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 12#64, Flapjack.CrepExp.const 3#64])]) crepBody87_504

def crepBody87_506 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64]))
      (Flapjack.CrepExp.const 24#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 3#64])]) crepBody87_505

def crepBody87_507 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 4#64]))
      (Flapjack.CrepExp.const 24#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 3#64])]) crepBody87_506

def crepBody87_508 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 0#64]))
      (Flapjack.CrepExp.const 24#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 3#64])]) crepBody87_507

def data87 : CrepProg (BitVec 64) := crepBody87_508
def output87 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [115#8, 104#8, 97#8, 50#8, 53#8, 54#8, 95#8, 98#8, 108#8, 111#8, 99#8, 107#8], [0, 1], crepProgToHOL data87)
end InitECandidate.Proofs.FrontendStages.Crep
