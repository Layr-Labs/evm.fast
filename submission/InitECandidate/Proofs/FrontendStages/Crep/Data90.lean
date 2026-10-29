import InitECandidate.Proofs.FrontendStages.Crep.Translate74
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody90_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 26,
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
      Flapjack.CrepExp.const 1116352408#64, Flapjack.CrepExp.var 3])

def crepBody90_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody90_2 : CrepProg (BitVec 64) :=
.seq crepBody90_0 crepBody90_1

def crepBody90_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 22 (Flapjack.CrepExp.var 28)

def crepBody90_4 : CrepProg (BitVec 64) :=
.seq crepBody90_3 crepBody90_1

def crepBody90_5 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 27])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody90_4

def crepBody90_6 : CrepProg (BitVec 64) :=
.seq crepBody90_2 crepBody90_5

def crepBody90_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr
    (Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 27,
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

def crepBody90_8 : CrepProg (BitVec 64) :=
.seq crepBody90_7 crepBody90_1

def crepBody90_9 : CrepProg (BitVec 64) :=
.seq crepBody90_6 crepBody90_8

def crepBody90_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 1899447441#64, Flapjack.CrepExp.var 4])

def crepBody90_11 : CrepProg (BitVec 64) :=
.seq crepBody90_10 crepBody90_1

def crepBody90_12 : CrepProg (BitVec 64) :=
.seq crepBody90_9 crepBody90_11

def crepBody90_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 21 (Flapjack.CrepExp.var 28)

def crepBody90_14 : CrepProg (BitVec 64) :=
.seq crepBody90_13 crepBody90_1

def crepBody90_15 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 27])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody90_14

def crepBody90_16 : CrepProg (BitVec 64) :=
.seq crepBody90_12 crepBody90_15

def crepBody90_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 25
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr
    (Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 27,
          Flapjack.CrepExp.op Flapjack.BinOp.xor
            [Flapjack.CrepExp.op Flapjack.BinOp.or
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 2#64),
                  Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 30#64)],
              Flapjack.CrepExp.op Flapjack.BinOp.or
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 13#64),
                  Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 19#64)],
              Flapjack.CrepExp.op Flapjack.BinOp.or
                [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 22#64),
                  Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 10#64)]],
          Flapjack.CrepExp.op Flapjack.BinOp.xor
            [Flapjack.CrepExp.var 19,
              Flapjack.CrepExp.op Flapjack.BinOp.and
                [Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 19],
                  Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]]]])
      (Flapjack.CrepExp.const 32#64))
    (Flapjack.CrepExp.const 32#64))

def crepBody90_18 : CrepProg (BitVec 64) :=
.seq crepBody90_17 crepBody90_1

def crepBody90_19 : CrepProg (BitVec 64) :=
.seq crepBody90_16 crepBody90_18

def crepBody90_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 18446744072463907791#64, Flapjack.CrepExp.var 5])

def crepBody90_21 : CrepProg (BitVec 64) :=
.seq crepBody90_20 crepBody90_1

def crepBody90_22 : CrepProg (BitVec 64) :=
.seq crepBody90_19 crepBody90_21

def crepBody90_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 20 (Flapjack.CrepExp.var 28)

def crepBody90_24 : CrepProg (BitVec 64) :=
.seq crepBody90_23 crepBody90_1

def crepBody90_25 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 27])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody90_24

def crepBody90_26 : CrepProg (BitVec 64) :=
.seq crepBody90_22 crepBody90_25

def crepBody90_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 24
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr
    (Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 27,
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
            [Flapjack.CrepExp.var 26,
              Flapjack.CrepExp.op Flapjack.BinOp.and
                [Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26],
                  Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 19]]]])
      (Flapjack.CrepExp.const 32#64))
    (Flapjack.CrepExp.const 32#64))

def crepBody90_28 : CrepProg (BitVec 64) :=
.seq crepBody90_27 crepBody90_1

def crepBody90_29 : CrepProg (BitVec 64) :=
.seq crepBody90_26 crepBody90_28

def crepBody90_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 18446744073335593893#64, Flapjack.CrepExp.var 6])

def crepBody90_31 : CrepProg (BitVec 64) :=
.seq crepBody90_30 crepBody90_1

def crepBody90_32 : CrepProg (BitVec 64) :=
.seq crepBody90_29 crepBody90_31

def crepBody90_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 19 (Flapjack.CrepExp.var 28)

def crepBody90_34 : CrepProg (BitVec 64) :=
.seq crepBody90_33 crepBody90_1

def crepBody90_35 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 27])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody90_34

def crepBody90_36 : CrepProg (BitVec 64) :=
.seq crepBody90_32 crepBody90_35

def crepBody90_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 23
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr
    (Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 27,
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
                  Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26]]]])
      (Flapjack.CrepExp.const 32#64))
    (Flapjack.CrepExp.const 32#64))

def crepBody90_38 : CrepProg (BitVec 64) :=
.seq crepBody90_37 crepBody90_1

def crepBody90_39 : CrepProg (BitVec 64) :=
.seq crepBody90_36 crepBody90_38

def crepBody90_40 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 961987163#64, Flapjack.CrepExp.var 7])

def crepBody90_41 : CrepProg (BitVec 64) :=
.seq crepBody90_40 crepBody90_1

def crepBody90_42 : CrepProg (BitVec 64) :=
.seq crepBody90_39 crepBody90_41

def crepBody90_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26 (Flapjack.CrepExp.var 28)

def crepBody90_44 : CrepProg (BitVec 64) :=
.seq crepBody90_43 crepBody90_1

def crepBody90_45 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 27])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody90_44

def crepBody90_46 : CrepProg (BitVec 64) :=
.seq crepBody90_42 crepBody90_45

def crepBody90_47 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 22
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr
    (Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 27,
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

def crepBody90_48 : CrepProg (BitVec 64) :=
.seq crepBody90_47 crepBody90_1

def crepBody90_49 : CrepProg (BitVec 64) :=
.seq crepBody90_46 crepBody90_48

def crepBody90_50 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 21,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 20,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 26,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]]],
      Flapjack.CrepExp.const 1508970993#64, Flapjack.CrepExp.var 8])

def crepBody90_51 : CrepProg (BitVec 64) :=
.seq crepBody90_50 crepBody90_1

def crepBody90_52 : CrepProg (BitVec 64) :=
.seq crepBody90_49 crepBody90_51

def crepBody90_53 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 25 (Flapjack.CrepExp.var 28)

def crepBody90_54 : CrepProg (BitVec 64) :=
.seq crepBody90_53 crepBody90_1

def crepBody90_55 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 27])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody90_54

def crepBody90_56 : CrepProg (BitVec 64) :=
.seq crepBody90_52 crepBody90_55

def crepBody90_57 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 21
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr
    (Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 27,
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

def crepBody90_58 : CrepProg (BitVec 64) :=
.seq crepBody90_57 crepBody90_1

def crepBody90_59 : CrepProg (BitVec 64) :=
.seq crepBody90_56 crepBody90_58

def crepBody90_60 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 19]]],
      Flapjack.CrepExp.const 18446744071868220068#64, Flapjack.CrepExp.var 9])

def crepBody90_61 : CrepProg (BitVec 64) :=
.seq crepBody90_60 crepBody90_1

def crepBody90_62 : CrepProg (BitVec 64) :=
.seq crepBody90_59 crepBody90_61

def crepBody90_63 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 24 (Flapjack.CrepExp.var 28)

def crepBody90_64 : CrepProg (BitVec 64) :=
.seq crepBody90_63 crepBody90_1

def crepBody90_65 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 27])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody90_64

def crepBody90_66 : CrepProg (BitVec 64) :=
.seq crepBody90_62 crepBody90_65

def crepBody90_67 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 20
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr
    (Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 27,
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

def crepBody90_68 : CrepProg (BitVec 64) :=
.seq crepBody90_67 crepBody90_1

def crepBody90_69 : CrepProg (BitVec 64) :=
.seq crepBody90_66 crepBody90_68

def crepBody90_70 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
        [Flapjack.CrepExp.var 26,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 24,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26]]],
      Flapjack.CrepExp.const 18446744072285347541#64, Flapjack.CrepExp.var 10])

def crepBody90_71 : CrepProg (BitVec 64) :=
.seq crepBody90_70 crepBody90_1

def crepBody90_72 : CrepProg (BitVec 64) :=
.seq crepBody90_69 crepBody90_71

def crepBody90_73 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 23 (Flapjack.CrepExp.var 28)

def crepBody90_74 : CrepProg (BitVec 64) :=
.seq crepBody90_73 crepBody90_1

def crepBody90_75 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 27])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody90_74

def crepBody90_76 : CrepProg (BitVec 64) :=
.seq crepBody90_72 crepBody90_75

def crepBody90_77 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 19
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr
    (Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 27,
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

def crepBody90_78 : CrepProg (BitVec 64) :=
.seq crepBody90_77 crepBody90_1

def crepBody90_79 : CrepProg (BitVec 64) :=
.seq crepBody90_76 crepBody90_78

def crepBody90_80 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 26,
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
      Flapjack.CrepExp.const 18446744073038965400#64, Flapjack.CrepExp.var 11])

def crepBody90_81 : CrepProg (BitVec 64) :=
.seq crepBody90_80 crepBody90_1

def crepBody90_82 : CrepProg (BitVec 64) :=
.seq crepBody90_79 crepBody90_81

def crepBody90_83 : CrepProg (BitVec 64) :=
.seq crepBody90_82 crepBody90_5

def crepBody90_84 : CrepProg (BitVec 64) :=
.seq crepBody90_83 crepBody90_8

def crepBody90_85 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 310598401#64, Flapjack.CrepExp.var 12])

def crepBody90_86 : CrepProg (BitVec 64) :=
.seq crepBody90_85 crepBody90_1

def crepBody90_87 : CrepProg (BitVec 64) :=
.seq crepBody90_84 crepBody90_86

def crepBody90_88 : CrepProg (BitVec 64) :=
.seq crepBody90_87 crepBody90_15

def crepBody90_89 : CrepProg (BitVec 64) :=
.seq crepBody90_88 crepBody90_18

def crepBody90_90 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 607225278#64, Flapjack.CrepExp.var 13])

def crepBody90_91 : CrepProg (BitVec 64) :=
.seq crepBody90_90 crepBody90_1

def crepBody90_92 : CrepProg (BitVec 64) :=
.seq crepBody90_89 crepBody90_91

def crepBody90_93 : CrepProg (BitVec 64) :=
.seq crepBody90_92 crepBody90_25

def crepBody90_94 : CrepProg (BitVec 64) :=
.seq crepBody90_93 crepBody90_28

def crepBody90_95 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 1426881987#64, Flapjack.CrepExp.var 14])

def crepBody90_96 : CrepProg (BitVec 64) :=
.seq crepBody90_95 crepBody90_1

def crepBody90_97 : CrepProg (BitVec 64) :=
.seq crepBody90_94 crepBody90_96

def crepBody90_98 : CrepProg (BitVec 64) :=
.seq crepBody90_97 crepBody90_35

def crepBody90_99 : CrepProg (BitVec 64) :=
.seq crepBody90_98 crepBody90_38

def crepBody90_100 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 1925078388#64, Flapjack.CrepExp.var 15])

def crepBody90_101 : CrepProg (BitVec 64) :=
.seq crepBody90_100 crepBody90_1

def crepBody90_102 : CrepProg (BitVec 64) :=
.seq crepBody90_99 crepBody90_101

def crepBody90_103 : CrepProg (BitVec 64) :=
.seq crepBody90_102 crepBody90_45

def crepBody90_104 : CrepProg (BitVec 64) :=
.seq crepBody90_103 crepBody90_48

def crepBody90_105 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 21,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 20,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 26,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]]],
      Flapjack.CrepExp.const 18446744071576662526#64, Flapjack.CrepExp.var 16])

def crepBody90_106 : CrepProg (BitVec 64) :=
.seq crepBody90_105 crepBody90_1

def crepBody90_107 : CrepProg (BitVec 64) :=
.seq crepBody90_104 crepBody90_106

def crepBody90_108 : CrepProg (BitVec 64) :=
.seq crepBody90_107 crepBody90_55

def crepBody90_109 : CrepProg (BitVec 64) :=
.seq crepBody90_108 crepBody90_58

def crepBody90_110 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 19]]],
      Flapjack.CrepExp.const 18446744072029472423#64, Flapjack.CrepExp.var 17])

def crepBody90_111 : CrepProg (BitVec 64) :=
.seq crepBody90_110 crepBody90_1

def crepBody90_112 : CrepProg (BitVec 64) :=
.seq crepBody90_109 crepBody90_111

def crepBody90_113 : CrepProg (BitVec 64) :=
.seq crepBody90_112 crepBody90_65

def crepBody90_114 : CrepProg (BitVec 64) :=
.seq crepBody90_113 crepBody90_68

def crepBody90_115 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
        [Flapjack.CrepExp.var 26,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 24,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26]]],
      Flapjack.CrepExp.const 18446744072662806900#64, Flapjack.CrepExp.var 18])

def crepBody90_116 : CrepProg (BitVec 64) :=
.seq crepBody90_115 crepBody90_1

def crepBody90_117 : CrepProg (BitVec 64) :=
.seq crepBody90_114 crepBody90_116

def crepBody90_118 : CrepProg (BitVec 64) :=
.seq crepBody90_117 crepBody90_75

def crepBody90_119 : CrepProg (BitVec 64) :=
.seq crepBody90_118 crepBody90_78

def crepBody90_120 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 28)

def crepBody90_121 : CrepProg (BitVec 64) :=
.seq crepBody90_120 crepBody90_1

def crepBody90_122 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
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
  (Flapjack.CrepExp.const 32#64)) crepBody90_121

def crepBody90_123 : CrepProg (BitVec 64) :=
.seq crepBody90_119 crepBody90_122

def crepBody90_124 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 26,
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
      Flapjack.CrepExp.const 18446744073249974721#64, Flapjack.CrepExp.var 3])

def crepBody90_125 : CrepProg (BitVec 64) :=
.seq crepBody90_124 crepBody90_1

def crepBody90_126 : CrepProg (BitVec 64) :=
.seq crepBody90_123 crepBody90_125

def crepBody90_127 : CrepProg (BitVec 64) :=
.seq crepBody90_126 crepBody90_5

def crepBody90_128 : CrepProg (BitVec 64) :=
.seq crepBody90_127 crepBody90_8

def crepBody90_129 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.var 28)

def crepBody90_130 : CrepProg (BitVec 64) :=
.seq crepBody90_129 crepBody90_1

def crepBody90_131 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
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
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 17#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 15#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 19#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 13#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 10#64)]])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody90_130

def crepBody90_132 : CrepProg (BitVec 64) :=
.seq crepBody90_128 crepBody90_131

def crepBody90_133 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 18446744073436809094#64, Flapjack.CrepExp.var 4])

def crepBody90_134 : CrepProg (BitVec 64) :=
.seq crepBody90_133 crepBody90_1

def crepBody90_135 : CrepProg (BitVec 64) :=
.seq crepBody90_132 crepBody90_134

def crepBody90_136 : CrepProg (BitVec 64) :=
.seq crepBody90_135 crepBody90_15

def crepBody90_137 : CrepProg (BitVec 64) :=
.seq crepBody90_136 crepBody90_18

def crepBody90_138 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.var 28)

def crepBody90_139 : CrepProg (BitVec 64) :=
.seq crepBody90_138 crepBody90_1

def crepBody90_140 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
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
  (Flapjack.CrepExp.const 32#64)) crepBody90_139

def crepBody90_141 : CrepProg (BitVec 64) :=
.seq crepBody90_137 crepBody90_140

def crepBody90_142 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 264347078#64, Flapjack.CrepExp.var 5])

def crepBody90_143 : CrepProg (BitVec 64) :=
.seq crepBody90_142 crepBody90_1

def crepBody90_144 : CrepProg (BitVec 64) :=
.seq crepBody90_141 crepBody90_143

def crepBody90_145 : CrepProg (BitVec 64) :=
.seq crepBody90_144 crepBody90_25

def crepBody90_146 : CrepProg (BitVec 64) :=
.seq crepBody90_145 crepBody90_28

def crepBody90_147 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.var 28)

def crepBody90_148 : CrepProg (BitVec 64) :=
.seq crepBody90_147 crepBody90_1

def crepBody90_149 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
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
  (Flapjack.CrepExp.const 32#64)) crepBody90_148

def crepBody90_150 : CrepProg (BitVec 64) :=
.seq crepBody90_146 crepBody90_149

def crepBody90_151 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 604807628#64, Flapjack.CrepExp.var 6])

def crepBody90_152 : CrepProg (BitVec 64) :=
.seq crepBody90_151 crepBody90_1

def crepBody90_153 : CrepProg (BitVec 64) :=
.seq crepBody90_150 crepBody90_152

def crepBody90_154 : CrepProg (BitVec 64) :=
.seq crepBody90_153 crepBody90_35

def crepBody90_155 : CrepProg (BitVec 64) :=
.seq crepBody90_154 crepBody90_38

def crepBody90_156 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 28)

def crepBody90_157 : CrepProg (BitVec 64) :=
.seq crepBody90_156 crepBody90_1

def crepBody90_158 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
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
  (Flapjack.CrepExp.const 32#64)) crepBody90_157

def crepBody90_159 : CrepProg (BitVec 64) :=
.seq crepBody90_155 crepBody90_158

def crepBody90_160 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 770255983#64, Flapjack.CrepExp.var 7])

def crepBody90_161 : CrepProg (BitVec 64) :=
.seq crepBody90_160 crepBody90_1

def crepBody90_162 : CrepProg (BitVec 64) :=
.seq crepBody90_159 crepBody90_161

def crepBody90_163 : CrepProg (BitVec 64) :=
.seq crepBody90_162 crepBody90_45

def crepBody90_164 : CrepProg (BitVec 64) :=
.seq crepBody90_163 crepBody90_48

def crepBody90_165 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 28)

def crepBody90_166 : CrepProg (BitVec 64) :=
.seq crepBody90_165 crepBody90_1

def crepBody90_167 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
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
  (Flapjack.CrepExp.const 32#64)) crepBody90_166

def crepBody90_168 : CrepProg (BitVec 64) :=
.seq crepBody90_164 crepBody90_167

def crepBody90_169 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 21,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 20,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 26,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]]],
      Flapjack.CrepExp.const 1249150122#64, Flapjack.CrepExp.var 8])

def crepBody90_170 : CrepProg (BitVec 64) :=
.seq crepBody90_169 crepBody90_1

def crepBody90_171 : CrepProg (BitVec 64) :=
.seq crepBody90_168 crepBody90_170

def crepBody90_172 : CrepProg (BitVec 64) :=
.seq crepBody90_171 crepBody90_55

def crepBody90_173 : CrepProg (BitVec 64) :=
.seq crepBody90_172 crepBody90_58

def crepBody90_174 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.var 28)

def crepBody90_175 : CrepProg (BitVec 64) :=
.seq crepBody90_174 crepBody90_1

def crepBody90_176 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
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
        Flapjack.CrepExp.var 18,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 17#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 15#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 19#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 13#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 10#64)]])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody90_175

def crepBody90_177 : CrepProg (BitVec 64) :=
.seq crepBody90_173 crepBody90_176

def crepBody90_178 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 19]]],
      Flapjack.CrepExp.const 1555081692#64, Flapjack.CrepExp.var 9])

def crepBody90_179 : CrepProg (BitVec 64) :=
.seq crepBody90_178 crepBody90_1

def crepBody90_180 : CrepProg (BitVec 64) :=
.seq crepBody90_177 crepBody90_179

def crepBody90_181 : CrepProg (BitVec 64) :=
.seq crepBody90_180 crepBody90_65

def crepBody90_182 : CrepProg (BitVec 64) :=
.seq crepBody90_181 crepBody90_68

def crepBody90_183 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 10 (Flapjack.CrepExp.var 28)

def crepBody90_184 : CrepProg (BitVec 64) :=
.seq crepBody90_183 crepBody90_1

def crepBody90_185 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
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
  (Flapjack.CrepExp.const 32#64)) crepBody90_184

def crepBody90_186 : CrepProg (BitVec 64) :=
.seq crepBody90_182 crepBody90_185

def crepBody90_187 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
        [Flapjack.CrepExp.var 26,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 24,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26]]],
      Flapjack.CrepExp.const 1996064986#64, Flapjack.CrepExp.var 10])

def crepBody90_188 : CrepProg (BitVec 64) :=
.seq crepBody90_187 crepBody90_1

def crepBody90_189 : CrepProg (BitVec 64) :=
.seq crepBody90_186 crepBody90_188

def crepBody90_190 : CrepProg (BitVec 64) :=
.seq crepBody90_189 crepBody90_75

def crepBody90_191 : CrepProg (BitVec 64) :=
.seq crepBody90_190 crepBody90_78

def crepBody90_192 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11 (Flapjack.CrepExp.var 28)

def crepBody90_193 : CrepProg (BitVec 64) :=
.seq crepBody90_192 crepBody90_1

def crepBody90_194 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
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
  (Flapjack.CrepExp.const 32#64)) crepBody90_193

def crepBody90_195 : CrepProg (BitVec 64) :=
.seq crepBody90_191 crepBody90_194

def crepBody90_196 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 26,
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
      Flapjack.CrepExp.const 18446744071968805202#64, Flapjack.CrepExp.var 11])

def crepBody90_197 : CrepProg (BitVec 64) :=
.seq crepBody90_196 crepBody90_1

def crepBody90_198 : CrepProg (BitVec 64) :=
.seq crepBody90_195 crepBody90_197

def crepBody90_199 : CrepProg (BitVec 64) :=
.seq crepBody90_198 crepBody90_5

def crepBody90_200 : CrepProg (BitVec 64) :=
.seq crepBody90_199 crepBody90_8

def crepBody90_201 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 12 (Flapjack.CrepExp.var 28)

def crepBody90_202 : CrepProg (BitVec 64) :=
.seq crepBody90_201 crepBody90_1

def crepBody90_203 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
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
  (Flapjack.CrepExp.const 32#64)) crepBody90_202

def crepBody90_204 : CrepProg (BitVec 64) :=
.seq crepBody90_200 crepBody90_203

def crepBody90_205 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 18446744072236418669#64, Flapjack.CrepExp.var 12])

def crepBody90_206 : CrepProg (BitVec 64) :=
.seq crepBody90_205 crepBody90_1

def crepBody90_207 : CrepProg (BitVec 64) :=
.seq crepBody90_204 crepBody90_206

def crepBody90_208 : CrepProg (BitVec 64) :=
.seq crepBody90_207 crepBody90_15

def crepBody90_209 : CrepProg (BitVec 64) :=
.seq crepBody90_208 crepBody90_18

def crepBody90_210 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 13 (Flapjack.CrepExp.var 28)

def crepBody90_211 : CrepProg (BitVec 64) :=
.seq crepBody90_210 crepBody90_1

def crepBody90_212 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
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
  (Flapjack.CrepExp.const 32#64)) crepBody90_211

def crepBody90_213 : CrepProg (BitVec 64) :=
.seq crepBody90_209 crepBody90_212

def crepBody90_214 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 18446744072367581128#64, Flapjack.CrepExp.var 13])

def crepBody90_215 : CrepProg (BitVec 64) :=
.seq crepBody90_214 crepBody90_1

def crepBody90_216 : CrepProg (BitVec 64) :=
.seq crepBody90_213 crepBody90_215

def crepBody90_217 : CrepProg (BitVec 64) :=
.seq crepBody90_216 crepBody90_25

def crepBody90_218 : CrepProg (BitVec 64) :=
.seq crepBody90_217 crepBody90_28

def crepBody90_219 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 14 (Flapjack.CrepExp.var 28)

def crepBody90_220 : CrepProg (BitVec 64) :=
.seq crepBody90_219 crepBody90_1

def crepBody90_221 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
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
  (Flapjack.CrepExp.const 32#64)) crepBody90_220

def crepBody90_222 : CrepProg (BitVec 64) :=
.seq crepBody90_218 crepBody90_221

def crepBody90_223 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 18446744072624897991#64, Flapjack.CrepExp.var 14])

def crepBody90_224 : CrepProg (BitVec 64) :=
.seq crepBody90_223 crepBody90_1

def crepBody90_225 : CrepProg (BitVec 64) :=
.seq crepBody90_222 crepBody90_224

def crepBody90_226 : CrepProg (BitVec 64) :=
.seq crepBody90_225 crepBody90_35

def crepBody90_227 : CrepProg (BitVec 64) :=
.seq crepBody90_226 crepBody90_38

def crepBody90_228 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 15 (Flapjack.CrepExp.var 28)

def crepBody90_229 : CrepProg (BitVec 64) :=
.seq crepBody90_228 crepBody90_1

def crepBody90_230 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
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
  (Flapjack.CrepExp.const 32#64)) crepBody90_229

def crepBody90_231 : CrepProg (BitVec 64) :=
.seq crepBody90_227 crepBody90_230

def crepBody90_232 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 18446744072751156211#64, Flapjack.CrepExp.var 15])

def crepBody90_233 : CrepProg (BitVec 64) :=
.seq crepBody90_232 crepBody90_1

def crepBody90_234 : CrepProg (BitVec 64) :=
.seq crepBody90_231 crepBody90_233

def crepBody90_235 : CrepProg (BitVec 64) :=
.seq crepBody90_234 crepBody90_45

def crepBody90_236 : CrepProg (BitVec 64) :=
.seq crepBody90_235 crepBody90_48

def crepBody90_237 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 16 (Flapjack.CrepExp.var 28)

def crepBody90_238 : CrepProg (BitVec 64) :=
.seq crepBody90_237 crepBody90_1

def crepBody90_239 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
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
  (Flapjack.CrepExp.const 32#64)) crepBody90_238

def crepBody90_240 : CrepProg (BitVec 64) :=
.seq crepBody90_236 crepBody90_239

def crepBody90_241 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 21,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 20,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 26,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]]],
      Flapjack.CrepExp.const 18446744072999113031#64, Flapjack.CrepExp.var 16])

def crepBody90_242 : CrepProg (BitVec 64) :=
.seq crepBody90_241 crepBody90_1

def crepBody90_243 : CrepProg (BitVec 64) :=
.seq crepBody90_240 crepBody90_242

def crepBody90_244 : CrepProg (BitVec 64) :=
.seq crepBody90_243 crepBody90_55

def crepBody90_245 : CrepProg (BitVec 64) :=
.seq crepBody90_244 crepBody90_58

def crepBody90_246 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 17 (Flapjack.CrepExp.var 28)

def crepBody90_247 : CrepProg (BitVec 64) :=
.seq crepBody90_246 crepBody90_1

def crepBody90_248 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 17,
        Flapjack.CrepExp.op Flapjack.BinOp.xor
          [Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 7#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 25#64)],
            Flapjack.CrepExp.op Flapjack.BinOp.or
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 18#64),
                Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 14#64)],
            Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 3#64)],
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
  (Flapjack.CrepExp.const 32#64)) crepBody90_247

def crepBody90_249 : CrepProg (BitVec 64) :=
.seq crepBody90_245 crepBody90_248

def crepBody90_250 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 19]]],
      Flapjack.CrepExp.const 113926993#64, Flapjack.CrepExp.var 17])

def crepBody90_251 : CrepProg (BitVec 64) :=
.seq crepBody90_250 crepBody90_1

def crepBody90_252 : CrepProg (BitVec 64) :=
.seq crepBody90_249 crepBody90_251

def crepBody90_253 : CrepProg (BitVec 64) :=
.seq crepBody90_252 crepBody90_65

def crepBody90_254 : CrepProg (BitVec 64) :=
.seq crepBody90_253 crepBody90_68

def crepBody90_255 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 18 (Flapjack.CrepExp.var 28)

def crepBody90_256 : CrepProg (BitVec 64) :=
.seq crepBody90_255 crepBody90_1

def crepBody90_257 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 18,
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
  (Flapjack.CrepExp.const 32#64)) crepBody90_256

def crepBody90_258 : CrepProg (BitVec 64) :=
.seq crepBody90_254 crepBody90_257

def crepBody90_259 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
        [Flapjack.CrepExp.var 26,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 24,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26]]],
      Flapjack.CrepExp.const 338241895#64, Flapjack.CrepExp.var 18])

def crepBody90_260 : CrepProg (BitVec 64) :=
.seq crepBody90_259 crepBody90_1

def crepBody90_261 : CrepProg (BitVec 64) :=
.seq crepBody90_258 crepBody90_260

def crepBody90_262 : CrepProg (BitVec 64) :=
.seq crepBody90_261 crepBody90_75

def crepBody90_263 : CrepProg (BitVec 64) :=
.seq crepBody90_262 crepBody90_78

def crepBody90_264 : CrepProg (BitVec 64) :=
.seq crepBody90_263 crepBody90_122

def crepBody90_265 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 26,
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
      Flapjack.CrepExp.const 666307205#64, Flapjack.CrepExp.var 3])

def crepBody90_266 : CrepProg (BitVec 64) :=
.seq crepBody90_265 crepBody90_1

def crepBody90_267 : CrepProg (BitVec 64) :=
.seq crepBody90_264 crepBody90_266

def crepBody90_268 : CrepProg (BitVec 64) :=
.seq crepBody90_267 crepBody90_5

def crepBody90_269 : CrepProg (BitVec 64) :=
.seq crepBody90_268 crepBody90_8

def crepBody90_270 : CrepProg (BitVec 64) :=
.seq crepBody90_269 crepBody90_131

def crepBody90_271 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 773529912#64, Flapjack.CrepExp.var 4])

def crepBody90_272 : CrepProg (BitVec 64) :=
.seq crepBody90_271 crepBody90_1

def crepBody90_273 : CrepProg (BitVec 64) :=
.seq crepBody90_270 crepBody90_272

def crepBody90_274 : CrepProg (BitVec 64) :=
.seq crepBody90_273 crepBody90_15

def crepBody90_275 : CrepProg (BitVec 64) :=
.seq crepBody90_274 crepBody90_18

def crepBody90_276 : CrepProg (BitVec 64) :=
.seq crepBody90_275 crepBody90_140

def crepBody90_277 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 1294757372#64, Flapjack.CrepExp.var 5])

def crepBody90_278 : CrepProg (BitVec 64) :=
.seq crepBody90_277 crepBody90_1

def crepBody90_279 : CrepProg (BitVec 64) :=
.seq crepBody90_276 crepBody90_278

def crepBody90_280 : CrepProg (BitVec 64) :=
.seq crepBody90_279 crepBody90_25

def crepBody90_281 : CrepProg (BitVec 64) :=
.seq crepBody90_280 crepBody90_28

def crepBody90_282 : CrepProg (BitVec 64) :=
.seq crepBody90_281 crepBody90_149

def crepBody90_283 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 1396182291#64, Flapjack.CrepExp.var 6])

def crepBody90_284 : CrepProg (BitVec 64) :=
.seq crepBody90_283 crepBody90_1

def crepBody90_285 : CrepProg (BitVec 64) :=
.seq crepBody90_282 crepBody90_284

def crepBody90_286 : CrepProg (BitVec 64) :=
.seq crepBody90_285 crepBody90_35

def crepBody90_287 : CrepProg (BitVec 64) :=
.seq crepBody90_286 crepBody90_38

def crepBody90_288 : CrepProg (BitVec 64) :=
.seq crepBody90_287 crepBody90_158

def crepBody90_289 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 1695183700#64, Flapjack.CrepExp.var 7])

def crepBody90_290 : CrepProg (BitVec 64) :=
.seq crepBody90_289 crepBody90_1

def crepBody90_291 : CrepProg (BitVec 64) :=
.seq crepBody90_288 crepBody90_290

def crepBody90_292 : CrepProg (BitVec 64) :=
.seq crepBody90_291 crepBody90_45

def crepBody90_293 : CrepProg (BitVec 64) :=
.seq crepBody90_292 crepBody90_48

def crepBody90_294 : CrepProg (BitVec 64) :=
.seq crepBody90_293 crepBody90_167

def crepBody90_295 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 21,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 20,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 26,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]]],
      Flapjack.CrepExp.const 1986661051#64, Flapjack.CrepExp.var 8])

def crepBody90_296 : CrepProg (BitVec 64) :=
.seq crepBody90_295 crepBody90_1

def crepBody90_297 : CrepProg (BitVec 64) :=
.seq crepBody90_294 crepBody90_296

def crepBody90_298 : CrepProg (BitVec 64) :=
.seq crepBody90_297 crepBody90_55

def crepBody90_299 : CrepProg (BitVec 64) :=
.seq crepBody90_298 crepBody90_58

def crepBody90_300 : CrepProg (BitVec 64) :=
.seq crepBody90_299 crepBody90_176

def crepBody90_301 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 19]]],
      Flapjack.CrepExp.const 18446744071591610670#64, Flapjack.CrepExp.var 9])

def crepBody90_302 : CrepProg (BitVec 64) :=
.seq crepBody90_301 crepBody90_1

def crepBody90_303 : CrepProg (BitVec 64) :=
.seq crepBody90_300 crepBody90_302

def crepBody90_304 : CrepProg (BitVec 64) :=
.seq crepBody90_303 crepBody90_65

def crepBody90_305 : CrepProg (BitVec 64) :=
.seq crepBody90_304 crepBody90_68

def crepBody90_306 : CrepProg (BitVec 64) :=
.seq crepBody90_305 crepBody90_185

def crepBody90_307 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
        [Flapjack.CrepExp.var 26,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 24,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26]]],
      Flapjack.CrepExp.const 18446744071871540357#64, Flapjack.CrepExp.var 10])

def crepBody90_308 : CrepProg (BitVec 64) :=
.seq crepBody90_307 crepBody90_1

def crepBody90_309 : CrepProg (BitVec 64) :=
.seq crepBody90_306 crepBody90_308

def crepBody90_310 : CrepProg (BitVec 64) :=
.seq crepBody90_309 crepBody90_75

def crepBody90_311 : CrepProg (BitVec 64) :=
.seq crepBody90_310 crepBody90_78

def crepBody90_312 : CrepProg (BitVec 64) :=
.seq crepBody90_311 crepBody90_194

def crepBody90_313 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 26,
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
      Flapjack.CrepExp.const 18446744072145070241#64, Flapjack.CrepExp.var 11])

def crepBody90_314 : CrepProg (BitVec 64) :=
.seq crepBody90_313 crepBody90_1

def crepBody90_315 : CrepProg (BitVec 64) :=
.seq crepBody90_312 crepBody90_314

def crepBody90_316 : CrepProg (BitVec 64) :=
.seq crepBody90_315 crepBody90_5

def crepBody90_317 : CrepProg (BitVec 64) :=
.seq crepBody90_316 crepBody90_8

def crepBody90_318 : CrepProg (BitVec 64) :=
.seq crepBody90_317 crepBody90_203

def crepBody90_319 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 18446744072234886731#64, Flapjack.CrepExp.var 12])

def crepBody90_320 : CrepProg (BitVec 64) :=
.seq crepBody90_319 crepBody90_1

def crepBody90_321 : CrepProg (BitVec 64) :=
.seq crepBody90_318 crepBody90_320

def crepBody90_322 : CrepProg (BitVec 64) :=
.seq crepBody90_321 crepBody90_15

def crepBody90_323 : CrepProg (BitVec 64) :=
.seq crepBody90_322 crepBody90_18

def crepBody90_324 : CrepProg (BitVec 64) :=
.seq crepBody90_323 crepBody90_212

def crepBody90_325 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 18446744072674315120#64, Flapjack.CrepExp.var 13])

def crepBody90_326 : CrepProg (BitVec 64) :=
.seq crepBody90_325 crepBody90_1

def crepBody90_327 : CrepProg (BitVec 64) :=
.seq crepBody90_324 crepBody90_326

def crepBody90_328 : CrepProg (BitVec 64) :=
.seq crepBody90_327 crepBody90_25

def crepBody90_329 : CrepProg (BitVec 64) :=
.seq crepBody90_328 crepBody90_28

def crepBody90_330 : CrepProg (BitVec 64) :=
.seq crepBody90_329 crepBody90_221

def crepBody90_331 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 18446744072760349091#64, Flapjack.CrepExp.var 14])

def crepBody90_332 : CrepProg (BitVec 64) :=
.seq crepBody90_331 crepBody90_1

def crepBody90_333 : CrepProg (BitVec 64) :=
.seq crepBody90_330 crepBody90_332

def crepBody90_334 : CrepProg (BitVec 64) :=
.seq crepBody90_333 crepBody90_35

def crepBody90_335 : CrepProg (BitVec 64) :=
.seq crepBody90_334 crepBody90_38

def crepBody90_336 : CrepProg (BitVec 64) :=
.seq crepBody90_335 crepBody90_230

def crepBody90_337 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 18446744072930650137#64, Flapjack.CrepExp.var 15])

def crepBody90_338 : CrepProg (BitVec 64) :=
.seq crepBody90_337 crepBody90_1

def crepBody90_339 : CrepProg (BitVec 64) :=
.seq crepBody90_336 crepBody90_338

def crepBody90_340 : CrepProg (BitVec 64) :=
.seq crepBody90_339 crepBody90_45

def crepBody90_341 : CrepProg (BitVec 64) :=
.seq crepBody90_340 crepBody90_48

def crepBody90_342 : CrepProg (BitVec 64) :=
.seq crepBody90_341 crepBody90_239

def crepBody90_343 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 21,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 20,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 26,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]]],
      Flapjack.CrepExp.const 18446744073014937124#64, Flapjack.CrepExp.var 16])

def crepBody90_344 : CrepProg (BitVec 64) :=
.seq crepBody90_343 crepBody90_1

def crepBody90_345 : CrepProg (BitVec 64) :=
.seq crepBody90_342 crepBody90_344

def crepBody90_346 : CrepProg (BitVec 64) :=
.seq crepBody90_345 crepBody90_55

def crepBody90_347 : CrepProg (BitVec 64) :=
.seq crepBody90_346 crepBody90_58

def crepBody90_348 : CrepProg (BitVec 64) :=
.seq crepBody90_347 crepBody90_248

def crepBody90_349 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 19]]],
      Flapjack.CrepExp.const 18446744073509156229#64, Flapjack.CrepExp.var 17])

def crepBody90_350 : CrepProg (BitVec 64) :=
.seq crepBody90_349 crepBody90_1

def crepBody90_351 : CrepProg (BitVec 64) :=
.seq crepBody90_348 crepBody90_350

def crepBody90_352 : CrepProg (BitVec 64) :=
.seq crepBody90_351 crepBody90_65

def crepBody90_353 : CrepProg (BitVec 64) :=
.seq crepBody90_352 crepBody90_68

def crepBody90_354 : CrepProg (BitVec 64) :=
.seq crepBody90_353 crepBody90_257

def crepBody90_355 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
        [Flapjack.CrepExp.var 26,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 24,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26]]],
      Flapjack.CrepExp.const 275423344#64, Flapjack.CrepExp.var 18])

def crepBody90_356 : CrepProg (BitVec 64) :=
.seq crepBody90_355 crepBody90_1

def crepBody90_357 : CrepProg (BitVec 64) :=
.seq crepBody90_354 crepBody90_356

def crepBody90_358 : CrepProg (BitVec 64) :=
.seq crepBody90_357 crepBody90_75

def crepBody90_359 : CrepProg (BitVec 64) :=
.seq crepBody90_358 crepBody90_78

def crepBody90_360 : CrepProg (BitVec 64) :=
.seq crepBody90_359 crepBody90_122

def crepBody90_361 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 26,
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
      Flapjack.CrepExp.const 430227734#64, Flapjack.CrepExp.var 3])

def crepBody90_362 : CrepProg (BitVec 64) :=
.seq crepBody90_361 crepBody90_1

def crepBody90_363 : CrepProg (BitVec 64) :=
.seq crepBody90_360 crepBody90_362

def crepBody90_364 : CrepProg (BitVec 64) :=
.seq crepBody90_363 crepBody90_5

def crepBody90_365 : CrepProg (BitVec 64) :=
.seq crepBody90_364 crepBody90_8

def crepBody90_366 : CrepProg (BitVec 64) :=
.seq crepBody90_365 crepBody90_131

def crepBody90_367 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 506948616#64, Flapjack.CrepExp.var 4])

def crepBody90_368 : CrepProg (BitVec 64) :=
.seq crepBody90_367 crepBody90_1

def crepBody90_369 : CrepProg (BitVec 64) :=
.seq crepBody90_366 crepBody90_368

def crepBody90_370 : CrepProg (BitVec 64) :=
.seq crepBody90_369 crepBody90_15

def crepBody90_371 : CrepProg (BitVec 64) :=
.seq crepBody90_370 crepBody90_18

def crepBody90_372 : CrepProg (BitVec 64) :=
.seq crepBody90_371 crepBody90_140

def crepBody90_373 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 659060556#64, Flapjack.CrepExp.var 5])

def crepBody90_374 : CrepProg (BitVec 64) :=
.seq crepBody90_373 crepBody90_1

def crepBody90_375 : CrepProg (BitVec 64) :=
.seq crepBody90_372 crepBody90_374

def crepBody90_376 : CrepProg (BitVec 64) :=
.seq crepBody90_375 crepBody90_25

def crepBody90_377 : CrepProg (BitVec 64) :=
.seq crepBody90_376 crepBody90_28

def crepBody90_378 : CrepProg (BitVec 64) :=
.seq crepBody90_377 crepBody90_149

def crepBody90_379 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 883997877#64, Flapjack.CrepExp.var 6])

def crepBody90_380 : CrepProg (BitVec 64) :=
.seq crepBody90_379 crepBody90_1

def crepBody90_381 : CrepProg (BitVec 64) :=
.seq crepBody90_378 crepBody90_380

def crepBody90_382 : CrepProg (BitVec 64) :=
.seq crepBody90_381 crepBody90_35

def crepBody90_383 : CrepProg (BitVec 64) :=
.seq crepBody90_382 crepBody90_38

def crepBody90_384 : CrepProg (BitVec 64) :=
.seq crepBody90_383 crepBody90_158

def crepBody90_385 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 958139571#64, Flapjack.CrepExp.var 7])

def crepBody90_386 : CrepProg (BitVec 64) :=
.seq crepBody90_385 crepBody90_1

def crepBody90_387 : CrepProg (BitVec 64) :=
.seq crepBody90_384 crepBody90_386

def crepBody90_388 : CrepProg (BitVec 64) :=
.seq crepBody90_387 crepBody90_45

def crepBody90_389 : CrepProg (BitVec 64) :=
.seq crepBody90_388 crepBody90_48

def crepBody90_390 : CrepProg (BitVec 64) :=
.seq crepBody90_389 crepBody90_167

def crepBody90_391 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 21,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 20,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 26,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]]],
      Flapjack.CrepExp.const 1322822218#64, Flapjack.CrepExp.var 8])

def crepBody90_392 : CrepProg (BitVec 64) :=
.seq crepBody90_391 crepBody90_1

def crepBody90_393 : CrepProg (BitVec 64) :=
.seq crepBody90_390 crepBody90_392

def crepBody90_394 : CrepProg (BitVec 64) :=
.seq crepBody90_393 crepBody90_55

def crepBody90_395 : CrepProg (BitVec 64) :=
.seq crepBody90_394 crepBody90_58

def crepBody90_396 : CrepProg (BitVec 64) :=
.seq crepBody90_395 crepBody90_176

def crepBody90_397 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 19]]],
      Flapjack.CrepExp.const 1537002063#64, Flapjack.CrepExp.var 9])

def crepBody90_398 : CrepProg (BitVec 64) :=
.seq crepBody90_397 crepBody90_1

def crepBody90_399 : CrepProg (BitVec 64) :=
.seq crepBody90_396 crepBody90_398

def crepBody90_400 : CrepProg (BitVec 64) :=
.seq crepBody90_399 crepBody90_65

def crepBody90_401 : CrepProg (BitVec 64) :=
.seq crepBody90_400 crepBody90_68

def crepBody90_402 : CrepProg (BitVec 64) :=
.seq crepBody90_401 crepBody90_185

def crepBody90_403 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
        [Flapjack.CrepExp.var 26,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 24,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26]]],
      Flapjack.CrepExp.const 1747873779#64, Flapjack.CrepExp.var 10])

def crepBody90_404 : CrepProg (BitVec 64) :=
.seq crepBody90_403 crepBody90_1

def crepBody90_405 : CrepProg (BitVec 64) :=
.seq crepBody90_402 crepBody90_404

def crepBody90_406 : CrepProg (BitVec 64) :=
.seq crepBody90_405 crepBody90_75

def crepBody90_407 : CrepProg (BitVec 64) :=
.seq crepBody90_406 crepBody90_78

def crepBody90_408 : CrepProg (BitVec 64) :=
.seq crepBody90_407 crepBody90_194

def crepBody90_409 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 26,
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
      Flapjack.CrepExp.const 1955562222#64, Flapjack.CrepExp.var 11])

def crepBody90_410 : CrepProg (BitVec 64) :=
.seq crepBody90_409 crepBody90_1

def crepBody90_411 : CrepProg (BitVec 64) :=
.seq crepBody90_408 crepBody90_410

def crepBody90_412 : CrepProg (BitVec 64) :=
.seq crepBody90_411 crepBody90_5

def crepBody90_413 : CrepProg (BitVec 64) :=
.seq crepBody90_412 crepBody90_8

def crepBody90_414 : CrepProg (BitVec 64) :=
.seq crepBody90_413 crepBody90_203

def crepBody90_415 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 2024104815#64, Flapjack.CrepExp.var 12])

def crepBody90_416 : CrepProg (BitVec 64) :=
.seq crepBody90_415 crepBody90_1

def crepBody90_417 : CrepProg (BitVec 64) :=
.seq crepBody90_414 crepBody90_416

def crepBody90_418 : CrepProg (BitVec 64) :=
.seq crepBody90_417 crepBody90_15

def crepBody90_419 : CrepProg (BitVec 64) :=
.seq crepBody90_418 crepBody90_18

def crepBody90_420 : CrepProg (BitVec 64) :=
.seq crepBody90_419 crepBody90_212

def crepBody90_421 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 18446744071642314772#64, Flapjack.CrepExp.var 13])

def crepBody90_422 : CrepProg (BitVec 64) :=
.seq crepBody90_421 crepBody90_1

def crepBody90_423 : CrepProg (BitVec 64) :=
.seq crepBody90_420 crepBody90_422

def crepBody90_424 : CrepProg (BitVec 64) :=
.seq crepBody90_423 crepBody90_25

def crepBody90_425 : CrepProg (BitVec 64) :=
.seq crepBody90_424 crepBody90_28

def crepBody90_426 : CrepProg (BitVec 64) :=
.seq crepBody90_425 crepBody90_221

def crepBody90_427 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 18446744071776436744#64, Flapjack.CrepExp.var 14])

def crepBody90_428 : CrepProg (BitVec 64) :=
.seq crepBody90_427 crepBody90_1

def crepBody90_429 : CrepProg (BitVec 64) :=
.seq crepBody90_426 crepBody90_428

def crepBody90_430 : CrepProg (BitVec 64) :=
.seq crepBody90_429 crepBody90_35

def crepBody90_431 : CrepProg (BitVec 64) :=
.seq crepBody90_430 crepBody90_38

def crepBody90_432 : CrepProg (BitVec 64) :=
.seq crepBody90_431 crepBody90_230

def crepBody90_433 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 18446744071843020794#64, Flapjack.CrepExp.var 15])

def crepBody90_434 : CrepProg (BitVec 64) :=
.seq crepBody90_433 crepBody90_1

def crepBody90_435 : CrepProg (BitVec 64) :=
.seq crepBody90_432 crepBody90_434

def crepBody90_436 : CrepProg (BitVec 64) :=
.seq crepBody90_435 crepBody90_45

def crepBody90_437 : CrepProg (BitVec 64) :=
.seq crepBody90_436 crepBody90_48

def crepBody90_438 : CrepProg (BitVec 64) :=
.seq crepBody90_437 crepBody90_239

def crepBody90_439 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 21,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 20,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 26,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]]],
      Flapjack.CrepExp.const 18446744072171318507#64, Flapjack.CrepExp.var 16])

def crepBody90_440 : CrepProg (BitVec 64) :=
.seq crepBody90_439 crepBody90_1

def crepBody90_441 : CrepProg (BitVec 64) :=
.seq crepBody90_438 crepBody90_440

def crepBody90_442 : CrepProg (BitVec 64) :=
.seq crepBody90_441 crepBody90_55

def crepBody90_443 : CrepProg (BitVec 64) :=
.seq crepBody90_442 crepBody90_58

def crepBody90_444 : CrepProg (BitVec 64) :=
.seq crepBody90_443 crepBody90_248

def crepBody90_445 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 19]]],
      Flapjack.CrepExp.const 18446744072618615799#64, Flapjack.CrepExp.var 17])

def crepBody90_446 : CrepProg (BitVec 64) :=
.seq crepBody90_445 crepBody90_1

def crepBody90_447 : CrepProg (BitVec 64) :=
.seq crepBody90_444 crepBody90_446

def crepBody90_448 : CrepProg (BitVec 64) :=
.seq crepBody90_447 crepBody90_65

def crepBody90_449 : CrepProg (BitVec 64) :=
.seq crepBody90_448 crepBody90_68

def crepBody90_450 : CrepProg (BitVec 64) :=
.seq crepBody90_449 crepBody90_257

def crepBody90_451 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
        [Flapjack.CrepExp.var 26,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 24,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26]]],
      Flapjack.CrepExp.const 18446744072743909618#64, Flapjack.CrepExp.var 18])

def crepBody90_452 : CrepProg (BitVec 64) :=
.seq crepBody90_451 crepBody90_1

def crepBody90_453 : CrepProg (BitVec 64) :=
.seq crepBody90_450 crepBody90_452

def crepBody90_454 : CrepProg (BitVec 64) :=
.seq crepBody90_453 crepBody90_75

def crepBody90_455 : CrepProg (BitVec 64) :=
.seq crepBody90_454 crepBody90_78

def crepBody90_456 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr
    (Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 19, Flapjack.CrepExp.const 1779033703#64])
      (Flapjack.CrepExp.const 32#64))
    (Flapjack.CrepExp.const 32#64))

def crepBody90_457 : CrepProg (BitVec 64) :=
.seq crepBody90_456 crepBody90_1

def crepBody90_458 : CrepProg (BitVec 64) :=
.seq crepBody90_455 crepBody90_457

def crepBody90_459 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 19 (Flapjack.CrepExp.var 3)

def crepBody90_460 : CrepProg (BitVec 64) :=
.seq crepBody90_459 crepBody90_1

def crepBody90_461 : CrepProg (BitVec 64) :=
.seq crepBody90_458 crepBody90_460

def crepBody90_462 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr
    (Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 20, Flapjack.CrepExp.const 18446744072558718597#64])
      (Flapjack.CrepExp.const 32#64))
    (Flapjack.CrepExp.const 32#64))

def crepBody90_463 : CrepProg (BitVec 64) :=
.seq crepBody90_462 crepBody90_1

def crepBody90_464 : CrepProg (BitVec 64) :=
.seq crepBody90_461 crepBody90_463

def crepBody90_465 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 20 (Flapjack.CrepExp.var 4)

def crepBody90_466 : CrepProg (BitVec 64) :=
.seq crepBody90_465 crepBody90_1

def crepBody90_467 : CrepProg (BitVec 64) :=
.seq crepBody90_464 crepBody90_466

def crepBody90_468 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr
    (Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 21, Flapjack.CrepExp.const 1013904242#64])
      (Flapjack.CrepExp.const 32#64))
    (Flapjack.CrepExp.const 32#64))

def crepBody90_469 : CrepProg (BitVec 64) :=
.seq crepBody90_468 crepBody90_1

def crepBody90_470 : CrepProg (BitVec 64) :=
.seq crepBody90_467 crepBody90_469

def crepBody90_471 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 21 (Flapjack.CrepExp.var 5)

def crepBody90_472 : CrepProg (BitVec 64) :=
.seq crepBody90_471 crepBody90_1

def crepBody90_473 : CrepProg (BitVec 64) :=
.seq crepBody90_470 crepBody90_472

def crepBody90_474 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr
    (Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 22, Flapjack.CrepExp.const 18446744072188065082#64])
      (Flapjack.CrepExp.const 32#64))
    (Flapjack.CrepExp.const 32#64))

def crepBody90_475 : CrepProg (BitVec 64) :=
.seq crepBody90_474 crepBody90_1

def crepBody90_476 : CrepProg (BitVec 64) :=
.seq crepBody90_473 crepBody90_475

def crepBody90_477 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 22 (Flapjack.CrepExp.var 6)

def crepBody90_478 : CrepProg (BitVec 64) :=
.seq crepBody90_477 crepBody90_1

def crepBody90_479 : CrepProg (BitVec 64) :=
.seq crepBody90_476 crepBody90_478

def crepBody90_480 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr
    (Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 23, Flapjack.CrepExp.const 1359893119#64])
      (Flapjack.CrepExp.const 32#64))
    (Flapjack.CrepExp.const 32#64))

def crepBody90_481 : CrepProg (BitVec 64) :=
.seq crepBody90_480 crepBody90_1

def crepBody90_482 : CrepProg (BitVec 64) :=
.seq crepBody90_479 crepBody90_481

def crepBody90_483 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 23 (Flapjack.CrepExp.var 7)

def crepBody90_484 : CrepProg (BitVec 64) :=
.seq crepBody90_483 crepBody90_1

def crepBody90_485 : CrepProg (BitVec 64) :=
.seq crepBody90_482 crepBody90_484

def crepBody90_486 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr
    (Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 24, Flapjack.CrepExp.const 18446744072015407244#64])
      (Flapjack.CrepExp.const 32#64))
    (Flapjack.CrepExp.const 32#64))

def crepBody90_487 : CrepProg (BitVec 64) :=
.seq crepBody90_486 crepBody90_1

def crepBody90_488 : CrepProg (BitVec 64) :=
.seq crepBody90_485 crepBody90_487

def crepBody90_489 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 24 (Flapjack.CrepExp.var 8)

def crepBody90_490 : CrepProg (BitVec 64) :=
.seq crepBody90_489 crepBody90_1

def crepBody90_491 : CrepProg (BitVec 64) :=
.seq crepBody90_488 crepBody90_490

def crepBody90_492 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr
    (Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 25, Flapjack.CrepExp.const 528734635#64])
      (Flapjack.CrepExp.const 32#64))
    (Flapjack.CrepExp.const 32#64))

def crepBody90_493 : CrepProg (BitVec 64) :=
.seq crepBody90_492 crepBody90_1

def crepBody90_494 : CrepProg (BitVec 64) :=
.seq crepBody90_491 crepBody90_493

def crepBody90_495 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 25 (Flapjack.CrepExp.var 9)

def crepBody90_496 : CrepProg (BitVec 64) :=
.seq crepBody90_495 crepBody90_1

def crepBody90_497 : CrepProg (BitVec 64) :=
.seq crepBody90_494 crepBody90_496

def crepBody90_498 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 10
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr
    (Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 26, Flapjack.CrepExp.const 1541459225#64])
      (Flapjack.CrepExp.const 32#64))
    (Flapjack.CrepExp.const 32#64))

def crepBody90_499 : CrepProg (BitVec 64) :=
.seq crepBody90_498 crepBody90_1

def crepBody90_500 : CrepProg (BitVec 64) :=
.seq crepBody90_497 crepBody90_499

def crepBody90_501 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 26 (Flapjack.CrepExp.var 10)

def crepBody90_502 : CrepProg (BitVec 64) :=
.seq crepBody90_501 crepBody90_1

def crepBody90_503 : CrepProg (BitVec 64) :=
.seq crepBody90_500 crepBody90_502

def crepBody90_504 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 26,
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
      Flapjack.CrepExp.const 18446744072678420376#64])

def crepBody90_505 : CrepProg (BitVec 64) :=
.seq crepBody90_504 crepBody90_1

def crepBody90_506 : CrepProg (BitVec 64) :=
.seq crepBody90_503 crepBody90_505

def crepBody90_507 : CrepProg (BitVec 64) :=
.seq crepBody90_506 crepBody90_5

def crepBody90_508 : CrepProg (BitVec 64) :=
.seq crepBody90_507 crepBody90_8

def crepBody90_509 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 1899447441#64])

def crepBody90_510 : CrepProg (BitVec 64) :=
.seq crepBody90_509 crepBody90_1

def crepBody90_511 : CrepProg (BitVec 64) :=
.seq crepBody90_508 crepBody90_510

def crepBody90_512 : CrepProg (BitVec 64) :=
.seq crepBody90_511 crepBody90_15

def crepBody90_513 : CrepProg (BitVec 64) :=
.seq crepBody90_512 crepBody90_18

def crepBody90_514 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 18446744072463907791#64])

def crepBody90_515 : CrepProg (BitVec 64) :=
.seq crepBody90_514 crepBody90_1

def crepBody90_516 : CrepProg (BitVec 64) :=
.seq crepBody90_513 crepBody90_515

def crepBody90_517 : CrepProg (BitVec 64) :=
.seq crepBody90_516 crepBody90_25

def crepBody90_518 : CrepProg (BitVec 64) :=
.seq crepBody90_517 crepBody90_28

def crepBody90_519 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 18446744073335593893#64])

def crepBody90_520 : CrepProg (BitVec 64) :=
.seq crepBody90_519 crepBody90_1

def crepBody90_521 : CrepProg (BitVec 64) :=
.seq crepBody90_518 crepBody90_520

def crepBody90_522 : CrepProg (BitVec 64) :=
.seq crepBody90_521 crepBody90_35

def crepBody90_523 : CrepProg (BitVec 64) :=
.seq crepBody90_522 crepBody90_38

def crepBody90_524 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 961987163#64])

def crepBody90_525 : CrepProg (BitVec 64) :=
.seq crepBody90_524 crepBody90_1

def crepBody90_526 : CrepProg (BitVec 64) :=
.seq crepBody90_523 crepBody90_525

def crepBody90_527 : CrepProg (BitVec 64) :=
.seq crepBody90_526 crepBody90_45

def crepBody90_528 : CrepProg (BitVec 64) :=
.seq crepBody90_527 crepBody90_48

def crepBody90_529 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 21,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 20,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 26,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]]],
      Flapjack.CrepExp.const 1508970993#64])

def crepBody90_530 : CrepProg (BitVec 64) :=
.seq crepBody90_529 crepBody90_1

def crepBody90_531 : CrepProg (BitVec 64) :=
.seq crepBody90_528 crepBody90_530

def crepBody90_532 : CrepProg (BitVec 64) :=
.seq crepBody90_531 crepBody90_55

def crepBody90_533 : CrepProg (BitVec 64) :=
.seq crepBody90_532 crepBody90_58

def crepBody90_534 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 19]]],
      Flapjack.CrepExp.const 18446744071868220068#64])

def crepBody90_535 : CrepProg (BitVec 64) :=
.seq crepBody90_534 crepBody90_1

def crepBody90_536 : CrepProg (BitVec 64) :=
.seq crepBody90_533 crepBody90_535

def crepBody90_537 : CrepProg (BitVec 64) :=
.seq crepBody90_536 crepBody90_65

def crepBody90_538 : CrepProg (BitVec 64) :=
.seq crepBody90_537 crepBody90_68

def crepBody90_539 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
        [Flapjack.CrepExp.var 26,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 24,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26]]],
      Flapjack.CrepExp.const 18446744072285347541#64])

def crepBody90_540 : CrepProg (BitVec 64) :=
.seq crepBody90_539 crepBody90_1

def crepBody90_541 : CrepProg (BitVec 64) :=
.seq crepBody90_538 crepBody90_540

def crepBody90_542 : CrepProg (BitVec 64) :=
.seq crepBody90_541 crepBody90_75

def crepBody90_543 : CrepProg (BitVec 64) :=
.seq crepBody90_542 crepBody90_78

def crepBody90_544 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 26,
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
      Flapjack.CrepExp.const 18446744073038965400#64])

def crepBody90_545 : CrepProg (BitVec 64) :=
.seq crepBody90_544 crepBody90_1

def crepBody90_546 : CrepProg (BitVec 64) :=
.seq crepBody90_543 crepBody90_545

def crepBody90_547 : CrepProg (BitVec 64) :=
.seq crepBody90_546 crepBody90_5

def crepBody90_548 : CrepProg (BitVec 64) :=
.seq crepBody90_547 crepBody90_8

def crepBody90_549 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 310598401#64])

def crepBody90_550 : CrepProg (BitVec 64) :=
.seq crepBody90_549 crepBody90_1

def crepBody90_551 : CrepProg (BitVec 64) :=
.seq crepBody90_548 crepBody90_550

def crepBody90_552 : CrepProg (BitVec 64) :=
.seq crepBody90_551 crepBody90_15

def crepBody90_553 : CrepProg (BitVec 64) :=
.seq crepBody90_552 crepBody90_18

def crepBody90_554 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 607225278#64])

def crepBody90_555 : CrepProg (BitVec 64) :=
.seq crepBody90_554 crepBody90_1

def crepBody90_556 : CrepProg (BitVec 64) :=
.seq crepBody90_553 crepBody90_555

def crepBody90_557 : CrepProg (BitVec 64) :=
.seq crepBody90_556 crepBody90_25

def crepBody90_558 : CrepProg (BitVec 64) :=
.seq crepBody90_557 crepBody90_28

def crepBody90_559 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 1426881987#64])

def crepBody90_560 : CrepProg (BitVec 64) :=
.seq crepBody90_559 crepBody90_1

def crepBody90_561 : CrepProg (BitVec 64) :=
.seq crepBody90_558 crepBody90_560

def crepBody90_562 : CrepProg (BitVec 64) :=
.seq crepBody90_561 crepBody90_35

def crepBody90_563 : CrepProg (BitVec 64) :=
.seq crepBody90_562 crepBody90_38

def crepBody90_564 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 1925078388#64])

def crepBody90_565 : CrepProg (BitVec 64) :=
.seq crepBody90_564 crepBody90_1

def crepBody90_566 : CrepProg (BitVec 64) :=
.seq crepBody90_563 crepBody90_565

def crepBody90_567 : CrepProg (BitVec 64) :=
.seq crepBody90_566 crepBody90_45

def crepBody90_568 : CrepProg (BitVec 64) :=
.seq crepBody90_567 crepBody90_48

def crepBody90_569 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 21,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 20,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 26,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]]],
      Flapjack.CrepExp.const 18446744071576662526#64])

def crepBody90_570 : CrepProg (BitVec 64) :=
.seq crepBody90_569 crepBody90_1

def crepBody90_571 : CrepProg (BitVec 64) :=
.seq crepBody90_568 crepBody90_570

def crepBody90_572 : CrepProg (BitVec 64) :=
.seq crepBody90_571 crepBody90_55

def crepBody90_573 : CrepProg (BitVec 64) :=
.seq crepBody90_572 crepBody90_58

def crepBody90_574 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 19]]],
      Flapjack.CrepExp.const 18446744072029472423#64])

def crepBody90_575 : CrepProg (BitVec 64) :=
.seq crepBody90_574 crepBody90_1

def crepBody90_576 : CrepProg (BitVec 64) :=
.seq crepBody90_573 crepBody90_575

def crepBody90_577 : CrepProg (BitVec 64) :=
.seq crepBody90_576 crepBody90_65

def crepBody90_578 : CrepProg (BitVec 64) :=
.seq crepBody90_577 crepBody90_68

def crepBody90_579 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
        [Flapjack.CrepExp.var 26,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 24,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26]]],
      Flapjack.CrepExp.const 18446744072662807412#64])

def crepBody90_580 : CrepProg (BitVec 64) :=
.seq crepBody90_579 crepBody90_1

def crepBody90_581 : CrepProg (BitVec 64) :=
.seq crepBody90_578 crepBody90_580

def crepBody90_582 : CrepProg (BitVec 64) :=
.seq crepBody90_581 crepBody90_75

def crepBody90_583 : CrepProg (BitVec 64) :=
.seq crepBody90_582 crepBody90_78

def crepBody90_584 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 26,
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
      Flapjack.CrepExp.const 1687906753#64])

def crepBody90_585 : CrepProg (BitVec 64) :=
.seq crepBody90_584 crepBody90_1

def crepBody90_586 : CrepProg (BitVec 64) :=
.seq crepBody90_583 crepBody90_585

def crepBody90_587 : CrepProg (BitVec 64) :=
.seq crepBody90_586 crepBody90_5

def crepBody90_588 : CrepProg (BitVec 64) :=
.seq crepBody90_587 crepBody90_8

def crepBody90_589 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 18446744073457780614#64])

def crepBody90_590 : CrepProg (BitVec 64) :=
.seq crepBody90_589 crepBody90_1

def crepBody90_591 : CrepProg (BitVec 64) :=
.seq crepBody90_588 crepBody90_590

def crepBody90_592 : CrepProg (BitVec 64) :=
.seq crepBody90_591 crepBody90_15

def crepBody90_593 : CrepProg (BitVec 64) :=
.seq crepBody90_592 crepBody90_18

def crepBody90_594 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 266464710#64])

def crepBody90_595 : CrepProg (BitVec 64) :=
.seq crepBody90_594 crepBody90_1

def crepBody90_596 : CrepProg (BitVec 64) :=
.seq crepBody90_593 crepBody90_595

def crepBody90_597 : CrepProg (BitVec 64) :=
.seq crepBody90_596 crepBody90_25

def crepBody90_598 : CrepProg (BitVec 64) :=
.seq crepBody90_597 crepBody90_28

def crepBody90_599 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 604828244#64])

def crepBody90_600 : CrepProg (BitVec 64) :=
.seq crepBody90_599 crepBody90_1

def crepBody90_601 : CrepProg (BitVec 64) :=
.seq crepBody90_598 crepBody90_600

def crepBody90_602 : CrepProg (BitVec 64) :=
.seq crepBody90_601 crepBody90_35

def crepBody90_603 : CrepProg (BitVec 64) :=
.seq crepBody90_602 crepBody90_38

def crepBody90_604 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 1340683375#64])

def crepBody90_605 : CrepProg (BitVec 64) :=
.seq crepBody90_604 crepBody90_1

def crepBody90_606 : CrepProg (BitVec 64) :=
.seq crepBody90_603 crepBody90_605

def crepBody90_607 : CrepProg (BitVec 64) :=
.seq crepBody90_606 crepBody90_45

def crepBody90_608 : CrepProg (BitVec 64) :=
.seq crepBody90_607 crepBody90_48

def crepBody90_609 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 21,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 20,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 26,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]]],
      Flapjack.CrepExp.const 1825146046#64])

def crepBody90_610 : CrepProg (BitVec 64) :=
.seq crepBody90_609 crepBody90_1

def crepBody90_611 : CrepProg (BitVec 64) :=
.seq crepBody90_608 crepBody90_610

def crepBody90_612 : CrepProg (BitVec 64) :=
.seq crepBody90_611 crepBody90_55

def crepBody90_613 : CrepProg (BitVec 64) :=
.seq crepBody90_612 crepBody90_58

def crepBody90_614 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 19]]],
      Flapjack.CrepExp.const 1639530782#64])

def crepBody90_615 : CrepProg (BitVec 64) :=
.seq crepBody90_614 crepBody90_1

def crepBody90_616 : CrepProg (BitVec 64) :=
.seq crepBody90_613 crepBody90_615

def crepBody90_617 : CrepProg (BitVec 64) :=
.seq crepBody90_616 crepBody90_65

def crepBody90_618 : CrepProg (BitVec 64) :=
.seq crepBody90_617 crepBody90_68

def crepBody90_619 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
        [Flapjack.CrepExp.var 26,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 24,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26]]],
      Flapjack.CrepExp.const 385452282#64])

def crepBody90_620 : CrepProg (BitVec 64) :=
.seq crepBody90_619 crepBody90_1

def crepBody90_621 : CrepProg (BitVec 64) :=
.seq crepBody90_618 crepBody90_620

def crepBody90_622 : CrepProg (BitVec 64) :=
.seq crepBody90_621 crepBody90_75

def crepBody90_623 : CrepProg (BitVec 64) :=
.seq crepBody90_622 crepBody90_78

def crepBody90_624 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 26,
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
      Flapjack.CrepExp.const 18446744073487667538#64])

def crepBody90_625 : CrepProg (BitVec 64) :=
.seq crepBody90_624 crepBody90_1

def crepBody90_626 : CrepProg (BitVec 64) :=
.seq crepBody90_623 crepBody90_625

def crepBody90_627 : CrepProg (BitVec 64) :=
.seq crepBody90_626 crepBody90_5

def crepBody90_628 : CrepProg (BitVec 64) :=
.seq crepBody90_627 crepBody90_8

def crepBody90_629 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 18446744072242485869#64])

def crepBody90_630 : CrepProg (BitVec 64) :=
.seq crepBody90_629 crepBody90_1

def crepBody90_631 : CrepProg (BitVec 64) :=
.seq crepBody90_628 crepBody90_630

def crepBody90_632 : CrepProg (BitVec 64) :=
.seq crepBody90_631 crepBody90_15

def crepBody90_633 : CrepProg (BitVec 64) :=
.seq crepBody90_632 crepBody90_18

def crepBody90_634 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 18446744072369077349#64])

def crepBody90_635 : CrepProg (BitVec 64) :=
.seq crepBody90_634 crepBody90_1

def crepBody90_636 : CrepProg (BitVec 64) :=
.seq crepBody90_633 crepBody90_635

def crepBody90_637 : CrepProg (BitVec 64) :=
.seq crepBody90_636 crepBody90_25

def crepBody90_638 : CrepProg (BitVec 64) :=
.seq crepBody90_637 crepBody90_28

def crepBody90_639 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 18446744072532631239#64])

def crepBody90_640 : CrepProg (BitVec 64) :=
.seq crepBody90_639 crepBody90_1

def crepBody90_641 : CrepProg (BitVec 64) :=
.seq crepBody90_638 crepBody90_640

def crepBody90_642 : CrepProg (BitVec 64) :=
.seq crepBody90_641 crepBody90_35

def crepBody90_643 : CrepProg (BitVec 64) :=
.seq crepBody90_642 crepBody90_38

def crepBody90_644 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 18446744071999467971#64])

def crepBody90_645 : CrepProg (BitVec 64) :=
.seq crepBody90_644 crepBody90_1

def crepBody90_646 : CrepProg (BitVec 64) :=
.seq crepBody90_643 crepBody90_645

def crepBody90_647 : CrepProg (BitVec 64) :=
.seq crepBody90_646 crepBody90_45

def crepBody90_648 : CrepProg (BitVec 64) :=
.seq crepBody90_647 crepBody90_48

def crepBody90_649 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 21,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 20,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 26,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]]],
      Flapjack.CrepExp.const 18446744073291098784#64])

def crepBody90_650 : CrepProg (BitVec 64) :=
.seq crepBody90_649 crepBody90_1

def crepBody90_651 : CrepProg (BitVec 64) :=
.seq crepBody90_648 crepBody90_650

def crepBody90_652 : CrepProg (BitVec 64) :=
.seq crepBody90_651 crepBody90_55

def crepBody90_653 : CrepProg (BitVec 64) :=
.seq crepBody90_652 crepBody90_58

def crepBody90_654 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 19]]],
      Flapjack.CrepExp.const 18446744073670828843#64])

def crepBody90_655 : CrepProg (BitVec 64) :=
.seq crepBody90_654 crepBody90_1

def crepBody90_656 : CrepProg (BitVec 64) :=
.seq crepBody90_653 crepBody90_655

def crepBody90_657 : CrepProg (BitVec 64) :=
.seq crepBody90_656 crepBody90_65

def crepBody90_658 : CrepProg (BitVec 64) :=
.seq crepBody90_657 crepBody90_68

def crepBody90_659 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
        [Flapjack.CrepExp.var 26,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 24,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26]]],
      Flapjack.CrepExp.const 18446744072756739760#64])

def crepBody90_660 : CrepProg (BitVec 64) :=
.seq crepBody90_659 crepBody90_1

def crepBody90_661 : CrepProg (BitVec 64) :=
.seq crepBody90_658 crepBody90_660

def crepBody90_662 : CrepProg (BitVec 64) :=
.seq crepBody90_661 crepBody90_75

def crepBody90_663 : CrepProg (BitVec 64) :=
.seq crepBody90_662 crepBody90_78

def crepBody90_664 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 26,
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
      Flapjack.CrepExp.const 812235477#64])

def crepBody90_665 : CrepProg (BitVec 64) :=
.seq crepBody90_664 crepBody90_1

def crepBody90_666 : CrepProg (BitVec 64) :=
.seq crepBody90_663 crepBody90_665

def crepBody90_667 : CrepProg (BitVec 64) :=
.seq crepBody90_666 crepBody90_5

def crepBody90_668 : CrepProg (BitVec 64) :=
.seq crepBody90_667 crepBody90_8

def crepBody90_669 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 18446744072830283103#64])

def crepBody90_670 : CrepProg (BitVec 64) :=
.seq crepBody90_669 crepBody90_1

def crepBody90_671 : CrepProg (BitVec 64) :=
.seq crepBody90_668 crepBody90_670

def crepBody90_672 : CrepProg (BitVec 64) :=
.seq crepBody90_671 crepBody90_15

def crepBody90_673 : CrepProg (BitVec 64) :=
.seq crepBody90_672 crepBody90_18

def crepBody90_674 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 1510936975#64])

def crepBody90_675 : CrepProg (BitVec 64) :=
.seq crepBody90_674 crepBody90_1

def crepBody90_676 : CrepProg (BitVec 64) :=
.seq crepBody90_673 crepBody90_675

def crepBody90_677 : CrepProg (BitVec 64) :=
.seq crepBody90_676 crepBody90_25

def crepBody90_678 : CrepProg (BitVec 64) :=
.seq crepBody90_677 crepBody90_28

def crepBody90_679 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 18446744073107599101#64])

def crepBody90_680 : CrepProg (BitVec 64) :=
.seq crepBody90_679 crepBody90_1

def crepBody90_681 : CrepProg (BitVec 64) :=
.seq crepBody90_678 crepBody90_680

def crepBody90_682 : CrepProg (BitVec 64) :=
.seq crepBody90_681 crepBody90_35

def crepBody90_683 : CrepProg (BitVec 64) :=
.seq crepBody90_682 crepBody90_38

def crepBody90_684 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 171292297#64])

def crepBody90_685 : CrepProg (BitVec 64) :=
.seq crepBody90_684 crepBody90_1

def crepBody90_686 : CrepProg (BitVec 64) :=
.seq crepBody90_683 crepBody90_685

def crepBody90_687 : CrepProg (BitVec 64) :=
.seq crepBody90_686 crepBody90_45

def crepBody90_688 : CrepProg (BitVec 64) :=
.seq crepBody90_687 crepBody90_48

def crepBody90_689 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 21,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 20,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 26,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]]],
      Flapjack.CrepExp.const 18446744073139878404#64])

def crepBody90_690 : CrepProg (BitVec 64) :=
.seq crepBody90_689 crepBody90_1

def crepBody90_691 : CrepProg (BitVec 64) :=
.seq crepBody90_688 crepBody90_690

def crepBody90_692 : CrepProg (BitVec 64) :=
.seq crepBody90_691 crepBody90_55

def crepBody90_693 : CrepProg (BitVec 64) :=
.seq crepBody90_692 crepBody90_58

def crepBody90_694 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 19]]],
      Flapjack.CrepExp.const 1492437661#64])

def crepBody90_695 : CrepProg (BitVec 64) :=
.seq crepBody90_694 crepBody90_1

def crepBody90_696 : CrepProg (BitVec 64) :=
.seq crepBody90_693 crepBody90_695

def crepBody90_697 : CrepProg (BitVec 64) :=
.seq crepBody90_696 crepBody90_65

def crepBody90_698 : CrepProg (BitVec 64) :=
.seq crepBody90_697 crepBody90_68

def crepBody90_699 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
        [Flapjack.CrepExp.var 26,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 24,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26]]],
      Flapjack.CrepExp.const 18446744073195576086#64])

def crepBody90_700 : CrepProg (BitVec 64) :=
.seq crepBody90_699 crepBody90_1

def crepBody90_701 : CrepProg (BitVec 64) :=
.seq crepBody90_698 crepBody90_700

def crepBody90_702 : CrepProg (BitVec 64) :=
.seq crepBody90_701 crepBody90_75

def crepBody90_703 : CrepProg (BitVec 64) :=
.seq crepBody90_702 crepBody90_78

def crepBody90_704 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 26,
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
      Flapjack.CrepExp.const 8339078#64])

def crepBody90_705 : CrepProg (BitVec 64) :=
.seq crepBody90_704 crepBody90_1

def crepBody90_706 : CrepProg (BitVec 64) :=
.seq crepBody90_703 crepBody90_705

def crepBody90_707 : CrepProg (BitVec 64) :=
.seq crepBody90_706 crepBody90_5

def crepBody90_708 : CrepProg (BitVec 64) :=
.seq crepBody90_707 crepBody90_8

def crepBody90_709 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 923306368#64])

def crepBody90_710 : CrepProg (BitVec 64) :=
.seq crepBody90_709 crepBody90_1

def crepBody90_711 : CrepProg (BitVec 64) :=
.seq crepBody90_708 crepBody90_710

def crepBody90_712 : CrepProg (BitVec 64) :=
.seq crepBody90_711 crepBody90_15

def crepBody90_713 : CrepProg (BitVec 64) :=
.seq crepBody90_712 crepBody90_18

def crepBody90_714 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 18446744072183343666#64])

def crepBody90_715 : CrepProg (BitVec 64) :=
.seq crepBody90_714 crepBody90_1

def crepBody90_716 : CrepProg (BitVec 64) :=
.seq crepBody90_713 crepBody90_715

def crepBody90_717 : CrepProg (BitVec 64) :=
.seq crepBody90_716 crepBody90_25

def crepBody90_718 : CrepProg (BitVec 64) :=
.seq crepBody90_717 crepBody90_28

def crepBody90_719 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 1873515831#64])

def crepBody90_720 : CrepProg (BitVec 64) :=
.seq crepBody90_719 crepBody90_1

def crepBody90_721 : CrepProg (BitVec 64) :=
.seq crepBody90_718 crepBody90_720

def crepBody90_722 : CrepProg (BitVec 64) :=
.seq crepBody90_721 crepBody90_35

def crepBody90_723 : CrepProg (BitVec 64) :=
.seq crepBody90_722 crepBody90_38

def crepBody90_724 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 390095120#64])

def crepBody90_725 : CrepProg (BitVec 64) :=
.seq crepBody90_724 crepBody90_1

def crepBody90_726 : CrepProg (BitVec 64) :=
.seq crepBody90_723 crepBody90_725

def crepBody90_727 : CrepProg (BitVec 64) :=
.seq crepBody90_726 crepBody90_45

def crepBody90_728 : CrepProg (BitVec 64) :=
.seq crepBody90_727 crepBody90_48

def crepBody90_729 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 21,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 20,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 26,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]]],
      Flapjack.CrepExp.const 227333873#64])

def crepBody90_730 : CrepProg (BitVec 64) :=
.seq crepBody90_729 crepBody90_1

def crepBody90_731 : CrepProg (BitVec 64) :=
.seq crepBody90_728 crepBody90_730

def crepBody90_732 : CrepProg (BitVec 64) :=
.seq crepBody90_731 crepBody90_55

def crepBody90_733 : CrepProg (BitVec 64) :=
.seq crepBody90_732 crepBody90_58

def crepBody90_734 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 19]]],
      Flapjack.CrepExp.const 18446744072865069933#64])

def crepBody90_735 : CrepProg (BitVec 64) :=
.seq crepBody90_734 crepBody90_1

def crepBody90_736 : CrepProg (BitVec 64) :=
.seq crepBody90_733 crepBody90_735

def crepBody90_737 : CrepProg (BitVec 64) :=
.seq crepBody90_736 crepBody90_65

def crepBody90_738 : CrepProg (BitVec 64) :=
.seq crepBody90_737 crepBody90_68

def crepBody90_739 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
        [Flapjack.CrepExp.var 26,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 24,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26]]],
      Flapjack.CrepExp.const 18446744072648113719#64])

def crepBody90_740 : CrepProg (BitVec 64) :=
.seq crepBody90_739 crepBody90_1

def crepBody90_741 : CrepProg (BitVec 64) :=
.seq crepBody90_738 crepBody90_740

def crepBody90_742 : CrepProg (BitVec 64) :=
.seq crepBody90_741 crepBody90_75

def crepBody90_743 : CrepProg (BitVec 64) :=
.seq crepBody90_742 crepBody90_78

def crepBody90_744 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 26,
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
      Flapjack.CrepExp.const 18446744071618771930#64])

def crepBody90_745 : CrepProg (BitVec 64) :=
.seq crepBody90_744 crepBody90_1

def crepBody90_746 : CrepProg (BitVec 64) :=
.seq crepBody90_743 crepBody90_745

def crepBody90_747 : CrepProg (BitVec 64) :=
.seq crepBody90_746 crepBody90_5

def crepBody90_748 : CrepProg (BitVec 64) :=
.seq crepBody90_747 crepBody90_8

def crepBody90_749 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 18446744073093555043#64])

def crepBody90_750 : CrepProg (BitVec 64) :=
.seq crepBody90_749 crepBody90_1

def crepBody90_751 : CrepProg (BitVec 64) :=
.seq crepBody90_748 crepBody90_750

def crepBody90_752 : CrepProg (BitVec 64) :=
.seq crepBody90_751 crepBody90_15

def crepBody90_753 : CrepProg (BitVec 64) :=
.seq crepBody90_752 crepBody90_18

def crepBody90_754 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 184740145#64])

def crepBody90_755 : CrepProg (BitVec 64) :=
.seq crepBody90_754 crepBody90_1

def crepBody90_756 : CrepProg (BitVec 64) :=
.seq crepBody90_753 crepBody90_755

def crepBody90_757 : CrepProg (BitVec 64) :=
.seq crepBody90_756 crepBody90_25

def crepBody90_758 : CrepProg (BitVec 64) :=
.seq crepBody90_757 crepBody90_28

def crepBody90_759 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 1875991719#64])

def crepBody90_760 : CrepProg (BitVec 64) :=
.seq crepBody90_759 crepBody90_1

def crepBody90_761 : CrepProg (BitVec 64) :=
.seq crepBody90_758 crepBody90_760

def crepBody90_762 : CrepProg (BitVec 64) :=
.seq crepBody90_761 crepBody90_35

def crepBody90_763 : CrepProg (BitVec 64) :=
.seq crepBody90_762 crepBody90_38

def crepBody90_764 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 1377499850#64])

def crepBody90_765 : CrepProg (BitVec 64) :=
.seq crepBody90_764 crepBody90_1

def crepBody90_766 : CrepProg (BitVec 64) :=
.seq crepBody90_763 crepBody90_765

def crepBody90_767 : CrepProg (BitVec 64) :=
.seq crepBody90_766 crepBody90_45

def crepBody90_768 : CrepProg (BitVec 64) :=
.seq crepBody90_767 crepBody90_48

def crepBody90_769 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 21,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 20,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 26,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]]],
      Flapjack.CrepExp.const 825459761#64])

def crepBody90_770 : CrepProg (BitVec 64) :=
.seq crepBody90_769 crepBody90_1

def crepBody90_771 : CrepProg (BitVec 64) :=
.seq crepBody90_768 crepBody90_770

def crepBody90_772 : CrepProg (BitVec 64) :=
.seq crepBody90_771 crepBody90_55

def crepBody90_773 : CrepProg (BitVec 64) :=
.seq crepBody90_772 crepBody90_58

def crepBody90_774 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 19]]],
      Flapjack.CrepExp.const 1859394197#64])

def crepBody90_775 : CrepProg (BitVec 64) :=
.seq crepBody90_774 crepBody90_1

def crepBody90_776 : CrepProg (BitVec 64) :=
.seq crepBody90_773 crepBody90_775

def crepBody90_777 : CrepProg (BitVec 64) :=
.seq crepBody90_776 crepBody90_65

def crepBody90_778 : CrepProg (BitVec 64) :=
.seq crepBody90_777 crepBody90_68

def crepBody90_779 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
        [Flapjack.CrepExp.var 26,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 24,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26]]],
      Flapjack.CrepExp.const 1833138320#64])

def crepBody90_780 : CrepProg (BitVec 64) :=
.seq crepBody90_779 crepBody90_1

def crepBody90_781 : CrepProg (BitVec 64) :=
.seq crepBody90_778 crepBody90_780

def crepBody90_782 : CrepProg (BitVec 64) :=
.seq crepBody90_781 crepBody90_75

def crepBody90_783 : CrepProg (BitVec 64) :=
.seq crepBody90_782 crepBody90_78

def crepBody90_784 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 26,
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
      Flapjack.CrepExp.const 18446744072696402418#64])

def crepBody90_785 : CrepProg (BitVec 64) :=
.seq crepBody90_784 crepBody90_1

def crepBody90_786 : CrepProg (BitVec 64) :=
.seq crepBody90_783 crepBody90_785

def crepBody90_787 : CrepProg (BitVec 64) :=
.seq crepBody90_786 crepBody90_5

def crepBody90_788 : CrepProg (BitVec 64) :=
.seq crepBody90_787 crepBody90_8

def crepBody90_789 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 18446744072078797757#64])

def crepBody90_790 : CrepProg (BitVec 64) :=
.seq crepBody90_789 crepBody90_1

def crepBody90_791 : CrepProg (BitVec 64) :=
.seq crepBody90_788 crepBody90_790

def crepBody90_792 : CrepProg (BitVec 64) :=
.seq crepBody90_791 crepBody90_15

def crepBody90_793 : CrepProg (BitVec 64) :=
.seq crepBody90_792 crepBody90_18

def crepBody90_794 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 18446744072464474342#64])

def crepBody90_795 : CrepProg (BitVec 64) :=
.seq crepBody90_794 crepBody90_1

def crepBody90_796 : CrepProg (BitVec 64) :=
.seq crepBody90_793 crepBody90_795

def crepBody90_797 : CrepProg (BitVec 64) :=
.seq crepBody90_796 crepBody90_25

def crepBody90_798 : CrepProg (BitVec 64) :=
.seq crepBody90_797 crepBody90_28

def crepBody90_799 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 1395635772#64])

def crepBody90_800 : CrepProg (BitVec 64) :=
.seq crepBody90_799 crepBody90_1

def crepBody90_801 : CrepProg (BitVec 64) :=
.seq crepBody90_798 crepBody90_800

def crepBody90_802 : CrepProg (BitVec 64) :=
.seq crepBody90_801 crepBody90_35

def crepBody90_803 : CrepProg (BitVec 64) :=
.seq crepBody90_802 crepBody90_38

def crepBody90_804 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
      Flapjack.CrepExp.const 18446744072950858182#64])

def crepBody90_805 : CrepProg (BitVec 64) :=
.seq crepBody90_804 crepBody90_1

def crepBody90_806 : CrepProg (BitVec 64) :=
.seq crepBody90_803 crepBody90_805

def crepBody90_807 : CrepProg (BitVec 64) :=
.seq crepBody90_806 crepBody90_45

def crepBody90_808 : CrepProg (BitVec 64) :=
.seq crepBody90_807 crepBody90_48

def crepBody90_809 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 21,
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 6#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 26#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 11#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 21#64)],
          Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 25#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 26) (Flapjack.CrepExp.const 7#64)]],
      Flapjack.CrepExp.op Flapjack.BinOp.xor
        [Flapjack.CrepExp.var 20,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 26,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]]],
      Flapjack.CrepExp.const 119766691#64])

def crepBody90_810 : CrepProg (BitVec 64) :=
.seq crepBody90_809 crepBody90_1

def crepBody90_811 : CrepProg (BitVec 64) :=
.seq crepBody90_808 crepBody90_810

def crepBody90_812 : CrepProg (BitVec 64) :=
.seq crepBody90_811 crepBody90_55

def crepBody90_813 : CrepProg (BitVec 64) :=
.seq crepBody90_812 crepBody90_58

def crepBody90_814 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 19]]],
      Flapjack.CrepExp.const 18446744072175831912#64])

def crepBody90_815 : CrepProg (BitVec 64) :=
.seq crepBody90_814 crepBody90_1

def crepBody90_816 : CrepProg (BitVec 64) :=
.seq crepBody90_813 crepBody90_815

def crepBody90_817 : CrepProg (BitVec 64) :=
.seq crepBody90_816 crepBody90_65

def crepBody90_818 : CrepProg (BitVec 64) :=
.seq crepBody90_817 crepBody90_68

def crepBody90_819 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27
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
        [Flapjack.CrepExp.var 26,
          Flapjack.CrepExp.op Flapjack.BinOp.and
            [Flapjack.CrepExp.var 24,
              Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26]]],
      Flapjack.CrepExp.const 1276714358#64])

def crepBody90_820 : CrepProg (BitVec 64) :=
.seq crepBody90_819 crepBody90_1

def crepBody90_821 : CrepProg (BitVec 64) :=
.seq crepBody90_818 crepBody90_820

def crepBody90_822 : CrepProg (BitVec 64) :=
.seq crepBody90_821 crepBody90_75

def crepBody90_823 : CrepProg (BitVec 64) :=
.seq crepBody90_822 crepBody90_78

def crepBody90_824 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 19])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody90_121

def crepBody90_825 : CrepProg (BitVec 64) :=
.seq crepBody90_823 crepBody90_824

def crepBody90_826 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 0#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 24#64))

def crepBody90_827 : CrepProg (BitVec 64) :=
.seq crepBody90_825 crepBody90_826

def crepBody90_828 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 16#64))

def crepBody90_829 : CrepProg (BitVec 64) :=
.seq crepBody90_827 crepBody90_828

def crepBody90_830 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 2#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 8#64))

def crepBody90_831 : CrepProg (BitVec 64) :=
.seq crepBody90_829 crepBody90_830

def crepBody90_832 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 3#64])
  (Flapjack.CrepExp.var 3)

def crepBody90_833 : CrepProg (BitVec 64) :=
.seq crepBody90_831 crepBody90_832

def crepBody90_834 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 20])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody90_130

def crepBody90_835 : CrepProg (BitVec 64) :=
.seq crepBody90_833 crepBody90_834

def crepBody90_836 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 4#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 24#64))

def crepBody90_837 : CrepProg (BitVec 64) :=
.seq crepBody90_835 crepBody90_836

def crepBody90_838 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 5#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 16#64))

def crepBody90_839 : CrepProg (BitVec 64) :=
.seq crepBody90_837 crepBody90_838

def crepBody90_840 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 6#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 8#64))

def crepBody90_841 : CrepProg (BitVec 64) :=
.seq crepBody90_839 crepBody90_840

def crepBody90_842 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 7#64])
  (Flapjack.CrepExp.var 4)

def crepBody90_843 : CrepProg (BitVec 64) :=
.seq crepBody90_841 crepBody90_842

def crepBody90_844 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 21])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody90_139

def crepBody90_845 : CrepProg (BitVec 64) :=
.seq crepBody90_843 crepBody90_844

def crepBody90_846 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 24#64))

def crepBody90_847 : CrepProg (BitVec 64) :=
.seq crepBody90_845 crepBody90_846

def crepBody90_848 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 9#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 16#64))

def crepBody90_849 : CrepProg (BitVec 64) :=
.seq crepBody90_847 crepBody90_848

def crepBody90_850 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 10#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 8#64))

def crepBody90_851 : CrepProg (BitVec 64) :=
.seq crepBody90_849 crepBody90_850

def crepBody90_852 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 11#64])
  (Flapjack.CrepExp.var 5)

def crepBody90_853 : CrepProg (BitVec 64) :=
.seq crepBody90_851 crepBody90_852

def crepBody90_854 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 22])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody90_148

def crepBody90_855 : CrepProg (BitVec 64) :=
.seq crepBody90_853 crepBody90_854

def crepBody90_856 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 12#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 24#64))

def crepBody90_857 : CrepProg (BitVec 64) :=
.seq crepBody90_855 crepBody90_856

def crepBody90_858 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 13#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 16#64))

def crepBody90_859 : CrepProg (BitVec 64) :=
.seq crepBody90_857 crepBody90_858

def crepBody90_860 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 14#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 8#64))

def crepBody90_861 : CrepProg (BitVec 64) :=
.seq crepBody90_859 crepBody90_860

def crepBody90_862 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 15#64])
  (Flapjack.CrepExp.var 6)

def crepBody90_863 : CrepProg (BitVec 64) :=
.seq crepBody90_861 crepBody90_862

def crepBody90_864 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 23])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody90_157

def crepBody90_865 : CrepProg (BitVec 64) :=
.seq crepBody90_863 crepBody90_864

def crepBody90_866 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 24#64))

def crepBody90_867 : CrepProg (BitVec 64) :=
.seq crepBody90_865 crepBody90_866

def crepBody90_868 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 17#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 16#64))

def crepBody90_869 : CrepProg (BitVec 64) :=
.seq crepBody90_867 crepBody90_868

def crepBody90_870 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 18#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 8#64))

def crepBody90_871 : CrepProg (BitVec 64) :=
.seq crepBody90_869 crepBody90_870

def crepBody90_872 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 19#64])
  (Flapjack.CrepExp.var 7)

def crepBody90_873 : CrepProg (BitVec 64) :=
.seq crepBody90_871 crepBody90_872

def crepBody90_874 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 24])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody90_166

def crepBody90_875 : CrepProg (BitVec 64) :=
.seq crepBody90_873 crepBody90_874

def crepBody90_876 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 20#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 24#64))

def crepBody90_877 : CrepProg (BitVec 64) :=
.seq crepBody90_875 crepBody90_876

def crepBody90_878 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 21#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 16#64))

def crepBody90_879 : CrepProg (BitVec 64) :=
.seq crepBody90_877 crepBody90_878

def crepBody90_880 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 22#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 8#64))

def crepBody90_881 : CrepProg (BitVec 64) :=
.seq crepBody90_879 crepBody90_880

def crepBody90_882 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 23#64])
  (Flapjack.CrepExp.var 8)

def crepBody90_883 : CrepProg (BitVec 64) :=
.seq crepBody90_881 crepBody90_882

def crepBody90_884 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 25])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody90_175

def crepBody90_885 : CrepProg (BitVec 64) :=
.seq crepBody90_883 crepBody90_884

def crepBody90_886 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 24#64))

def crepBody90_887 : CrepProg (BitVec 64) :=
.seq crepBody90_885 crepBody90_886

def crepBody90_888 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 25#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 16#64))

def crepBody90_889 : CrepProg (BitVec 64) :=
.seq crepBody90_887 crepBody90_888

def crepBody90_890 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 26#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 8#64))

def crepBody90_891 : CrepProg (BitVec 64) :=
.seq crepBody90_889 crepBody90_890

def crepBody90_892 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 27#64])
  (Flapjack.CrepExp.var 9)

def crepBody90_893 : CrepProg (BitVec 64) :=
.seq crepBody90_891 crepBody90_892

def crepBody90_894 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 26])
    (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 32#64)) crepBody90_184

def crepBody90_895 : CrepProg (BitVec 64) :=
.seq crepBody90_893 crepBody90_894

def crepBody90_896 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 28#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 24#64))

def crepBody90_897 : CrepProg (BitVec 64) :=
.seq crepBody90_895 crepBody90_896

def crepBody90_898 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 29#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 16#64))

def crepBody90_899 : CrepProg (BitVec 64) :=
.seq crepBody90_897 crepBody90_898

def crepBody90_900 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 30#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 8#64))

def crepBody90_901 : CrepProg (BitVec 64) :=
.seq crepBody90_899 crepBody90_900

def crepBody90_902 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 31#64])
  (Flapjack.CrepExp.var 10)

def crepBody90_903 : CrepProg (BitVec 64) :=
.seq crepBody90_901 crepBody90_902

def crepBody90_904 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody90_905 : CrepProg (BitVec 64) :=
.seq crepBody90_903 crepBody90_904

def crepBody90_906 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody90_905

def crepBody90_907 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 1541459225#64) crepBody90_906

def crepBody90_908 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 528734635#64) crepBody90_907

def crepBody90_909 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 18446744072015407244#64) crepBody90_908

def crepBody90_910 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 1359893119#64) crepBody90_909

def crepBody90_911 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 18446744072188065082#64) crepBody90_910

def crepBody90_912 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 1013904242#64) crepBody90_911

def crepBody90_913 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 18446744072558718597#64) crepBody90_912

def crepBody90_914 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 1779033703#64) crepBody90_913

def crepBody90_915 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.op Flapjack.BinOp.or
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
        [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 28#64, Flapjack.CrepExp.const 3#64])]) crepBody90_914

def crepBody90_916 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.op Flapjack.BinOp.or
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
        [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 24#64, Flapjack.CrepExp.const 3#64])]) crepBody90_915

def crepBody90_917 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.or
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
        [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 20#64, Flapjack.CrepExp.const 3#64])]) crepBody90_916

def crepBody90_918 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.op Flapjack.BinOp.or
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
        [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64, Flapjack.CrepExp.const 3#64])]) crepBody90_917

def crepBody90_919 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.or
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
        [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 12#64, Flapjack.CrepExp.const 3#64])]) crepBody90_918

def crepBody90_920 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.or
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
        [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 3#64])]) crepBody90_919

def crepBody90_921 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.or
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
        [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 3#64])]) crepBody90_920

def crepBody90_922 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.or
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
        [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 3#64])]) crepBody90_921

def crepBody90_923 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 28#64]))
      (Flapjack.CrepExp.const 24#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 28#64, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 28#64, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 28#64, Flapjack.CrepExp.const 3#64])]) crepBody90_922

def crepBody90_924 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64]))
      (Flapjack.CrepExp.const 24#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64, Flapjack.CrepExp.const 3#64])]) crepBody90_923

def crepBody90_925 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 20#64]))
      (Flapjack.CrepExp.const 24#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 20#64, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 20#64, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 20#64, Flapjack.CrepExp.const 3#64])]) crepBody90_924

def crepBody90_926 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64]))
      (Flapjack.CrepExp.const 24#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64, Flapjack.CrepExp.const 3#64])]) crepBody90_925

def crepBody90_927 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 12#64]))
      (Flapjack.CrepExp.const 24#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 12#64, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 12#64, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 12#64, Flapjack.CrepExp.const 3#64])]) crepBody90_926

def crepBody90_928 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64]))
      (Flapjack.CrepExp.const 24#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 3#64])]) crepBody90_927

def crepBody90_929 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 4#64]))
      (Flapjack.CrepExp.const 24#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 3#64])]) crepBody90_928

def crepBody90_930 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64]))
      (Flapjack.CrepExp.const 24#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 1#64]))
      (Flapjack.CrepExp.const 16#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 2#64]))
      (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 3#64])]) crepBody90_929

def data90 : CrepProg (BitVec 64) := crepBody90_930
def output90 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 104#8, 97#8, 50#8, 53#8, 54#8, 95#8, 112#8, 97#8, 105#8, 114#8], [0, 1, 2], crepProgToHOL data90)
end InitECandidate.Proofs.FrontendStages.Crep
