import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify601
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body617_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "rmd_x",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk",
            Flapjack.Exp.panOp Flapjack.PanOp.mul
              [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 4#64]]),
      Flapjack.Exp.shift Flapjack.Shift.lsl
        (Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "blk",
              Flapjack.Exp.panOp Flapjack.PanOp.mul
                [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 4#64],
              Flapjack.Exp.const 1#64]))
        (Flapjack.Exp.const 8#64),
      Flapjack.Exp.shift Flapjack.Shift.lsl
        (Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "blk",
              Flapjack.Exp.panOp Flapjack.PanOp.mul
                [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 4#64],
              Flapjack.Exp.const 2#64]))
        (Flapjack.Exp.const 16#64),
      Flapjack.Exp.shift Flapjack.Shift.lsl
        (Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "blk",
              Flapjack.Exp.panOp Flapjack.PanOp.mul
                [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 4#64],
              Flapjack.Exp.const 3#64]))
        (Flapjack.Exp.const 24#64)])

def body617_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body617_2 : Prog (BitVec 64) :=
.seq body617_0 body617_1

def body617_3 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 16#64)) body617_2

def body617_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t"
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "t")
                    (Flapjack.Exp.var Flapjack.VarKind.local "sl"),
                  Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "t")
                    (Flapjack.Exp.op Flapjack.BinOp.sub
                      [Flapjack.Exp.const 32#64, Flapjack.Exp.var Flapjack.VarKind.local "sl"])],
              Flapjack.Exp.const 4294967295#64],
          Flapjack.Exp.var Flapjack.VarKind.local "e"],
      Flapjack.Exp.const 4294967295#64])

def body617_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "a" (Flapjack.Exp.var Flapjack.VarKind.local "e")

def body617_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "e" (Flapjack.Exp.var Flapjack.VarKind.local "d")

def body617_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d"
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c") (Flapjack.Exp.const 10#64),
          Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c")
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 32#64, Flapjack.Exp.const 10#64])],
      Flapjack.Exp.const 4294967295#64])

def body617_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c" (Flapjack.Exp.var Flapjack.VarKind.local "b")

def body617_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "b" (Flapjack.Exp.var Flapjack.VarKind.local "t")

def body617_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "tp"
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.op Flapjack.BinOp.and
            [Flapjack.Exp.op Flapjack.BinOp.or
                [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "tp")
                    (Flapjack.Exp.var Flapjack.VarKind.local "sr"),
                  Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "tp")
                    (Flapjack.Exp.op Flapjack.BinOp.sub
                      [Flapjack.Exp.const 32#64, Flapjack.Exp.var Flapjack.VarKind.local "sr"])],
              Flapjack.Exp.const 4294967295#64],
          Flapjack.Exp.var Flapjack.VarKind.local "ep"],
      Flapjack.Exp.const 4294967295#64])

def body617_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "ap" (Flapjack.Exp.var Flapjack.VarKind.local "ep")

def body617_12 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "ep" (Flapjack.Exp.var Flapjack.VarKind.local "dp")

def body617_13 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "dp"
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "cp")
            (Flapjack.Exp.const 10#64),
          Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "cp")
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 32#64, Flapjack.Exp.const 10#64])],
      Flapjack.Exp.const 4294967295#64])

def body617_14 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "cp" (Flapjack.Exp.var Flapjack.VarKind.local "bp")

def body617_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "bp" (Flapjack.Exp.var Flapjack.VarKind.local "tp")

def body617_16 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def body617_17 : Prog (BitVec 64) :=
.seq body617_15 body617_16

def body617_18 : Prog (BitVec 64) :=
.seq body617_14 body617_17

def body617_19 : Prog (BitVec 64) :=
.seq body617_13 body617_18

def body617_20 : Prog (BitVec 64) :=
.seq body617_12 body617_19

def body617_21 : Prog (BitVec 64) :=
.seq body617_11 body617_20

def body617_22 : Prog (BitVec 64) :=
.seq body617_10 body617_21

def body617_23 : Prog (BitVec 64) :=
.dec ("sr") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.shift Flapjack.Shift.lsr
      (Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab",
            Flapjack.Exp.panOp Flapjack.PanOp.mul
              [Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 3#64, Flapjack.Exp.const 5#64],
                    Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "j")
                      (Flapjack.Exp.const 4#64)],
                Flapjack.Exp.const 8#64]]))
      (Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 15#64],
          Flapjack.Exp.const 4#64]),
    Flapjack.Exp.const 15#64]) body617_22

def body617_24 : Prog (BitVec 64) :=
.dec ("tp") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "ap", Flapjack.Exp.var Flapjack.VarKind.local "fr",
        Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.global "rmd_x",
              Flapjack.Exp.panOp Flapjack.PanOp.mul
                [Flapjack.Exp.op Flapjack.BinOp.and
                    [Flapjack.Exp.shift Flapjack.Shift.lsr
                        (Flapjack.Exp.load Flapjack.Shape.one
                          (Flapjack.Exp.op Flapjack.BinOp.add
                            [Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab",
                              Flapjack.Exp.panOp Flapjack.PanOp.mul
                                [Flapjack.Exp.op Flapjack.BinOp.add
                                    [Flapjack.Exp.panOp Flapjack.PanOp.mul
                                        [Flapjack.Exp.const 1#64, Flapjack.Exp.const 5#64],
                                      Flapjack.Exp.shift Flapjack.Shift.lsr
                                        (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 4#64)],
                                  Flapjack.Exp.const 8#64]]))
                        (Flapjack.Exp.panOp Flapjack.PanOp.mul
                          [Flapjack.Exp.op Flapjack.BinOp.and
                              [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 15#64],
                            Flapjack.Exp.const 4#64]),
                      Flapjack.Exp.const 15#64],
                  Flapjack.Exp.const 8#64]]),
        Flapjack.Exp.var Flapjack.VarKind.local "kr"],
    Flapjack.Exp.const 4294967295#64]) body617_23

def body617_25 : Prog (BitVec 64) :=
.decCall ("kr") (Flapjack.Shape.one) ("rmd_kp") ([Flapjack.Exp.var Flapjack.VarKind.local "j"]) body617_24

def body617_26 : Prog (BitVec 64) :=
.decCall ("fr") (Flapjack.Shape.one) ("rmd_f") ([Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 79#64, Flapjack.Exp.var Flapjack.VarKind.local "j"],
  Flapjack.Exp.var Flapjack.VarKind.local "bp", Flapjack.Exp.var Flapjack.VarKind.local "cp",
  Flapjack.Exp.var Flapjack.VarKind.local "dp"]) body617_25

def body617_27 : Prog (BitVec 64) :=
.seq body617_9 body617_26

def body617_28 : Prog (BitVec 64) :=
.seq body617_8 body617_27

def body617_29 : Prog (BitVec 64) :=
.seq body617_7 body617_28

def body617_30 : Prog (BitVec 64) :=
.seq body617_6 body617_29

def body617_31 : Prog (BitVec 64) :=
.seq body617_5 body617_30

def body617_32 : Prog (BitVec 64) :=
.seq body617_4 body617_31

def body617_33 : Prog (BitVec 64) :=
.dec ("sl") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.shift Flapjack.Shift.lsr
      (Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab",
            Flapjack.Exp.panOp Flapjack.PanOp.mul
              [Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.const 5#64],
                    Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "j")
                      (Flapjack.Exp.const 4#64)],
                Flapjack.Exp.const 8#64]]))
      (Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 15#64],
          Flapjack.Exp.const 4#64]),
    Flapjack.Exp.const 15#64]) body617_32

def body617_34 : Prog (BitVec 64) :=
.dec ("t") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "fl",
        Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.global "rmd_x",
              Flapjack.Exp.panOp Flapjack.PanOp.mul
                [Flapjack.Exp.op Flapjack.BinOp.and
                    [Flapjack.Exp.shift Flapjack.Shift.lsr
                        (Flapjack.Exp.load Flapjack.Shape.one
                          (Flapjack.Exp.op Flapjack.BinOp.add
                            [Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab",
                              Flapjack.Exp.panOp Flapjack.PanOp.mul
                                [Flapjack.Exp.op Flapjack.BinOp.add
                                    [Flapjack.Exp.panOp Flapjack.PanOp.mul
                                        [Flapjack.Exp.const 0#64, Flapjack.Exp.const 5#64],
                                      Flapjack.Exp.shift Flapjack.Shift.lsr
                                        (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 4#64)],
                                  Flapjack.Exp.const 8#64]]))
                        (Flapjack.Exp.panOp Flapjack.PanOp.mul
                          [Flapjack.Exp.op Flapjack.BinOp.and
                              [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 15#64],
                            Flapjack.Exp.const 4#64]),
                      Flapjack.Exp.const 15#64],
                  Flapjack.Exp.const 8#64]]),
        Flapjack.Exp.var Flapjack.VarKind.local "kl"],
    Flapjack.Exp.const 4294967295#64]) body617_33

def body617_35 : Prog (BitVec 64) :=
.decCall ("kl") (Flapjack.Shape.one) ("rmd_k") ([Flapjack.Exp.var Flapjack.VarKind.local "j"]) body617_34

def body617_36 : Prog (BitVec 64) :=
.decCall ("fl") (Flapjack.Shape.one) ("rmd_f") ([Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.var Flapjack.VarKind.local "b",
  Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.var Flapjack.VarKind.local "d"]) body617_35

def body617_37 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 80#64)) body617_36

def body617_38 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "hp")
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "h1", Flapjack.Exp.var Flapjack.VarKind.local "c",
          Flapjack.Exp.var Flapjack.VarKind.local "dp"],
      Flapjack.Exp.const 4294967295#64])

def body617_39 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "h2", Flapjack.Exp.var Flapjack.VarKind.local "d",
          Flapjack.Exp.var Flapjack.VarKind.local "ep"],
      Flapjack.Exp.const 4294967295#64])

def body617_40 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "h3", Flapjack.Exp.var Flapjack.VarKind.local "e",
          Flapjack.Exp.var Flapjack.VarKind.local "ap"],
      Flapjack.Exp.const 4294967295#64])

def body617_41 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "h4", Flapjack.Exp.var Flapjack.VarKind.local "a",
          Flapjack.Exp.var Flapjack.VarKind.local "bp"],
      Flapjack.Exp.const 4294967295#64])

def body617_42 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "h0", Flapjack.Exp.var Flapjack.VarKind.local "b",
          Flapjack.Exp.var Flapjack.VarKind.local "cp"],
      Flapjack.Exp.const 4294967295#64])

def body617_43 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body617_44 : Prog (BitVec 64) :=
.seq body617_42 body617_43

def body617_45 : Prog (BitVec 64) :=
.seq body617_41 body617_44

def body617_46 : Prog (BitVec 64) :=
.seq body617_40 body617_45

def body617_47 : Prog (BitVec 64) :=
.seq body617_39 body617_46

def body617_48 : Prog (BitVec 64) :=
.seq body617_38 body617_47

def body617_49 : Prog (BitVec 64) :=
.dec ("h4") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 32#64])) body617_48

def body617_50 : Prog (BitVec 64) :=
.dec ("h3") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 24#64])) body617_49

def body617_51 : Prog (BitVec 64) :=
.dec ("h2") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 16#64])) body617_50

def body617_52 : Prog (BitVec 64) :=
.dec ("h1") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 8#64])) body617_51

def body617_53 : Prog (BitVec 64) :=
.dec ("h0") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "hp")) body617_52

def body617_54 : Prog (BitVec 64) :=
.seq body617_37 body617_53

def body617_55 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body617_54

def body617_56 : Prog (BitVec 64) :=
.dec ("ep") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "e") body617_55

def body617_57 : Prog (BitVec 64) :=
.dec ("dp") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "d") body617_56

def body617_58 : Prog (BitVec 64) :=
.dec ("cp") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "c") body617_57

def body617_59 : Prog (BitVec 64) :=
.dec ("bp") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "b") body617_58

def body617_60 : Prog (BitVec 64) :=
.dec ("ap") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "a") body617_59

def body617_61 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 32#64])) body617_60

def body617_62 : Prog (BitVec 64) :=
.dec ("d") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 24#64])) body617_61

def body617_63 : Prog (BitVec 64) :=
.dec ("c") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 16#64])) body617_62

def body617_64 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 8#64])) body617_63

def body617_65 : Prog (BitVec 64) :=
.dec ("a") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "hp")) body617_64

def body617_66 : Prog (BitVec 64) :=
.seq body617_3 body617_65

def body617_67 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body617_66

def body617_68 : Prog (BitVec 64) :=
.seq body617_4 body617_5

def body617_69 : Prog (BitVec 64) :=
.seq body617_68 body617_6

def body617_70 : Prog (BitVec 64) :=
.seq body617_69 body617_7

def body617_71 : Prog (BitVec 64) :=
.seq body617_70 body617_8

def body617_72 : Prog (BitVec 64) :=
.seq body617_71 body617_9

def body617_73 : Prog (BitVec 64) :=
.seq body617_10 body617_11

def body617_74 : Prog (BitVec 64) :=
.seq body617_73 body617_12

def body617_75 : Prog (BitVec 64) :=
.seq body617_74 body617_13

def body617_76 : Prog (BitVec 64) :=
.seq body617_75 body617_14

def body617_77 : Prog (BitVec 64) :=
.seq body617_76 body617_15

def body617_78 : Prog (BitVec 64) :=
.seq body617_77 body617_16

def body617_79 : Prog (BitVec 64) :=
.dec ("sr") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.shift Flapjack.Shift.lsr
      (Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab",
            Flapjack.Exp.panOp Flapjack.PanOp.mul
              [Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 3#64, Flapjack.Exp.const 5#64],
                    Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "j")
                      (Flapjack.Exp.const 4#64)],
                Flapjack.Exp.const 8#64]]))
      (Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 15#64],
          Flapjack.Exp.const 4#64]),
    Flapjack.Exp.const 15#64]) body617_78

def body617_80 : Prog (BitVec 64) :=
.dec ("tp") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "ap", Flapjack.Exp.var Flapjack.VarKind.local "fr",
        Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.global "rmd_x",
              Flapjack.Exp.panOp Flapjack.PanOp.mul
                [Flapjack.Exp.op Flapjack.BinOp.and
                    [Flapjack.Exp.shift Flapjack.Shift.lsr
                        (Flapjack.Exp.load Flapjack.Shape.one
                          (Flapjack.Exp.op Flapjack.BinOp.add
                            [Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab",
                              Flapjack.Exp.panOp Flapjack.PanOp.mul
                                [Flapjack.Exp.op Flapjack.BinOp.add
                                    [Flapjack.Exp.panOp Flapjack.PanOp.mul
                                        [Flapjack.Exp.const 1#64, Flapjack.Exp.const 5#64],
                                      Flapjack.Exp.shift Flapjack.Shift.lsr
                                        (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 4#64)],
                                  Flapjack.Exp.const 8#64]]))
                        (Flapjack.Exp.panOp Flapjack.PanOp.mul
                          [Flapjack.Exp.op Flapjack.BinOp.and
                              [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 15#64],
                            Flapjack.Exp.const 4#64]),
                      Flapjack.Exp.const 15#64],
                  Flapjack.Exp.const 8#64]]),
        Flapjack.Exp.var Flapjack.VarKind.local "kr"],
    Flapjack.Exp.const 4294967295#64]) body617_79

def body617_81 : Prog (BitVec 64) :=
.decCall ("kr") (Flapjack.Shape.one) ("rmd_kp") ([Flapjack.Exp.var Flapjack.VarKind.local "j"]) body617_80

def body617_82 : Prog (BitVec 64) :=
.decCall ("fr") (Flapjack.Shape.one) ("rmd_f") ([Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 79#64, Flapjack.Exp.var Flapjack.VarKind.local "j"],
  Flapjack.Exp.var Flapjack.VarKind.local "bp", Flapjack.Exp.var Flapjack.VarKind.local "cp",
  Flapjack.Exp.var Flapjack.VarKind.local "dp"]) body617_81

def body617_83 : Prog (BitVec 64) :=
.seq body617_72 body617_82

def body617_84 : Prog (BitVec 64) :=
.dec ("sl") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.shift Flapjack.Shift.lsr
      (Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab",
            Flapjack.Exp.panOp Flapjack.PanOp.mul
              [Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.const 5#64],
                    Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "j")
                      (Flapjack.Exp.const 4#64)],
                Flapjack.Exp.const 8#64]]))
      (Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 15#64],
          Flapjack.Exp.const 4#64]),
    Flapjack.Exp.const 15#64]) body617_83

def body617_85 : Prog (BitVec 64) :=
.dec ("t") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "fl",
        Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.global "rmd_x",
              Flapjack.Exp.panOp Flapjack.PanOp.mul
                [Flapjack.Exp.op Flapjack.BinOp.and
                    [Flapjack.Exp.shift Flapjack.Shift.lsr
                        (Flapjack.Exp.load Flapjack.Shape.one
                          (Flapjack.Exp.op Flapjack.BinOp.add
                            [Flapjack.Exp.var Flapjack.VarKind.global "rmd_tab",
                              Flapjack.Exp.panOp Flapjack.PanOp.mul
                                [Flapjack.Exp.op Flapjack.BinOp.add
                                    [Flapjack.Exp.panOp Flapjack.PanOp.mul
                                        [Flapjack.Exp.const 0#64, Flapjack.Exp.const 5#64],
                                      Flapjack.Exp.shift Flapjack.Shift.lsr
                                        (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 4#64)],
                                  Flapjack.Exp.const 8#64]]))
                        (Flapjack.Exp.panOp Flapjack.PanOp.mul
                          [Flapjack.Exp.op Flapjack.BinOp.and
                              [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 15#64],
                            Flapjack.Exp.const 4#64]),
                      Flapjack.Exp.const 15#64],
                  Flapjack.Exp.const 8#64]]),
        Flapjack.Exp.var Flapjack.VarKind.local "kl"],
    Flapjack.Exp.const 4294967295#64]) body617_84

def body617_86 : Prog (BitVec 64) :=
.decCall ("kl") (Flapjack.Shape.one) ("rmd_k") ([Flapjack.Exp.var Flapjack.VarKind.local "j"]) body617_85

def body617_87 : Prog (BitVec 64) :=
.decCall ("fl") (Flapjack.Shape.one) ("rmd_f") ([Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.var Flapjack.VarKind.local "b",
  Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.var Flapjack.VarKind.local "d"]) body617_86

def body617_88 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 80#64)) body617_87

def body617_89 : Prog (BitVec 64) :=
.seq body617_38 body617_39

def body617_90 : Prog (BitVec 64) :=
.seq body617_89 body617_40

def body617_91 : Prog (BitVec 64) :=
.seq body617_90 body617_41

def body617_92 : Prog (BitVec 64) :=
.seq body617_91 body617_42

def body617_93 : Prog (BitVec 64) :=
.seq body617_92 body617_43

def body617_94 : Prog (BitVec 64) :=
.dec ("h4") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 32#64])) body617_93

def body617_95 : Prog (BitVec 64) :=
.dec ("h3") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 24#64])) body617_94

def body617_96 : Prog (BitVec 64) :=
.dec ("h2") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 16#64])) body617_95

def body617_97 : Prog (BitVec 64) :=
.dec ("h1") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 8#64])) body617_96

def body617_98 : Prog (BitVec 64) :=
.dec ("h0") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "hp")) body617_97

def body617_99 : Prog (BitVec 64) :=
.seq body617_88 body617_98

def body617_100 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body617_99

def body617_101 : Prog (BitVec 64) :=
.dec ("ep") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "e") body617_100

def body617_102 : Prog (BitVec 64) :=
.dec ("dp") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "d") body617_101

def body617_103 : Prog (BitVec 64) :=
.dec ("cp") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "c") body617_102

def body617_104 : Prog (BitVec 64) :=
.dec ("bp") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "b") body617_103

def body617_105 : Prog (BitVec 64) :=
.dec ("ap") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "a") body617_104

def body617_106 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 32#64])) body617_105

def body617_107 : Prog (BitVec 64) :=
.dec ("d") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 24#64])) body617_106

def body617_108 : Prog (BitVec 64) :=
.dec ("c") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 16#64])) body617_107

def body617_109 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "hp", Flapjack.Exp.const 8#64])) body617_108

def body617_110 : Prog (BitVec 64) :=
.dec ("a") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "hp")) body617_109

def body617_111 : Prog (BitVec 64) :=
.seq body617_3 body617_110

def body617_112 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body617_111

def originalData617 : Decl (BitVec 64) :=
.function { name := "ripemd160_block", inline := false, exported := false, params := [("hp", Flapjack.Shape.one), ("blk", Flapjack.Shape.one)], body := body617_67, returnShape := (Flapjack.Shape.one) }
def simplifiedData617 : Decl (BitVec 64) :=
.function { name := "ripemd160_block", inline := false, exported := false, params := [("hp", Flapjack.Shape.one), ("blk", Flapjack.Shape.one)], body := body617_112, returnShape := (Flapjack.Shape.one) }
def original617 := Pancake.PanLang.declToHOL originalData617
def simplified617 := Pancake.PanLang.declToHOL simplifiedData617
end InitECandidate.Proofs.FrontendStages.Declarations
